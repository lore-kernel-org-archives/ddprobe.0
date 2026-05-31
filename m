Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D0C331200
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780222474; cv=none; b=Olq5T/OGiUxFb9DMRDf87tbF/f9Joe+MrNETyOHkoocbFPK3grqYRvXlgCe5nJqqDDlYIO3+3KZosejSUekLAwv6GheHBbi5VeVKGPLDwwUzXMJqX3t2TeQRFB43AqEwInFXtaK1soSRf0rDpR9TsYiuKbUUP9ZE6ruBhjqQdV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780222474; c=relaxed/simple;
	bh=k0zR087AIAvyWhTSJcgR9j2NqN4e7+cDyhgIdg4dj7s=;
	h=To:Subject:From:Message-Id:Date; b=Pxa4FOZ5Z4JhCu1b4MI8UOkM4NsV3q+HWzFEx5Ch+u2ux0A0Q/WvBUq0G4H3swciL/5PO+js1twD84xTefSRJYuFqmCOWnvjrDnCcu9FWKG+2PolJnKjWGnPMDSwSVXLbuHeERI3gQF6ZDfomtCB3bJPnKMyl/30rNhfT2+QQ2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYF0hVie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYF0hVie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56F4C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780222473;
	bh=k0zR087AIAvyWhTSJcgR9j2NqN4e7+cDyhgIdg4dj7s=;
	h=To:Subject:From:Date:From;
	b=BYF0hVie9xPDOV9NoZUSv181PFFKvrKmo9dTeUn5T/oFBij8Ve03GcOFY7D6KLsN2
	 YcOcXtVvWyzU6bQSsSXLjpcB7OMSyMDy2esTfFteuVbuCXMwpy+djjgkv2Tnl6J5vJ
	 mePmc2Yzt5l9DRmbnFjiTgGmOCdgl+h3hbOr4DHOrcLgIVstDMVTkAdVhqmu4l/LZS
	 8vHeO4n7e9P0C5HLg7dajtcIS5Yr6C+7k94xz4GbVJDqwc8Yo1ZZ726XQb9dAKbAnF
	 WkICFqivYSPlLUh8B6g08cmdygyXCrP59opTl6SgdlC+DMyMDc5JQ5xrJiSIKcwdMM
	 NEK7W8+rYiJLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA8DECD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022247368.9130.9234577102793523374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e83fa98b2d6b6aeafc0ecbfdc4031c2fea02d33c37f84804ad818527b75dca
Date: Sun, 31 May 2026 10:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780222473
