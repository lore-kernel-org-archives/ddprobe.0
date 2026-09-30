Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DD74D2EF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790773835; cv=none; b=E5QizHaVKzdS++XBPMKhwZ0dvXQnfWfZNZaVV1gZ8OFnkQvvmlea+Qoq1yQDxqCoDdez+SaAt4LAnny5XNHB58UPE8G/tgaZlkB7kAd3Czg3g3oToAyF3C4oUBZW+rWz01tVooB4t5WbpxVCQknf22E71OGnfIZtHMEfbiPEbVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790773835; c=relaxed/simple;
	bh=wJ06qz8RDJw7XS5dyYKQdaVuCJ4O7qrmxdDQD6tVmoQ=;
	h=To:Subject:From:Message-Id:Date; b=fxkNBcYmhHkkVWP9DQz09dAtG5IJ35pYMwJGwFx3mhGbsekoN9/h8yB50htunZcIpWdHmXSWQ78N7G0VxcqPvV6XHkX19UOD5s9H6zdiXBibqift3241sWhwePxve/EcgjCs04Xz+OWrrWp/1G+YDVBaG5MoysNn+cVXjcyHjBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrGekT8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrGekT8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD783C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790773833;
	bh=wJ06qz8RDJw7XS5dyYKQdaVuCJ4O7qrmxdDQD6tVmoQ=;
	h=To:Subject:From:Date:From;
	b=WrGekT8AqZOwe79lyzzDgDljejyNYRFjZs2u8fqPFEY8ynpOyliB60R6izq4Pn8nX
	 5j3ubqaPoS9pYdZmiibVs7IHNoInD9gLa5rA4L/TBjWrXRMeMgyzhyU48n/cO0ywD0
	 2zW1cDvyFKSvhzV7he2Dmtrpj1KZnQfZT3yIyjWBEl9fNSiw5lMkNgUz8jZ7sgaD4H
	 7ILIPxv22K1o9P8wAc+B5yjGnYsy1vxLvauc/6JU7HyB5cUy+NvKvZKOycyFIvAdcP
	 Xlr9empYCfaTZU/53GpQbGJmL9GnFjAwuhIt+vXnF+U1oio4lR2PmhPtfDpNos+k6+
	 B4WkQSQxqKWpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D40CA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077383372.13293.1448998759707006438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1edadfd922a87cff5402c602285e60f7bf9f6098b47298a213026263a798a9c5
Date: Wed, 30 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790773833
