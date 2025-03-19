Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ADC199384
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742404194; cv=none; b=AyMoU2ZhIXU9jPEB5s/i1PfwtLeYsMJl9u10qEl7nSGHgKixj6f5nZ1VZj7G08k48PbKtDFZnamnsXOXpx1+0EqwhBn+VCpSHM1mgNnTsCqcrM/VQrat6WESdvuVNd6cCL0qhm+4Mkv5l+KHql+n10nUR1OL9iHq0LWEkA25bi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742404194; c=relaxed/simple;
	bh=ODFgfFZ5GAvqCKFyj6OLrj4xnr01OoQI34H5frM9S0k=;
	h=To:Subject:From:Message-Id:Date; b=lE74WimV+mQdxSDwyhBRsGtmCXapP4OYLbHqf4ViXd478/BFPgoN0xv+FeshpijUUVzU1kgxEi+qF/HCi1qdfEOLtmYrYtIH1hc/1NmZGqqjRgGKsivIktrKupPVrqquU8qcNmITEeBadtycmmrZ9vfVSodY6F9jK10vKR6v6qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxSSEI7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxSSEI7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F71C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742404193;
	bh=ODFgfFZ5GAvqCKFyj6OLrj4xnr01OoQI34H5frM9S0k=;
	h=To:Subject:From:Date:From;
	b=LxSSEI7lYVzi/tEqhUb+FYxUqQ4bJgyidHexJJVvQQNpQumGwj/LruKsC0aKr89kM
	 ZFUAirMYMRU7i8RHpa6jFYRvVNhtQNHCjy+w5DUUhBbwBFmPrRUObJpRMZ6vo73SeY
	 M5phnbRb5NluIHlWpum22mYJ/ZYXRTjUS314cn+EQk6xPntJggCZfshrgXss9Ne3+o
	 f8lOn66iXC7qHk0H2PB4MB64lxrjv3PPVa7sogmoV0KAYAGFZTWhZoOLmUmbgVSnK0
	 orBKKzN+YBmv2eqrGNYGvO1H68mUqujKV4r2k6Gg2YtezHrZhOQ85v0x0SBrT3cwfK
	 DbQEMoPyFDxHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A783DC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174240419363.27854.18243446116750915104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e373af54660d56937a74b5fd2141f0ee00d2fb2ea7f635bea09eda7c343213
Date: Wed, 19 Mar 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742404193
