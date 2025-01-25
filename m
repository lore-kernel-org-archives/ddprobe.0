Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357234A1D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737791154; cv=none; b=CA1jsN+brv0E4swPUinXRGjZ//iKU2N3NlsrVwtYNvvqMp7JvRg9lsvvA28E4RdvBH4ljtOn33HGGGCNQ94T5c28zDxnQJKokwDUU18B9vPOokJhppuxMuUuozsLDwQ9l9ZxK9rw+C6Y7WgDlC4biPGTRuYO4bvJKAagUZhRPzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737791154; c=relaxed/simple;
	bh=N2bIiNEZ4Knj8jOLEac0jno8sSQrU+BP/3+pVspJNh0=;
	h=To:Subject:From:Message-Id:Date; b=ceCUIe1UlyRJnGEoXt0Zzxv+px7S3nHJVbhJuVQzQtO5FBhqfyud4TMt4PX/PMQErmlIcMDf0RDK9NvB6a2lT/PADGTEhvEgnMDS0iLqJmoExrVRRYKbDdX1FDOD5UCjbaq1830F+m+yUOclAS60R+vyn0PewQRRRt5KLSvjDkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7zANhyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7zANhyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1838C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737791153;
	bh=N2bIiNEZ4Knj8jOLEac0jno8sSQrU+BP/3+pVspJNh0=;
	h=To:Subject:From:Date:From;
	b=D7zANhykSwUAt9qyWhjVUI+busrkAEMWIRw2n55MHR5xL65lYSvWR5VEXrhoDyj95
	 Qsh1L2OqbHd2skXmfvyo/puZgJJ52BB3BvIXABcSRb94DUTVjdJMSt6qkpKzMIRXgu
	 Qqh/oq4HIunF/vdrDOrQussTpz+MlTtvOpkPPM2YJc7sJTaMvkCVvmTxTKCFS0TM/M
	 ZmNrJ54j/R8UOpNNvdw4Yn+2p1kSPbrdWesY08UY5BPOcWkoaNyQXnEz8+MMTPaVI4
	 2ViT56Bcdad2BMcVlJPcn+28elqWm6xoLfWhPvyYuYNJQuQuHSyRKEQ2jQBfzG7jLh
	 Me5iCxd6TM+fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE09C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779115357.10446.16657358507126217392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62e6fe6445254d4e8023a108a465cf75762a1e8122c05da15c6e1f04c40c47f
Date: Sat, 25 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737791153
