Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3CB1C9ECF
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725641754; cv=none; b=Wjez0ITlNGRh02KxrDdAZUBTBTC6nxQhbPK7xpVelyZG3gIK9dIl67jpfNkYZy2WFpgSKIuMZBcgEXLChu6UkjzbCFaqyChbiq1pNkdsHy9Bc6RWanpE1qlSsZJJMMemDdQfGN884xneYFItDRKrgHdMHfFtzblLqPUQnpNwM4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725641754; c=relaxed/simple;
	bh=rnYnplA7mbK5Z2I4wPGpxKoX+Aw9BPZRACeSeyX2/3E=;
	h=To:Subject:From:Message-Id:Date; b=C5PITP+ocYQE8Vxlml6f/fis2rM1qzF4ZAnMkFOs9ik0OWZe9fHRWoRZWf1ahWJc7lt35uGD6jwqg0KMWB1cynYnruyIJd6m86KUJygfsQTeSfPJWGVFUW45MIFN2lKlQwD5YItSIsrN2V9c8N4Doeo5TDjZhuFMB+2m46QKW4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7+o0g3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7+o0g3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27C5C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725641753;
	bh=rnYnplA7mbK5Z2I4wPGpxKoX+Aw9BPZRACeSeyX2/3E=;
	h=To:Subject:From:Date:From;
	b=X7+o0g3kKoNPA4GdhZS9hvWbGnKQwKyYhz74++js3Crc908J1uBDRXmxv9okN8gQ7
	 HWR6J8L4zljOI3csO2aOrdyTzZxRmaOTA2jCJoqJZvUpeffXeZTxzfaxJgYBpbUiuC
	 4U7riX33yk7xIRkwov+btAFIJwvri5MaaK5T0X8ZOJI1NJM09eBkXjwi8B7Fg0OgKa
	 nnR3VUN3Ym0jI0T5k7zQQYGVyNbj7LzPlUPkBCTOqjCIKapuhendi1KSlw4gy0V65Q
	 b4EfE593CDw+CIoEbKM1HGkoM9JfXSgR5szzTVrGv7RtvJOa8pQfojWZV7d9yWU1Aa
	 v7fcZgwn4yZwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93670E6FE31
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172564175359.14007.10166829841764946189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26294901232c3e68eb80b45777a4d46bbb68fe1b1d3199bb27982fec52b61d3d
Date: Fri, 06 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725641753
