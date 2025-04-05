Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2A31A072C
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743851994; cv=none; b=FeEOJXEkGSFMtE8VFIVxt5IDj6tyIFSvX4rnpkVfP2X9YjLTDaycoRijXVAHmnGqOOEM0eEBvSR+d01ISXb0ovhowElCDEsXKs8wdvYy6ePbfw0ens78pMr/01lhQcvfePqDB+w7oVEUQ0ZwyDZHZkHVsvY9MBOQkUv10n8A+XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743851994; c=relaxed/simple;
	bh=yFiaH/EaWUEPGvUauIDZDjS3zz6XtX8hHwyJUe+XtEU=;
	h=To:Subject:From:Message-Id:Date; b=IeZXqJ3RzA7TzbKyBcmjz9gVzpMJDc1OQXxPIvoElNOn/L5rIX+0veMRVXnYX7MOOOikCRO63eMnpuFfBGHg1XXMJrT9UWSYuNIuiQKah/krKOK5AS7Bzve8FjFmoVVD/2qLRehkxwQVhWDZXETK72nNMAt6nFN0KGJYAOz7j9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rewaoLzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rewaoLzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B593FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743851993;
	bh=yFiaH/EaWUEPGvUauIDZDjS3zz6XtX8hHwyJUe+XtEU=;
	h=To:Subject:From:Date:From;
	b=rewaoLzIyODZrqlgKUmADnAkj8Pr5lTOV9yr0gkVZsKycp2g5gAURXrGtZZTW/WGw
	 zhTFTUleNcHCAItURdkzYCR19RVmu3FAC3iz5BanYeX3/nlujkl4nmBoyQV5EWSjwX
	 td/qfExa+9WROs6Uzqjiw8kfzXIqZu1GDyz4EZLTfdKG5Dm4cry7/iEE+FbGCQgQpu
	 MF7dpRBUXzivjK82jnGQvETq8jKkK/mQ34M4tGzua/5vMmGPQwnoPMPEKoGePeUbnx
	 /46odO9LjOYorB1tIJ7eIXPVvgmCuCVoglVOdgTejnRcLmC3yxCHYJw7m0ePuUgf4v
	 HY5hvibDBVD/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1193C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385199361.4157.3795782869675311563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a4a1aafe17ed3d69d436e6a2e9f47a4a49e18e7ae1c2bf6098c3a4d74cb89e
Date: Sat, 05 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743851993
