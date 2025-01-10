Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0CB14F135
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736493954; cv=none; b=FvL+ojHOeQZNBNnkMDnAoaFiCqMxO5I69pPtaNz9SH6LMn4oy2rm5PQBb0e4UYhNvmRIpS6uYYebZ8krgwXFTY1krzgOfXq4iGtHm5iF/N6WUlL4j2CrhJrU1XBofl/IGQyL7fML+j2Wu9kfU2H9RW15sNQo3h0fqGrdYdoSJNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736493954; c=relaxed/simple;
	bh=Yh/HfOHF4fdXNHkgKOneJ0wpYcYS3oXdUXjc82TLWik=;
	h=To:Subject:From:Message-Id:Date; b=cicVQPxm/LQduS2kPwKqVL9PaGj0BlOsaDprNZAaLOS+vyEMer3ApKgb0fJb61b88vct3g2qf/xold/uaA2cYxwRAg7kaU5Ic4+ZGReAyYMf9CpmtiyTSGInmxYg/nyCF0wRk03KvMuuDANbWNpUZwcMU7xKYiWUqSowaT6asdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gpf4WGjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gpf4WGjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC7FC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736493953;
	bh=Yh/HfOHF4fdXNHkgKOneJ0wpYcYS3oXdUXjc82TLWik=;
	h=To:Subject:From:Date:From;
	b=Gpf4WGjo4LrvxWoj0YM2Z9z0kVX1KLnodrh6N/Tspb2oANV20yf/4C2cBRRKkGDal
	 GMSdekHZfns4E25UoNoVTONQTDxZj4DOlnDumyTW3eEoEdQusSNMEzq9Fpv/Lxc2R+
	 4xbcoFZpIIhBGB2t4FQgNfXBDPFsekl00BkQo1NDpmK48GmqDBw5qZZ4eriuXs7u8Y
	 vZZVD8f1ZaHL8BeggNzY+TeA6YBlPXGQzIFTilP4McIWIkOlir9iJiE2+bKv+xADGP
	 Muw2VLLgcEoeMvl6ESeA4L2vk2pPqEqQ8Rufs1qtitpKvuxt0hWAjCFU1SEieCGOPV
	 mUXijcrmk93gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98532E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649395359.1182.15759228067020287880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01c0d75d46e5efaf77ef62f5d4081a50ea758202930d7d797495534741bac68
Date: Fri, 10 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736493953
