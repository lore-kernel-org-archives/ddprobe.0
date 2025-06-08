Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D2C3FC2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749359394; cv=none; b=GbU1iEKebsE9jwcCxLa8e9cOphONb3UoZFuMWSRIUEaidceODV3+78ShRb8/SO8p12X6W4CeyleZ2evK6w08NaNZUedIHwKWxMIE93IBFPZgixdsUN8uWIwXhDu9PlJMxZndLofj/LMdPkUpBLsRy4Zd2dwW7mv0HVQmFEj7jno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749359394; c=relaxed/simple;
	bh=7gR5lx36LTcI0AFG52p/ErvsfcIHGr/ZbviWplBX91k=;
	h=To:Subject:From:Message-Id:Date; b=qKr3/TUfkeT0k+sZnbeMDjaCS6ktKNvgD51xs8KYcp4VTJY42T6Qrv/XypPcn2kLuXt3RiuiD4gBs2qHPKZfX1+fFClMAVVerHjuN3b8Ecd48T7ZzNMz1gsG9Dzxr9kl2nvogRa1SDKqS41vKzJJ8mvJa7OGqeKR39zBhea98Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEK8oEKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEK8oEKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F23C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749359393;
	bh=7gR5lx36LTcI0AFG52p/ErvsfcIHGr/ZbviWplBX91k=;
	h=To:Subject:From:Date:From;
	b=ZEK8oEKLDig/51ur4POb8Z9lO6q8x0Dwu6+xFeUcttRN79KEU2ZUdzHd+0MRTcq4P
	 VtylGNxRc2FQEC3NYr0NHMxNqohdiOeJvPV0Xeg7UYzBWCaNOuUSwunNgNr74Hr/SZ
	 MwdzR5WRSOqba1MrogeEwFbobYX2FbnBQVZ9VaQz7fsaGQvy74UHY/Uhc6tAtW3INJ
	 NnkCtUaqxtwyc+LnQE8LfMsuduJWUsMbHYpC3fjDFNIKiDB3cos4CdzqGqCaMtuEXX
	 zWtfJJ8nK52wjGSG7AXUoJEKoImb0BSrFU2zs8gWhZMxKwkYpeOG8MH+10chmUY3cG
	 +pjddN5Ke1Dig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A0C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935939357.25956.18057071561797851681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c5a6c5fe89a628b2860bef295ce4d94ced5e979e0dc1d384bd2f4a68e0ec84
Date: Sun, 08 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749359393
