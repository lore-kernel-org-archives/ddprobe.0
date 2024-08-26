Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BF913DB90
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724714754; cv=none; b=HF14jTFv2YYvuRn/iMw13tnqQyFM99Bklde4z74KYfDWHMi3VNqf9th2jcqh4n2UUgjGkOMYNDgrzDyxddzbvbuvo3zt9sxS+AqfD/41GIP8VXZV843N1FW7UN3sHSgix2nOwDUxopf4VPap7t7YmMDufct4exkLf1mM1ywfUcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724714754; c=relaxed/simple;
	bh=KjWJYqbZOLivlo2Gii6epOR6Dl+0Pd+4tF6c/Pdo054=;
	h=To:Subject:From:Message-Id:Date; b=dUD6Ac51Ph0gRsmBFXWplr37JwG7llEJiMlG6RETQekkIbOGOj3YiONlBhilWmugZZdwz1vFJDWTe1gqRcBYgAxaTfeSgyD9wO7XXdpxvTpjHyLX1z28b9dl29z28MfMLdKCOtBpjhPMaJwcWRo6BZS/6d01MgFYfVU316tGlCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7JzGlof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7JzGlof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC990C8B7AF
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724714753;
	bh=KjWJYqbZOLivlo2Gii6epOR6Dl+0Pd+4tF6c/Pdo054=;
	h=To:Subject:From:Date:From;
	b=f7JzGlof6q24m5QRed52R85wRIIyisvJfJXOFxDlBZ4Yc5NjdghE7vU0O5Uxmoz5u
	 K6GYF1bTLzzu/GkO6VagTWLG3185SYpv7M5b45bU89kHrscHNQYzeqk0tLjilUOZ2i
	 GWcGUREXyZVAAiFyZMhpV0X+1OjOKodsBU5LOn+dkfaRN7m4gzRyrv1vJgHCSfk1+O
	 Uh0yzrQO0asBi/yWFUHHoDRdRafVL9KiUf8EN9nefMIr+LSOoW3gP5cBTZRfOMM51Y
	 Ihvdm2lpq3JTHVGZu8i65qfhMBtMioF32xXmWUgDlDPiqSEmrkKxn6YSlIZq3BMRYo
	 62/J9dOk2Cx3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B93C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172471475360.29130.13415810825315702022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee16b5193f02e386a580d6178cbb4638bcaf4b4bd657182d119725972a8a16cb
Date: Mon, 26 Aug 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724714753
