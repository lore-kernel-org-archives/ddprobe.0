Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C971CF96
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728209754; cv=none; b=RZjcu0s60tyb64soPu23tuKafeEpFmXbwtgo7ac5iJ4okfdNv1zGDRDjKshdH8eCVSzCKiGP2wULPgLqRnvGKuVIhYwznt4fg2QTiLuYx10oCAJt100E0XFx6oa1i009XAtbQTUr86arheugVxqAKvzsfZdMl/QQggclvqipiwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728209754; c=relaxed/simple;
	bh=rF82khttvUFakyZG3viWm6mKISe+YeGF34Wo9ITQF24=;
	h=To:Subject:From:Message-Id:Date; b=DAP2LIo1SWqVhZ99QewBAa0EjL7YOF/eETSdIY83yy++/rrI7zcfS/AHrXTXqQI8kPqrCoVdso5BNGWygjglYPykT1drz2fZSwU/8dJEpxGQmmbQmlXpNU3N6cMfJkQuyjlkIAKPqfarBnm58vipxZCAtUd5DXhEq6noWwsdouQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFo4PNIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFo4PNIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FDBC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728209753;
	bh=rF82khttvUFakyZG3viWm6mKISe+YeGF34Wo9ITQF24=;
	h=To:Subject:From:Date:From;
	b=uFo4PNIGtdleOXQXzf2UWCTRiFUikQn1daZSB9zC0pw6Un5Rq5hYxhpjjYK2l3ykY
	 U0fxBKIMP+JhOOt2LUqbX35NRL9LLkFv8hM79n6ij6PnOBO4DkBw1xSonv3p5HiZ1u
	 91UJ/nbTOujJWI3oIbiCmHOdyPxPtBDzRhEBpMvjHm0/QCgG9Sbii0g5UltwGkxfsL
	 Wbphnt7FbWs0bQOPJv4ipjpiqD1Dw1aBCEFU/JyuBAVFQT+8REjaUdXlN2ub8FBDei
	 a3sCVGTTkkYsP2c7QBpLZySEW8pdXuy1U5aUoyV7O3+q/SnMivw/MKu3evNWNyZPM5
	 /FI8dsFDRgH9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C7CCFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820975359.26335.17936530028435355182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d936a15d4597a71e9aee33061a8cdb51087f3f384b52447606e12f8760111420
Date: Sun, 06 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728209753
