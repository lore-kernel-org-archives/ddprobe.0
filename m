Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF9E13541F
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720001123; cv=none; b=OJytmdYluvDWcqnpdthVJ97pcFaDYEqd5ANDuaeVFlZZw7wQfRQUcT0mS7EM3qmRAOTRRJFzrYZCM4Mtr959VyPGx3DVKqppnpW6yuZ7WHVEXxeQ7Cq0KRSFlvaaRVl8pueO+RUPOi3gOeCxyJmAWe10T7JKI5wjfKkIeOEpdBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720001123; c=relaxed/simple;
	bh=WVeIi3uDeAx0n+TDvxxlMPdSPDDVb60ZrY+okx+KSjA=;
	h=To:Subject:From:Message-Id:Date; b=EZX5921fAUjvVL+5KYlrdOl7amtcYrkz+CfBQTXGCBxnoyFY2m/5zfZnBWMGzlmbSlHkS4mmESv6shMdPMF6aJ8+THAtA/MYa9h3xPHQKJdz167EIN9ZsW1HOuQCWIjdGT6ojMYYtUQD+nTkInQ/A98RofZOYM4IN2Opo3oHewc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJ2vov30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJ2vov30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4979C4AF0A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720001122;
	bh=WVeIi3uDeAx0n+TDvxxlMPdSPDDVb60ZrY+okx+KSjA=;
	h=To:Subject:From:Date:From;
	b=eJ2vov30COct/4vhyNBc5ag0xprm6LQ23uowj3ThjfUlXzh7lshNLWExe5ypVEmJv
	 esnGLE+c0lvFImJ9QSvNT/8QdROLHhNH8fsyBF+La2STzA3eIarMgm4RHq47kPkNtk
	 eoxyNQtipJZnvr7dvsfXR96Bn5pnXCJoFMWpFI/FUDeTwZNzzd00D0nI4ZGBO+QUPQ
	 maZGdZ4BbUnwtpsyJ0PuuG8C0sSRXnl560NgdDlN9xP/vafyxga91h6RN78Ah6+sB7
	 xzSLUGfLTqgWVDQef1Qd6zlaC4+PGr6gbZyGvDXd+LMjSpjGRaxjpD57IRwsvmBjEV
	 wwhMwEZ08h8Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF015C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000112277.17762.7391385689455878383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b789ff60a99124cdda4411c58fed318cfa11c421b459102a7afd1d85e02f9d
Date: Wed, 03 Jul 2024 10:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720001122
