Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C1F2C18D
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711105697; cv=none; b=I5iskvloh9u9G6kZRG6B561H/Y4uNshqoocMnVKK4RWH38uG1M2LZ7yJH4zkMSjUHaqJOCiAGi09M+tO4XcksNMl9vy4Pkc9fb5/aok6YBJJYsnrhKgT5vz6JNvjkOw6EnFFp6Ikr+AAoaCES/R3m11bGUG3LPZd71k+5INjLzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711105697; c=relaxed/simple;
	bh=spLxTHsZSCmvVhrZhlpsv9TjhrAhWd3XRTt0OtAHks4=;
	h=To:Subject:From:Message-Id:Date; b=UmvGmG5bgwsdEZlodCRRvka5fC/UOJ5ttmIvwo8gC1q9pEDiFLe3wQ2KM5hWGOBeSxGviYoylqgdfcvbWFyBxoIl0F88x1xSTyExLcQ8P7LcuTJodIH5J+tLwXjIcrTc2qCwD5dLgSUP6vt4u56bNRBRAw1jeBKFuhUOExGGfyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkS9ZUGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkS9ZUGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD35C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711105696;
	bh=spLxTHsZSCmvVhrZhlpsv9TjhrAhWd3XRTt0OtAHks4=;
	h=To:Subject:From:Date:From;
	b=tkS9ZUGlzkv1Rx60kwG46Plt5st1iiL3ZzSyaD6YfJcy2+JLW1MIMBhTl0rP0lJ7l
	 u06sYUym84KA2+WDPOBRU9sdF5sT0l0BJzOxyFdczL5WnatB6wkZdMhVL9Uc3MUw2k
	 ZKSWg9HoQjT9Vc4o2RBZpqCx061/cG3pwWF7L4d0SStai1QJR59jx5nEUCwl0HNPZJ
	 8340VE90qXU1RRQ/LKSKk+kPXflcb4EaPToymLImHBxuIliWttC7V2sb/j+3rAkYgn
	 bIR6u4jL9ul6ep0yM64B+uULxTQ01AMrpjCmh/3aRTyCCuK+C3wHfLQI31CBdKJWV4
	 YC7RjNZ1XTfXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B3CC54E71
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171110569640.8130.7967824676883205932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fd9c69325707b35b694554e68d131b23dacb5871705d8f979b0668c2dbd207b
Date: Fri, 22 Mar 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711105696
