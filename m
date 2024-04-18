Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543A96E5EC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 07:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713426563; cv=none; b=AgVHeYFrXWdfk7EV2ZkBZoteSnLMckQ1pk03ZkJhF81k6sxl4fGdvpObpOvIOjrtyoXhvwjL958z+0oiKsatBNVAYDipgwV8b5otDy3pSWoE2BDzu+EXdIenadKUqAeuxPsQDGxkst5u/iZHG4DoBY+vHhyYE3IDPZ5Hxu0TLp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713426563; c=relaxed/simple;
	bh=pfPTprmabfzyrKi2N/lIi0T5N+n6h9+PCW+cy40fS6U=;
	h=To:Subject:From:Message-Id:Date; b=W6i5BHVYIm/bJXmyx4YrVpPn8RnGWT6znUQ2X4fbICyhN+ZRv3wn82orPnFFjyCbxxK29Ir/ttXBLzDX8VP7+yH7XDb2RCIophysIXWT1t8WFJ5Ab4k3WLmJGjSwSzbXPeO3RRvdK5JwMzCq+Taqt4Q7vLCVgjOlqXMyVaJiW6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fp9fnOB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fp9fnOB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94A4C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 07:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713426562;
	bh=pfPTprmabfzyrKi2N/lIi0T5N+n6h9+PCW+cy40fS6U=;
	h=To:Subject:From:Date:From;
	b=fp9fnOB8SoOsfkcLhGQeYXyJMQ3A+Qdua8XQxmusshX/hJSdTzdyXpdxTGs4DmYfS
	 a52dm8Kc2JtfiiiOl/d9Gy3EQt8racdpRT9igQglchkdjgWBxdyCEg+MoMU4zj6c4L
	 1IWugYvmCUtT3vaDhyBl3SO1m2+tkHUnsedgpE3Xed+bpy73iX2TgHcjOe6EW0F8fV
	 6vc3XSbUHVx2Z9WiKzFBeL8E8u6GcR/aqsnO9oP88S/mfIWQ4BW7t/61QoWvZTlCmu
	 g2cjWfJJjREW3ak9uCsfXtgcu1oAzTuMMyAdKJHop5JgeapXRpJrh+V2pYPyM7LV46
	 20JO4UbM+ut2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F1AC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 07:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171342656280.13759.10768249738024581116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71d9af12436f518dfe885a1a5316873f2c2bdd3b17c1bca01ada5c9f8b8f83a
Date: Thu, 18 Apr 2024 07:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713426562
