Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D5421ABB7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744826994; cv=none; b=ZEuv5EMaKa0yeQEW9vAqoxyQ7GOCievS1IHBAgzhdUXZZ/wwSm2XTLCSrdxJ1K0LrpLFHSudzh5v5i2juRqR1iCFS+M3MnWVhYpn986VysBNOLltmKN3zakp3XfkKX0GxLMf1zvf0KcuIgig3BtKiFyD1k4RRLqr01avDxrPPfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744826994; c=relaxed/simple;
	bh=nlYNkK70IaWjrKQ2qEtlU34hj2eK2LDCPM3knRLN7xM=;
	h=To:Subject:From:Message-Id:Date; b=Pn1YrphJIyBdNGZqK9whDkLTolcKz45P3yR2c1VkO57uolbXTszejlEKQaymiPC9/CtRThaiHAIpNcvCXmFBDMIQ2N792iIHvr+9qs5W0cx2l6QxaZne2L5BPuHWYt1wFI0ak/QxnB2HU8sM1QV4rf7Sc60ZbDL/r3wXGoH4gos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eU8y9ZYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eU8y9ZYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49F0C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744826993;
	bh=nlYNkK70IaWjrKQ2qEtlU34hj2eK2LDCPM3knRLN7xM=;
	h=To:Subject:From:Date:From;
	b=eU8y9ZYJQ/5CFnPXedqzvosW1wySvnIpITMAfsCbxrx8HxJVQWV7Voi8+QexA04mQ
	 uz6wCsciFbGABGKoFX1RcXks8zvg7gtzENzAyZe4eL1PT0fSc4QE2wBeLhUAcVrfRZ
	 OAvr+VjzVPxre95aXlgd2juEuie663QZammD5Wuc6SLY5ij/qcq/s/0PcP8EoY8jIR
	 2XCnWEpgnYzKsjOrbQs6I1e0Krx9P4AGHy8fueTic34otso855CFJ7yIqNUKzlWO3X
	 xwjllUnln8ZXHmFYiTjQRBdAwGij0CBirkCPtd/dyMKbmFNyCuXZUxp2OC4R+pdXjm
	 kbe+w6y9ol/TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A345C369CA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482699362.6524.11262334803179171140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb1a98e341af9fbd8713106930ae25376ded4a27519f0975f73fa27f2f1fbf7
Date: Wed, 16 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744826993
