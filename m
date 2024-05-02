Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508D1225A2
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714633943; cv=none; b=dx2RCy4rKDMEte9B/6yOallhuIoUirqjBO5oJUyCAHsKowwL2fC6OUORgR49Sndxt/XRAANJG1FWE1/cRqc3Frnx8TWmdw0XVNu/8vxKdI9RUqal2/rSRyqHaapVGRhUxY978LfyCZ2WqCkKnkzcbymw/zUTLMK8S+BiklKFM9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714633943; c=relaxed/simple;
	bh=E6VIc17JFASchwCq2zX/vWweVEz2OQz8BPILzRoBg2o=;
	h=To:Subject:From:Message-Id:Date; b=nLED0piwz7bxivNRwDl/wwQuvF6sxtd5EJpQ6tC9IHxMb36Nl2uVmwfsas0gn8NoahX3InmfBlrppMzFCqrqyeqz7KW8FNIwEWAjsODLMjs6GeMUOK/6AIxd/dIeBMtbiJ66CxaJm3JThdEsvHP1fIbBZu21o31uYStLb4HqKyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yd7uDAvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yd7uDAvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2E1C116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714633942;
	bh=E6VIc17JFASchwCq2zX/vWweVEz2OQz8BPILzRoBg2o=;
	h=To:Subject:From:Date:From;
	b=Yd7uDAvsvehDIbrwsrd6YnNZM4nqxea8OrCeMwYQcIUkMe8XYyU7YFcdgbRqa0SP+
	 X/I4TkHQR+H8aSp6MAKKzKvHpWdF7Fd+Sl8CAW4DT7DPpcIlhrj2DEoH9SkVfZ8C35
	 y6TGH2tCEyUCOcLdj0Qn1NuZ+8WtMBFoK9KA8mNuHy+O2C8nO8wkoPXK2ba5bNPFI6
	 /UjNBWNVpkGIdedFNkR2wVGFAIsGdo0toEGYyHhacjszDMHuubcQOCMHCSMNYlVPGm
	 fT7oIKVmTBkDmVfnvjlJkpVDaR/Im7FxCG7XHHXEMMzwEIoaGEr+MwMaTjsxHhs/iV
	 X5xZDmOXLvQCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7029C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171463394278.14401.11107587602085595699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409f3518c1fdb11b6e3a019a9561bf00b862ef250ac43c074b19bf7698e999ca
Date: Thu, 02 May 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714633942
