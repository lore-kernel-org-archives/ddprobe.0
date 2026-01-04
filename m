Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBE32DF3DA
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767557634; cv=none; b=DxzEGdWzM/Djf7YIjMcAxLkPHD6RaQW7NV3YN3Xd1JDBnTJ62+7ThgzoUuJX5B4amSPbFTBPr4Rrn/t6Oa2l5flBAR6fUKCdTstqphGa3nz/2hwGF0ag6Qso915W1DIzlIZSphURuSzUtfJ3wZ3e80btlVlHAdsfyNMMFxTtd5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767557634; c=relaxed/simple;
	bh=kUcx+bAifJvnjGftJflbg+BYIcfWoSyhmW6Hpx8XvhE=;
	h=To:Subject:From:Message-Id:Date; b=lYHjYKhbbVBb/k/OPnIjH0CQcbnA4tOqxfX3Mh44unHZQGNArtmy0wcmVrWGpYo4rfg+5cNJ6dBZwj031Y0oZuw61PwqXvSq950PcYN0OH2f6wzJAkTSRpATrhIW/KgQ1XGzB1RmTDz/PHjmfuw+MFAwrytLeNRffzTtOi8sgRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+Qk4E4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+Qk4E4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767557633;
	bh=kUcx+bAifJvnjGftJflbg+BYIcfWoSyhmW6Hpx8XvhE=;
	h=To:Subject:From:Date:From;
	b=n+Qk4E4XSHHTYc7072cfYl2mryicYYfZkgt83itKECr2AZfsn9241s/J47bOTwOAZ
	 o1weNefXlyc1JY8cKfOalfnQzwlbGtTvVpvN7gkVdCCXDqV/HT60b2NhwPdkaHfYUo
	 mJht1gri98V1BWdgr3CGoUV0kmG4dwkaH7+4HTezQ77VX3eu4Gc2ZAS/Jj30yk5J+K
	 BQkEKnzIpO+bOzy1gAeXpuwOPIVmx/FjTEtn1hgl2xbI6227KLwdiZbrCccAq2SRLT
	 jVGdUSEczhhkVpaDeRtNCxeohIk3DPq33ZyGnEZc4+I8EEhTUlH9xPTSRlhYO/9UaG
	 GpWI5JwsVI4Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918B6C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755763357.19809.1394791839325827800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6727d79b9b54c240a9eec417f46addd8e6cec6182717993fd00dc8074fb714b1
Date: Sun, 04 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767557633
