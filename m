Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8CD36C597
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777294654; cv=none; b=Hm5W4vP9h7wpaxId5EMlSY4ASUr9k+iNvPrIwwGbvCUffh1EYwnJZrGH9Wz8YmN081VpmmUi9tmFtoJRG1B5sgKOoAldjEviLJxKoM4nRpj5mJNH9yvM622xcFS7fBt8q0t4N0g185OmTGrY0eKtIojaDwH9IjOY/7Dsp140+Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777294654; c=relaxed/simple;
	bh=SaVQuAJPeRij1jFEOSd6Dw6gnFXToqW/Q0V5F2bdyl4=;
	h=To:Subject:From:Message-Id:Date; b=iPDmzxZHchSmpNWhR2nan+oeAr5Evf9O8CYZt5Fc6ten7goY5itRBImyS4fiR0AQ0s6gmPqQMiruZJLE+z5u5ai+G9FTmOvkzdhGTMXdVFh6YAvcfVm4aO7XD6a/ovl/FsayrE14sllRyMNhSlaI12grMvpW/JFxkYlr9904xSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYO3BxD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYO3BxD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B5DC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777294653;
	bh=SaVQuAJPeRij1jFEOSd6Dw6gnFXToqW/Q0V5F2bdyl4=;
	h=To:Subject:From:Date:From;
	b=ZYO3BxD5novLbRNNKabOKKrTSptVISddEf6+A+k4JLabKL6BQ3FxywW9RZupqEEk+
	 5ozQUfl7LQJnSlaSJOK/IA87oQYEj5KHE1yS6xazHdz2cWYoI8+i4PVse5VgMMavzh
	 dbymXEghj7u9NFcgoX2kUrohTXRS8zF7ZSnocaIaub2axGoSf2aOfg0akHSfXXwYol
	 Ty943vU2iTXJbiH37UdZbGxAU16ZktgbAJH4RJZlLfgHp1FAwU5lkUztQP1rQudvG7
	 rJoz6GYrxoEozUmgvddsw6Ppwr/5ESkWdRf/wwVp1yAqzLr/0yon5YN3eu1Gjb54gF
	 NppITRgI9sXEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABA8FF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729465368.27660.15376398556686593233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f9cc3ad2cf1cf31d1699764b36fe0f5830340501ef47e752312a65937839d59
Date: Mon, 27 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777294653
