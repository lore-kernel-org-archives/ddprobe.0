Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253B917ADE2
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727173554; cv=none; b=lU9sp6y+I51a1Y08Rp3kg2iDmWdM5s8YxWkEcpKNahbjUydu6tNGmzp9dnRZghSoDl43tF/maVGtsXUjf5SwIhrnuFNUj4VYsge0rTY03cJ/RjD4Cb04A0JG2iu2ErLzWBE2eeM5720wWpwxIrbZz14FdNLOTzD8UR2YliQKCv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727173554; c=relaxed/simple;
	bh=5+FDWY/vDMqR94b/04oxwwuO5qIcmtKg0JrFYgT7IQA=;
	h=To:Subject:From:Message-Id:Date; b=KjhsotxCtvw9lnXKF/tq2Ukw6Y6H4JGpuo0x6h0BTbVHPOg+gip1kjR9uQrQtEyUWaMpsbgZsW1OibkENXmyAorhY0olhROOJWLdqCMLiJdurySusfJOLIWtlcGyaF34MMzANz/dBUuDq4LGD+uidaLig8+jn2j+fFabkv3O5fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6hvzj8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6hvzj8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86DDC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727173553;
	bh=5+FDWY/vDMqR94b/04oxwwuO5qIcmtKg0JrFYgT7IQA=;
	h=To:Subject:From:Date:From;
	b=B6hvzj8IaZQGKECGjsg4QIkQ5HifGmwu3s74UcWpXxmhkqRcYvrl5EgPUFxqNROM7
	 0DRq+Zg1wVoolTjS3OmoOjKm8DM9geYN5wRG/ikhV0GqP1YiOvmKq2MIiwNyfniV/Q
	 I7cXWwbkRw46CIhSQldrnoncikcdpkTPxgpt40+AG8Spu9JCTSJk2IGFgDYj2a8Mvg
	 MkeKAe9dYbBot1GGhRmLduhvMvBwTg3cF+V2Z63He2HdrzIIXTO6LLPj6hm2MwQcs+
	 WJLYyNe6hKlWUZoZgHqjU3kfLSJPjBMERAD34WHhiXhkXlf461LmL55Xmfk5wDWZCI
	 MeddKu61/EfLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955FCCF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172717355360.24458.2765982388786694261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8502eef6648ba7d32284c4a2f40ba6fb9c8c41f42efd179174530e2ae21ca5c2
Date: Tue, 24 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727173553
