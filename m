Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBE022A4D5
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760367594; cv=none; b=j7C7FhIovtlVx2Qfba/q8xqvyocCuR4PFsamYMMqTXrKB5+1F6sRCSxkw/G+nzLY54RaHwutH/7110Bdrj+wHKODyGO6HJGNAzBZMsxxFQEPJdTw0h/aOWoJGlBwrEjL/11G+qAO6/x6VqWdtlX2xOT80J92z57XZUqa9whVobk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760367594; c=relaxed/simple;
	bh=mkkEWN3vhJ9TdyqSvu/fXkSogwAQj5sH+o8dTa4QLXY=;
	h=To:Subject:From:Message-Id:Date; b=Wy62v/r+U1V9H21J/C8TokjdfCu5+dH2fIfIdkm3uAAwTER7ZtDRwKiuQ5HZhA8TMpJKtASUfevL0/IuZRcFLdgzYJc4KI5Sb63Lp8a19qR2557l4X76SbARfoImBJP/J/DV3xu/7gSbcI4QocqLBKRvQOGejnrKEBXcAQ3CRvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz6earR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz6earR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F42C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760367593;
	bh=mkkEWN3vhJ9TdyqSvu/fXkSogwAQj5sH+o8dTa4QLXY=;
	h=To:Subject:From:Date:From;
	b=pz6earR3SMeQRwK2AY9+f513EqqjOuLqTt8D5SAVfV29mdczcq3cxaxGLcWXVmmZR
	 k0bccq1USV7YNJ8q0HtLWC+fpTsWeQ1xAbF6nhsFA6X9h7mpYMco/OpVxIjNpV3Wvl
	 vxLrQwNC3ehN70pb9khIj24934iOACbSOECsy6FVvNjEObH1OLEJ0o8aKnVVLvvmtj
	 pRozcjqyv/PUQh+2CRWwjc7r4hXUbZtopyomjtRUrWgK+JZ9CQsZ6U8bTUOmC/fTvb
	 5wBbB9X4j8tFFio0f67LXGlDNE2XLncRvV4VcPlIQKyg1hQ48N+Q5z3fN2ZZRKz1rW
	 yzq8lzaUFoctw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92813CCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036759358.25013.10775212841436455327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2c324b70a059176e3648d00a41f6f3e0070e744a202998c6c1669fa2d52a36
Date: Mon, 13 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760367593
