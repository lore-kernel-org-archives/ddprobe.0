Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066D638FA3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751633394; cv=none; b=gfMPh5TDWKtHDhthfghfa5izv7AXw0ThX/bLDuzBw92RN79qUjO4nDVaHYxgDWuoK5e7ODsi/Px46t6AnvX68QeIloyY8iQWsQ0IBw/aa4luItyBKNKd6lg+zwxU96GY5K71c7wC/g4KNwPI8VZ4Y0FKd6ylg1C6LXEu/52semQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751633394; c=relaxed/simple;
	bh=6Fleu+shjUWKqyKdBrbqfVsjINsiW14EbZphq9EFiRE=;
	h=To:Subject:From:Message-Id:Date; b=JclmTDCt6NpzlEV3Hwz7h3Vczpt6vNMdwEQrAwIrdX8oXKaDHwTxxXqegOOewlCruMepJgp+TxLF33c9c6ODrQUCXwC/fEtuwngM/iiqe8Z+42pebZ6eJQbm0IDk/18opabrM+faHkTFC1QvRxJR4WvIRj6ILm17CMb0ktlp+Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP200X1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP200X1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D25BC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751633393;
	bh=6Fleu+shjUWKqyKdBrbqfVsjINsiW14EbZphq9EFiRE=;
	h=To:Subject:From:Date:From;
	b=CP200X1OJl/QE0z963azlFcIVYbxMj4JssQCprq0K8QQ/5+lsDVHfUDoVdSjzOB+a
	 MOTf9oXR9er7sySzOXyjpOe/Cq5GSKIHq5wife9UalTAnSoC4vDwDKKXdvu5oC+qFi
	 fF9hOqnARe5Fz2l3IijMvyDsbV7HJw6zVr8wj8Zoh/xUOhpDU9q+w681UubDAtZl4u
	 i2l3zw+XRUzHNq8l4clxZeiGIZyKE1LrGBuY73gGTX8cNReJPyKeCng+3Ek3Lue/HN
	 gqZdlp/ll9Jz6xyEN0G9Mpi1exIz7velDCnt3sKwmviWTOmEu7NonkCjAMbT6iTulH
	 090vkR8ZN4+yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E303C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163339357.8954.318919364754709392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d3352a11467d03b8c373fd8d0a4eb4b5769c7c07b5c0e0e623f5002a96279c
Date: Fri, 04 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751633393
