Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA3B22AE7F
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761512394; cv=none; b=mQv9H5Aqd+EEWh2Y9d2w6yDNAcXzhctz3IElddjALj9YJzE2rVyi1bvRYCiKLwH28tyYlxvKxFbV4X/xqk6SEhyinac3ywFs3doxWuXYfZMFfo+vR/Cn6GmrHX45DYxnYEoJWryA1BLu5rAcfFmiDXXf+31+tGKP0gEyx9EPoxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761512394; c=relaxed/simple;
	bh=XVv2lT2SRDtqMs7Bfn8pcbT4zvJIZZ7FzdMUQVRHrQc=;
	h=To:Subject:From:Message-Id:Date; b=KdaWIPXwguEtHiqenOJcDPzIj7z+8It5DG1ERqh0ALfWFvTnp8Ss5uXgUj/mGtR2aY0tgDUwx3MCqsVbKQZwbbkhe8GXJfLSUTVM7YzsSPCAfdJ3PPW9ogRxcVrTfudqp2+U3wwGZyoqvQA7ry67ztln0Jqf/CPSW0bom+a8vB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uN6B4RuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uN6B4RuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ABFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761512393;
	bh=XVv2lT2SRDtqMs7Bfn8pcbT4zvJIZZ7FzdMUQVRHrQc=;
	h=To:Subject:From:Date:From;
	b=uN6B4RuIAQ0BMacDwrKLrGzvjgrFDMQ+kfIFbyQWS7+B6oGFVy9mw72adT8oFZ4Z9
	 AQg4gNRVtabUdsRmbYLrDGXfn8eua/jGZtlf5AdkeXMRy7V34/Z4YgkFSevUFOuBT6
	 ztBpYL/8c7uiEFLiDQkfOnz/gJB61kRuy875Sc9YXNsVuvMqURnOh3JoNaauwDJeWh
	 QyxfpwTvNHVY7f/RPLE9iAcjyzZU7E/c1syMDKldRRNSHF2dWTKkHqlqI+Qi7xyolJ
	 ZHuu8OXUL7JU8NFEjolOe2bgA8L35ZV+bxSxW1C33WxQlDsOH6nDMduXp3vgr/My1p
	 WGjm+faLpv2YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D54CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151239358.21027.17291688799453993431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684c1f2587d4270ca1e4c2e089d30ec1aae58daff0c0ac588ee5ea7a0e1ff150
Date: Sun, 26 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761512393
