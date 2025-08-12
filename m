Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFD8268C73
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755020396; cv=none; b=qldzg3GBm6xqLMyLj3Vp1bJiSUlsHxuml2JT3s/V7DcHLEMRei8Ebsv218C9ta5hxbbEM6IzAAQzY4uqa2dKE33TLd/GOJ021Cza2O71LVaRE5JYjC0GoOEXdnGTDkQRjfkkrJudx1XdJopDvnBeAQTfazGArrk1tNQyQx5a5cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755020396; c=relaxed/simple;
	bh=LElrYGwUh8Io4y701efCnF+AcYMHlceOKSOtwuaJ49E=;
	h=To:Subject:From:Message-Id:Date; b=ITk1iPicbRdkyXHXVXEgghrhs2STrWTKMkpGM9/aI5cqT0/zuHW7qs/Vc8IFbjnlKvEQmsqO6qDW0uK+fZtepUyQjSySi83RlsmmYiOULzuFqJSLYl7a5qVZuD6SPx1o9F7CA70yzrzyk0q1wVjsGtFFBZctSzgYIry3vYAfH74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLdMxU3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLdMxU3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F23DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755020393;
	bh=LElrYGwUh8Io4y701efCnF+AcYMHlceOKSOtwuaJ49E=;
	h=To:Subject:From:Date:From;
	b=jLdMxU3UQ0yZ4eCNlNPp9Yr99ZQbt/dJkraSXw98Dqw50hdYJHfI+J5mD0YjeV/1v
	 US3iEDZg9iYKFkWuFSepZri0Rt4qDKSgtmarLIWXzk/2p/AVsvllGDq5b09Pww3T1S
	 uRWcmVCZRUxckJcCIusYj9Y9yNDK9UR4fSdmgTaBlIv+WoWCjlJy3jtJdVqDy6g8he
	 Z+FPyz6Q2Laih3idpIAzZUPymdGYS2rDidx417qujX0Wg+x2poIZYKigdwzSRrkCfV
	 Tre4hWd4kkXl6VWyukIIbmNQPWMedI0nEATMoyGa8AKtZdznyAuJ2fDLi/X5V0bhio
	 JVc+Ha1Y0XOqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0CCCA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502039357.7310.15449868542514181528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73a8c6dd3bc540ceb9c6bf90aeebc26f12dcaf89cc7432f8b07f6ba64b98752
Date: Tue, 12 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755020393
