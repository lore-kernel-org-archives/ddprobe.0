Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C152435C689
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789813834; cv=none; b=OjLP5n1E2a9grTH3vKDNzQ75CdRDif/GpzZhnFw80YJCBeXwUnipCxswRej+YP+99YdEshh7EFNYETFRrqVjUaIeCso+0YY7sTBoBPCcv618LDvItedxUfgNINsxc0G4RwuxTPUgdASsTtGY9272vWKd/ygwlEe5Cy0yTUQBPQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789813834; c=relaxed/simple;
	bh=+4535OTRyrpgPacH2Jaf8uXsiu6jDKb/DomR2aCkiRs=;
	h=To:Subject:From:Message-Id:Date; b=T9SUs8fNbt0tGUaldeu4P6GdFnm4ckQEHoQZXr1yUqt+aROTwu0VF20coUyln1tVVYmraU8XRpAxwPjBRDZVejbCFiYViI2LeEp36tq5u71zii6ZEPeCoDQwXiglSEtYf3nXlWKKIz5vNFWRz0dntQDG1Ewyo30w3BOgdBUXUAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eom1J5Ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eom1J5Ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD334C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789813833;
	bh=+4535OTRyrpgPacH2Jaf8uXsiu6jDKb/DomR2aCkiRs=;
	h=To:Subject:From:Date:From;
	b=Eom1J5Ws35VYALsCyJVI2RtQZxRr9t78dlAESefIdSp+9H7eS3Eere/1ScgbZfLOT
	 Sf9mrGYYZwqb7VkHf7VEXrrVY+haELEU1T2Sp+s7tSGdyLnd98TqmkDnwoUxlu9wlK
	 KooGPPclWuo4aJaXwUpa8LY9EY+eFp0Hyx1js/ah5f3Evn/CCWD5x9ho9L4SiGuA4+
	 X1R2OP/gFoxfPGCf4eLKtAuvU4AxQvEKbf2fsf66jjCtL5Grsq4qfvOmKvO8ZgHI0W
	 LBak7R2Z+FY84o852XxJXoUSNGrOxbbg8YTiaf3pqs6tkUwD94WcFFMYkB9A/QcmEG
	 SDAXBFmKAxjig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE02C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981383369.5261.10995035692859268699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7198209d2aca65210243207b71b086e6b6b50b7af279643aa63f0c732a5aaf
Date: Sat, 19 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789813833
