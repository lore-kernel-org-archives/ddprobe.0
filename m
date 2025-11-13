Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304742749DC
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763004594; cv=none; b=DhEkJGrKg0rxC8SvNs5ZoT1sFDwfKpkZL/WeyRnzF2uWMHCyHjHte4/rZ2HfAOfgFYJsbHcnIapYgxn4EQXeRBQjooEENbpxFve4Jbn54OPBGPQ8BMWpse+2R8+Pfwhju/MpygBMQ7pxfBdkoBNpB/7rHsLuJuhbrz1MOU2giqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763004594; c=relaxed/simple;
	bh=OapVq0PkiOyKEb8GXJ6Jn9MfXrgvloYGLoNhIO9tZfY=;
	h=To:Subject:From:Message-Id:Date; b=mf1Tyq9OvPwKsW+bopbMwyrpNcyNRbs9j7aAefROTG+RHSPo6y/TucSckPLurMxwSIeQaclDjZLqWxeksvP0dcg4nu8CrX0/nQ/TrdCUdEMeJ59BowEyTLUuWUbe0Y1BRyXuYWm0aIIEOTaA+/M8hv71Oonx1ssjc/UGnaZ6Ww4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crFjvlo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crFjvlo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A930FC113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763004593;
	bh=OapVq0PkiOyKEb8GXJ6Jn9MfXrgvloYGLoNhIO9tZfY=;
	h=To:Subject:From:Date:From;
	b=crFjvlo3fdWe2Zexg1YB1LNzOx1asM3mjhqyabZB8uom3Bo/UYTu2ArqKWTpyno22
	 Ts0b9h5O4mc8yIo+d+pJRw5JD63/7mu62jxCt43bcKlpPlbw9fvxMhggW8viYZ/8W1
	 8jhoNpjwQfUErSnqqN/E0BuKIn4tHsQThZpcVY3UmWgyKX3oF0Il4tRGZsv4NeboHJ
	 JvjtPFLVLL09OvOg2OGIluvi/9zOJ+aLBsb9pMqrY7wNhZPQsBgzMwlGYDlfY6P5fa
	 A769vz22lttBPZwzaE2sEmYa7c23Sr6dtn/HEML5Ze6qeBm6eIktxwDdVixYpMq6NC
	 kFbuxw0zYlOag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84DCCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300459357.7493.18349843387621861414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74bf60a465c651572f12ee9d2098a2b2ba9b21910d61caa6ce6258ee1af4f2a3
Date: Thu, 13 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763004593
