Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B7B1B4244
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749422394; cv=none; b=YC1TfPw1vTjOU5LVrswyKIlXBuJhsFZnUUsCAXCi3XvcBOVwfj+SO2StA4h51lseF2X4wqmc5bySXILPa/omwxsD+akhZ8uBqa4jPAZxrYcGZION4/zI7nB43hhiKNaHEprKI+sJKAp6yFF1j19j3iJGQkyiP0x5vWvkSVWcnEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749422394; c=relaxed/simple;
	bh=5tTRtugyLkXuVXZ6YVF0LUZRuN7NFNcVdE+21vprHOg=;
	h=To:Subject:From:Message-Id:Date; b=mDAK8eaUdjq8nhGcaxwy5MKmjwgoszcZIH/fsr+8mw2+jkyeE7CUxiVUI1Y4u8hwRtQ8ZIXt0yAwrzS4xMZ1ELlrWlyWzNXu4p0ILwAV1E6Uzd9A5aAAyyrfIK/4ITqQEeMp3D5reShXhOejjIsUqUeAjoed3SdX7j8rDPT27YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiVSSJvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiVSSJvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A282BC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749422393;
	bh=5tTRtugyLkXuVXZ6YVF0LUZRuN7NFNcVdE+21vprHOg=;
	h=To:Subject:From:Date:From;
	b=tiVSSJvOnaJ1fdLEUzKQGyV3wKOqYUu+y8SFiCOgl6HuqfR558Lpy64xQ6jBSSt/J
	 t8ik6QqW+uKlyJCWLghMWjwag8AvoUVde8Awqkd4stGlkY7qO4d9bmNKQazWVU/9hz
	 oa4AEe8ZvGck9BxLEQgUr7TneoiUBdXXlQBWAwGuorxb9h5/6PavqIckTZJUnnaVhA
	 AfYYBiOzLLrDE0HU2+NhM4QW9RvkdhrJZPfLESOiWbeUv31e8Q28WtM6ggJBnodgft
	 NHTBJ3cyzv3QHsDMDNjQEbXRYkGkWG11dLvNURHX/qapFGf+vi5sDf0oqsUbWBPYx1
	 NXXr8d0j5CssQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62FC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942239357.11261.18226210649824481522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c46e68edd13e79639f7e2258a30b6c82a0d6d59efe283763ba5048dae73017
Date: Sun, 08 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749422393
