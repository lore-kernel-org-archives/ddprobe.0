Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207091EA7DB
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769787234; cv=none; b=F3+f3p9cYvBha7zN0mdmGhDA58OS6it/8LeMrI6LIdW5fDEjOO6Rq7belUs1O38PlaKyQllyUis95BjE1gauieVtOvPT+P87H5yAoEoLx9tTEkURbpa1yEAp3SNAWwWD/LyhhbS3aY/1N/ohuWf6xhTZdpDIsJ0CCr/QSHi6QTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769787234; c=relaxed/simple;
	bh=jb9fhOtppmHAXp9jegfsqsiaItXqjn5EH1MB8GNI05E=;
	h=To:Subject:From:Message-Id:Date; b=Ng/+7D57ITyl2ZKWZFOVRDhgqK5k7MlyHIxmx+E9+fVlnFR+iANCotnAgpxjRJHVbslhwgkxXIZNisLip02YkDKUz/T392Aq3pRA9UyucjKvMtL1mldlV3rwUUzqJ2hMrlYRoExvSvUwnzyssmUcfIocSr9hl44FabsI/T5bQV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AojnVOz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AojnVOz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76ADC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769787233;
	bh=jb9fhOtppmHAXp9jegfsqsiaItXqjn5EH1MB8GNI05E=;
	h=To:Subject:From:Date:From;
	b=AojnVOz259czWw1PR33Rjsw/nbS1MrFrjGg1nnB1yJXjYPbCZj3+m5yauDbmehP5j
	 5fnm0h3hXlObVBqimGC6EbLsBpyN1X1iiuYcAiSJIEGw8/D13IRwfX6oOn8Ov95W4m
	 SDLJymR6BBbEkUagzM8rn0l6hyZuMm6zgMrZC88al9+OyJbiBO4eqWQPiVP7AGw995
	 j4QKgv2JQemUEh8p6K0YrffdDJ5mBVrJ4krsQ6hR3HQHbI/VHDAkF7oNMrfXtST9n1
	 8RWTATr7Ox1afwFkOrNtMkD69jzt/cB2lHnkUiQq43KSgOSYpHpDTqbbA5xSIxlo7H
	 tLNDdxJ4TGiBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C59E6BF1F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978723359.13288.15578285085282331524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b2faf423b78acf76257dc54a9fb5765d428ba80bbc5373eb3f0d34947366bd9
Date: Fri, 30 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769787233
