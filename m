Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CA124339B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739082354; cv=none; b=Gi8LKls0+lrroAwCdAHLs0x9inV/I6Aw2m95H4aTKVhbDmsaUL3+Ts5k56NX7Ke2vwLWravWXzpMlByMx1RwVneECF0nx5Pj/2QFe5GYUEglEBTn9wynCy8sG0d2dE+9O7Ut6njAsPLFGI/6/wm7U+LAY2mnxCG9pe/QvjtSFrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739082354; c=relaxed/simple;
	bh=XZKbrBznmjPXsejzlyNycy5KF/RqOaRSxgHaBPIho5A=;
	h=To:Subject:From:Message-Id:Date; b=f0BHKzrzW31+P9d1OYUMgvYcQ1I/h4tW0oz3rYQOXrVKLUn2epJrlhURgphuo8DSV6Lhe8RdIoZ4Y0bZNVtbmqbOtjha0mZztY2OqS9HAuiBeNK9IX2ARpN35cbPTbp4cApxODEoF7x4giCLOKTte/Wxb/c4P+IdJlCFKi2qwlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2/a0BGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2/a0BGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB75FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739082353;
	bh=XZKbrBznmjPXsejzlyNycy5KF/RqOaRSxgHaBPIho5A=;
	h=To:Subject:From:Date:From;
	b=K2/a0BGuK5QMyUQU87MKxuwwNcm7/vVRpfQnXAppRKM9m5uFpvrqEZipVuoAAN/9i
	 V8jqeE3F3O0wR0VZCC9lX+w7/+ELSm2k1RTsA0l6XGwwPpCedrJKi6beDr2YYJq5D8
	 4+hO+5Rqb3fO8nlZnoFXRqbfQwigJXyyvZT+Zop1IW7f/5wl6Vk8wGrtJQ9j0adxxe
	 wysimqffUt+P46AYxrEzU0eYrh9HyE8CPf/t2XFXGDNESDiFEiZ3mPaGoJn/EsoKzp
	 SuLhskmSzAEsIhLMcy6hJ6HPp3vS/HAhgyt0JZeTkhcdq5tAiBMF4rDhzEnICTzWEj
	 eumMxM0Dw/rcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD382C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173908235367.3309.12367828974871653707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b677fa0f0cb3185f8c69d084275fa20fcfd96da88864aeffb117d42cc14e4b
Date: Sun, 09 Feb 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739082353
