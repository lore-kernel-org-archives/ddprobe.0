Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C65A71DF73A
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757173793; cv=none; b=Nhd61FwrsM9IK7EJbGvXdlIcuGPab3XjUITDxlV6tQ/kuvwTNFG7Aiz//C305T+z2hWCzARe5vUmX/LyJ5Dbs8XTsXF1pQsiKaN5AuLdIQmFGAa56ATmPj6o7VTs3w0Cm3P8R6kbybaDOuXrmJmwLm5p9yFmetzVfSZ+kc9eVQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757173793; c=relaxed/simple;
	bh=VGBmEnn5knUSCmZ1Vxg4CjOsmqjlllXszwwLSwATzQE=;
	h=To:Subject:From:Message-Id:Date; b=o/0/2m9A4NO2i4uR2S5sT4IYg6n8DWPrp34NqLhNFCE5Rl0jzgbYjtHAQGs3CrcXfEsHIyecyaRHqYEpfp6G6QSurcmJU6HffcU+i9wrPsXTwOh+ctdPPH5KNGVOuPYnLtRmdbnCjVGqkNzEFlMCgUu5zkXBZ/I3aYUdVChR+qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcyzCCbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcyzCCbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC79C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757173793;
	bh=VGBmEnn5knUSCmZ1Vxg4CjOsmqjlllXszwwLSwATzQE=;
	h=To:Subject:From:Date:From;
	b=HcyzCCbRL1QH4toxLt6Bh/DJ5vDapC0RnkJnAXdtNQ1+ktnuTtmkyqhJ+RCSHUbON
	 kGJ9nZ3UrOVafjOI44b3WDcqOTers7ueFlL4pV7EtwzIQFHmMjNHtUfC2MkGnnnSHP
	 0hw4NNkgWVGmcJZkmic0KdWkUCM1iGGyvs39Jyyh0CMQMV0Ec4JPaGEbMLfFQEYkbX
	 SZHa0/RgX+KcRJuQEpvbhpRop6e12ud4+qeTk5bQY2q12O+H8QfBz9S0jAKlroo/cL
	 Ug9DLr7rsqrNaxesSU9yfrTyMvFkeJ1DemZdLjdnVAfBApR27eF1bX72gftyvUdb45
	 Rg0qvW+9nKdQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE9CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717379357.29152.16534537632740571795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b6f3329d1914d437dc456a3b953757675b8e1e3e970e1179e4254f9d51c005
Date: Sat, 06 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757173793
