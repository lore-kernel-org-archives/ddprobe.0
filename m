Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B0B1BD9C1
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733892954; cv=none; b=rPl+FIW36aDHBcPhR0Snm7Ul9vXcADbwqvVvtR6gj64mRAokRBbiaXUoEtoK0JtJUsidWXgSnTZ1SOHbOTgl8uaoMC/0/9esTLeb847T5c9TdVKiQP2jiSK6zqxzL38I7PsrnlecGnMZy0ZoHUs1O7bTYTyHl1dlUlsLqCl1OMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733892954; c=relaxed/simple;
	bh=CVMcvXUz2wHZhdXbRtVl2MMs2hv8u288eItaZIOW9T4=;
	h=To:Subject:From:Message-Id:Date; b=CGqSPnAFQ/RLYJFiErgsFX5DzqDqw6AJz5lLl6K6GqfPJEI0gfcEl538SDJGNKCQljXuHlbA/stfwL+SVhXObhGUR69QqEPQ0a/QFd/47j3T4hpRxcQp/xOjxj4wxXYRb6xTdCrAaF3PQFZRBtunV2lq11yHSSE/VLR+pqTzNnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GY1FAhmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GY1FAhmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A929FC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733892953;
	bh=CVMcvXUz2wHZhdXbRtVl2MMs2hv8u288eItaZIOW9T4=;
	h=To:Subject:From:Date:From;
	b=GY1FAhmEHg9MFVhiLxP2QR4B4s0eGCd79/rQBTmT/K3ty1ZFhNxt4z8PkUo+2c3e5
	 CAWUmGEAkjInLEX/a9N6SV+uoTwN14ub5sF6X0WzOTTB6AxzA0uldKUAO8KIpxpyR5
	 s/3XokJHnCknEMFoigctezZO0QfrnIveLXME1YHQ+iaYHTD0Pd64iDBrpipCNs6teM
	 /xPb2+fXuj7RB6dUK6JWo5OFuwO2rALlAaQyr1vpri+ceqjSgwE8HtuF+nJZNNgptS
	 Qz0A0hMF0iTPAXbuaPCa44jul/dXKmqINtQC8pPuCwyi+QT3/H9MOxB8sxYfZMEpK5
	 r98Ufje+KYm5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A10E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173389295359.7056.7885821833043242102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80561ccdb58bbf9ad962199aad14ff92f974af45127298db788e489d7598eb4
Date: Wed, 11 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733892953
