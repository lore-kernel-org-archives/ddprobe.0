Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388FA1DED54
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744178394; cv=none; b=HBNdJq4emmSoacC7Wzr+RUDxcylaa7JYFR1K8m5ZyZIhU2Eq8pAsVrljXuH5j+dfQ+z17J62lMbv3+7UvInIquPyeVgbiFZIZNf6V6x2fHDG9lRzbaGL6YZjuWTFr8gaa9xl4EDeVGH+BoTvpbQ4PiAiv3mVIOlnEnCrPhgM8bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744178394; c=relaxed/simple;
	bh=3T3P4DBDKfbPQq8Gjq46pdCI2JC2wMk0PNI74a+CVVU=;
	h=To:Subject:From:Message-Id:Date; b=Pv6lX8ppqh2ptAPC4OACE/UpC2RlpTsdE7Nxwy0EHsqlXPKWRBtrSVb5BigLGadUAIyzx/u6/APES9huNbhmGYyXxbb26cHZk5KN1KOcR5H6KGEKVD6Ob8S919dQSOxqmPnMBiv9sV/OxQF14Pth/lYfsPVRdrbcx/0qV51qXcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASjV37o6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASjV37o6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BC8C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744178393;
	bh=3T3P4DBDKfbPQq8Gjq46pdCI2JC2wMk0PNI74a+CVVU=;
	h=To:Subject:From:Date:From;
	b=ASjV37o6314DHnow9QgQsc6clJaDaj++WvLp04YBZPUS2/yyt8mjcGvsB50Kg5reu
	 l20ZTryPKXTR09agQjHbpTUFQlMgj4pz882EdfZBoNQZAaP9HEoUoZADWiZtRHGdn3
	 AORFBdmUtXH3rie3eGRbgBRpYzZPta55aTK3ml2oEixW+Trd7DIvCejUJm9vOxRpI1
	 KRcpNUMqNOTv5tOrns9FguNR5PJhqei2lTgTIqoQaPZB2ynZroPahLwv2eika5L3hn
	 jfhktZkiF74eOmy/Bz1qynHaulRiVlArP8j+k57VVJ7UYNnm8+ELX9+hw9kVN4uO30
	 0Q0KarUL85C0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E1C369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174417839357.13070.3394425443774702790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62f571c1b41da3ec675cf83fe43576e4e8aff3ed8fd7ce87c0f4cbb55f39bf7
Date: Wed, 09 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744178393
