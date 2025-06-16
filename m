Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D476158520
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750054794; cv=none; b=EZWeQPO6HR6N4W/2hqAQdHvc5MmSqhPnuydw7FPgCs5ejDaVZIZ+oJvRY1ruA5zTUDwiWq8D2l3FSAz7IaxkjNlB2PpiKfI7ivzc2nV8W1a7PGHSbLAKjEj5tJUW9zsDG/XR3TYzOtWafZHUXqk709Nx+l18NSxNAGHRnVYvrVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750054794; c=relaxed/simple;
	bh=LyBpA6MZlwLiy/4WNuLDEOGtB5EHPCtjsUhRBR+cwms=;
	h=To:Subject:From:Message-Id:Date; b=CpDU83HkNm6bhkNhuNxfEitfC+BWBaeFk6Kniwn8nL/k5z6bkoMCc/QtbS/P8z7fcQ2ctcocRKTCuYFuVPjR5fScX+QTg0yNrETOoPxyOfTJidj8n5x/EEafFp3x0aFjbIEEWNT+EXiusJlLN6HC6tl+5kCZQFCCjU4xBc4QjFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye+iIR2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye+iIR2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EA7C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750054793;
	bh=LyBpA6MZlwLiy/4WNuLDEOGtB5EHPCtjsUhRBR+cwms=;
	h=To:Subject:From:Date:From;
	b=Ye+iIR2vDCUwkgrjI49QK28Oll6E9ZRMzaB478xsHcgnAGBsat2/b36kwrJGMgi3H
	 3WGs74HIhlxLW9i2Zo4PD2JKbs/0Zr+QjI+/sc8PfZyFGzwEn1peaFBKhMP+mVUfMh
	 63k/DgKCUPFcWmt2F20bPUB1kT89HvMlqj1nbsi3IJZD5KdxlYxa/J3h4K4fuNcSQ4
	 LZI0NoHgqSF5zyYDtRoaLNM2t9i5gdBOl1pRhubEwlC+P7Pef55TURp6UTMTsj99ZS
	 mKBYhUqr9BYNBsl69EHeXPkz5ILf0m7kfwpOf7LIiLEZqasHfNue8H3GmGYpkjviA4
	 iGpsFxUKkpz2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9137FC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005479358.2770.15059878881562126565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2769551e34f82d015819ad51fff1e4ac8102542c63087a75b0163728915def
Date: Mon, 16 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750054793
