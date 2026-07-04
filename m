Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3F16FBF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783171114; cv=none; b=qOvpLjRT6Vb4Cp55aDdpXaUwilTPaNt6+UC96+a6nnJuSDa1B+UpeGlRrW+Qy6GffdXneqalAvANpwQGu2j6wUtBhTspGGKhV6JIZgG6pkzzn6sn4OWPifvl++iVrv+6ZpKWi5aZwjzrMwsAUEB7Qa6AzOJOWPxy5stGVt1TxyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783171114; c=relaxed/simple;
	bh=NCcAARUasg39y5vbKeZsd3ou6dtPEitQZ360utUkbXM=;
	h=To:Subject:From:Message-Id:Date; b=i94FoY62WcM6gF/RTaHl5VcGN9G9oerAVM6yJGIVoJX/9TFQTNDUQ6t84WsivCWeXUhWc8qbm4N5SaUXaQWs3KK8DQ14FWUJpwYCVoH5QLuzez2NM5Gs8q1ogXkEl8HBdk7m7DvLxikrLWwEU07yDrHNfsH/5MDDPeiH042ZtGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgPsT6AX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgPsT6AX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DA5C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783171113;
	bh=NCcAARUasg39y5vbKeZsd3ou6dtPEitQZ360utUkbXM=;
	h=To:Subject:From:Date:From;
	b=QgPsT6AXy4FkRNLyTLopyyid7QFJXA80PwZLKBzhJyA4XsTczxo8FMkXuO0JpL7rW
	 FeZYYQRax1vxkc5hOtM94bzPmSL17NoouFcmr+4VFXMVAr7HKqa8kMHuezzMDyo6dj
	 WQ9rGyqLGCmYgK9EtrL2/iR3qkm1I7VJXP6xy0AgNpjlXN58G+Hty6IyhqNLC7/jit
	 CmGiBdj83k8waAYRmQvQLHo0SrOO82NLTbWm0KYai2V3hQ7J9cXIA7pOGztirK+2Te
	 BWYXogPYMvxPVTY61qBKx//VCRh47BhIVsn8KeWWMgliY6UbB1225fEEi+CW7s6Ek1
	 QvtTu9b602M0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B53C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317111368.13389.4633577795463138618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2e61b0750fd48aa11c182fcfc5b7f6960768918b1e560c9a0a0fbec9e4dd39
Date: Sat, 04 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783171113
