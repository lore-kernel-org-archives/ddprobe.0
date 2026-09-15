Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CAD9372662
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789459234; cv=none; b=AlN3lYUCI6tVUpQgKrH64Oeb0TgleHVSpoGaLmiTgNEGG5kXuVMSiwHTRg4KG/LZ4JwteUUry1q0vTa/eTmiZrq1cZR2mqrdDCl/vFBbU5xmWXA3SBY+qtCTLPs3gUqVDGfPZnIYIWJUtzT5ZwtnVJPUJhMRtzc6KCvqXGaSBAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789459234; c=relaxed/simple;
	bh=fLkaDO7z+RA8JrbZX3xP04vCvZzr9QAqziyVBnI9oHE=;
	h=To:Subject:From:Message-Id:Date; b=m/a5CxCx8gUS9OGZdvK0YFopD0qMeqG47wbRWTzQcNhtCEsPPLhhirZZtt2vbEa4TyjD5A6X9Dg2IfDSshkGiiCBrXXqnK5NgbKfJZLc7knjv7+dZuFRU2EydTumilcVyHg3QlCV/1q6PrFJ5ZSMfDtP4o73TfwX8DenhD5WmVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAypFW6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAypFW6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5ACC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789459233;
	bh=fLkaDO7z+RA8JrbZX3xP04vCvZzr9QAqziyVBnI9oHE=;
	h=To:Subject:From:Date:From;
	b=GAypFW6AvPqGyLv8E0A4ZuQvOIYpFPDUyqdVGr5vvBm878ksBPBb7KObCZYlzU69b
	 lTMbE6Az1UbspqdhbG8pB9anlWp1zfPCm6YqCxyUPChl8i13iP+XUbBds6dNMgY+V2
	 jP+Ud5/SHncIJD6PsiCbsWctWNsAcUJVBmsjE+bp0iyFMhVgABln09qPr/0CHJy715
	 VBWy7BBXXVwDGEkclkZXGXRjvMHjc9qqHBTko+juNz1/jUSdZ1mWBpbt1jMBF1yALa
	 wNkb8O2rb5ceuYil0qxADGpgeLt2Gsa/V2SM08kPJeGBHzVhTTpt82oPncGT2evfZB
	 lEGGJFaGcbqfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29D0C88E73
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945923371.9999.11031635046091953082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00feaf717e7588b58d9c3ed66089f5e5d0427c4328abd9f8c4ac2ecc1d56ed9
Date: Tue, 15 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789459233
