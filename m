Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C85B237180
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755348594; cv=none; b=Pt4Qu0ZBKVMI94Oqq70O+EDNmCPySEOdtCFCA64XpC3JsricXSaETARCAowp5WXCW9iw1a5uaDwfYEbqAomOlbF/xKWT93R9t2majV4NgbUAzzs/UI5eu/WFkXQYAfRQH12zJR9XPQGu1erX54a27fbbQssHMZhEj0Pk7WhtI3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755348594; c=relaxed/simple;
	bh=GGaFkOWPIArANRpcdcSAd/xRWvRzDufvCqbcgwaOYRo=;
	h=To:Subject:From:Message-Id:Date; b=buFNHhKVUea1do1FSzrsris6VvyUnlZfAd49AHm4XQq7WhU6IDOyMTapX291XP/A+2CF0uRl0yAfjHM/0sb23DxXMgP6yx3gl2sdmH4j2JlR9JtKN/HVncH2E7eLlUdBn7OzBWHAhNXjfpbiy5SrdXOa1PLsgQOVftgbb6nydRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PG2xqxvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PG2xqxvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0932C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755348593;
	bh=GGaFkOWPIArANRpcdcSAd/xRWvRzDufvCqbcgwaOYRo=;
	h=To:Subject:From:Date:From;
	b=PG2xqxvuZPSIAGTSCOjI+wLT6o1UjVxMGi6tQesJJRxSB25NHqs9BOXWPh1XQAwyi
	 GpVrfgD3J2CVJoBqZpVBMxNjSJJasL7lt/dX49tc95+1zESm7lyrTty//lHIdVtg+Q
	 cHVFU6taw8GfEMBakargrzXkHo3L8FcDDQwqv9p/+2aY2wbNDNKYbp93P85YrA5+iE
	 4AP2rE7dt2EDh7tT+he2KrSAV8VlhzuMGsWIRKg87dhj8mU1FK9G6cRNvYdYraArr7
	 E0yDn8d/6Ll71j73Li9/cLPzRtKf7m8GGkQJ5Liq8zMSNY82SgS+LOTIzQ02boYOFw
	 h5VAVOZYhephw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF67CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534859358.16680.6518348548710113838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397803a9d7c61fac601da41275a8f551a8b687a344b097574310b166f8b8e052
Date: Sat, 16 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755348593
