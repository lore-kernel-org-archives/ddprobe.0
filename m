Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306A819C553
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772423094; cv=none; b=beZgh8yPoIslWK6Z3ZjJ+s46m1E5pcdSgGEehoSuGQkUjhUIvDak0HkCzVS88f2hUAmp7zfujALTPlqhDiZ6aBdCP+N/PIkzenTz249acL7ed9ap6aokwuZnguLzMbPWusTEaEjs4ufJ71XJxVNLwzKoDX0Jt4FX0UYfAfmR0sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772423094; c=relaxed/simple;
	bh=nbBYPU8F5tzJxgjyoFsmDrKBS1OR6lz69bhkb0EGV8s=;
	h=To:Subject:From:Message-Id:Date; b=tEG8K0jx1kpvb27h22S0Uqf+fOMAzO1DHt9NjoIRrz6wPi08YrY1IPQRtHp5XZcm/F9gMycNN9ugso2FPMPzezEnA5TDFqwaFktKhVy3TYKJobGyhEStc+RVa0snZaDGF0LebiLjg2O65sh92cr2/DU0jwl+5IubUjlwahdmvi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dqcy1R4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dqcy1R4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB15C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772423093;
	bh=nbBYPU8F5tzJxgjyoFsmDrKBS1OR6lz69bhkb0EGV8s=;
	h=To:Subject:From:Date:From;
	b=Dqcy1R4NLZVWqeXyO9E2CidL+8mCIhgHa8bLEyqaAdqwwTEeg3hQWj35QVu6kNOnq
	 pep65JKSjUij62OpqQzC2E7moJQjoam07WGD0kVRAWKJg5CF4ia/mlWhfC6Ynu7Ija
	 zH4jbUhyyyEMzd6Sx8S4EMP83hT4Ub83O0NtvmdbZAsbxeeUIJ4daXps9v/tF/iZOO
	 +YR8DjWio27NHY43aV4Uhc1Fly/JtD40merwptPnRAP1ZgaBjC4lcgqVlLz67ReMzb
	 atBWoBfyPuzZX6S6yCfrmVH04Jeq3DdX0DYhHa7NmL6vYsJmIR/kuMYIJvcOjf4RgS
	 jT0+5s4wfsLng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4303D58E47
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242309366.20956.12152300550925012483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d4487d095b7c99db76cc50d034c51ec3868ccabbee3a236f8c28c2486b52f9
Date: Mon, 02 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772423093
