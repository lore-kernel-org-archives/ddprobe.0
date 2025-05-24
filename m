Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A677E9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748086194; cv=none; b=CWy6HlAmfMCi7nW5BwsUJlEiHMg2aImOID+IWUCFbEMwgGouWXBg90siQRRmekNZg0bd4ELbytofxwDGB7yGUcj4wu8G3LzP8jhxnURb7lK4J/9Ge9t8fJZJ5VBOOxB2sCyfLQAGZYhCvSEtCQUa9oMBJbAWiJSMczFi7cWZSJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748086194; c=relaxed/simple;
	bh=0BVIR1XCZ/kZv4lcP8Y+1A7DBy2H+cCZ+WCFV6AEhaA=;
	h=To:Subject:From:Message-Id:Date; b=PsEpLyb3lylvp9X8TuQhfGEQdcD5IBHTK0J9k6RwfnmBvRxFNXbdOokvcDlVdVHjAOfqIY9N5eTAd13jGbk9E+C3uB4H0RxmVkv4lO+LJ18JxZuLXP6t7mlyb7sbbULJyDC/jWzKNU45gswuRJLnX/JIHAfq4RA7xPSb/Hpk91Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qsvae4Pl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qsvae4Pl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13DCC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748086193;
	bh=0BVIR1XCZ/kZv4lcP8Y+1A7DBy2H+cCZ+WCFV6AEhaA=;
	h=To:Subject:From:Date:From;
	b=Qsvae4PlmK2wx7vlrnSSeQ5w39PWXCjgkk5roNkxCCfLS5dsgnIRh6jEMFhm+LR1a
	 t262jrI6mUAe8Ddxly8AWgBFg9BDWFZEko8v7kzsJXp4oOZaw/KkTZtpLECjU40mG5
	 nM6FqQ4B5vH3fPNVtLP9lGtfLKX4HuPMcvH071d7hnvGbT/kS5M1/Fl70291kJxlRG
	 PW7hynhJZAXFRDB3Uumm9Hnge3qAuzoA0J3F9gbdGp9AShcrJKAAG6Xz0VIwGM1Lw/
	 oXXU/r74YuzSNZgm72vVqiIP2V4JDFuhr10qdtITVJ5X4fYZNVnDuaHmnw2Kes9L0H
	 JNJriiji2kx8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB8AC54EDA
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808619357.25548.6727527139480374438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe6e7c000a06465491c7d1d2dc969227f20738343ab8391b3768ef695daf371
Date: Sat, 24 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748086193
