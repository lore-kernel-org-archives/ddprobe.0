Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D76C4418D7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781634994; cv=none; b=SWSo9ZmjAG/uWUZtHFRwY8c8kbazNBvBLRP36+p0Xae7T9UYiwhamNOcrmtAK6eq1lmamnReqU9VNsqEGx7uqrqCEwpsk+jxyWW8g9BGd6wqaYnxaqrsTHzVM77XQA4rhcwrHOtEv5ftYbetwywspDBN6Ti8NjidB41cC75fPqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781634994; c=relaxed/simple;
	bh=4gD324IQLmYTbyN0awrlu4U+Bw1oH1UXTBt8zGaqNVw=;
	h=To:Subject:From:Message-Id:Date; b=tteJR6fbySwFtdH4kFghZtoiYv+Exer6J9g4na9TEIzgzt4j+zBttcu9uiM/bDDZ5biN/LV0yQ2qJs2Zvko2lesa3qMbtDePKp2FIuk3JKFp9+3AUFRNLwIMKnkCqyYIgE3Wy8xYY6LUDdSYLi2YH4x/PKjaqwt52H4SQEwaZ8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oN1oHe0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oN1oHe0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2002C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781634993;
	bh=4gD324IQLmYTbyN0awrlu4U+Bw1oH1UXTBt8zGaqNVw=;
	h=To:Subject:From:Date:From;
	b=oN1oHe0/TSGTxjRrwbcgvtastLalh1DR62qX4XZW84PnEonddNxlmvNqRIbishCve
	 8NJNakgfhM8iT9tfcNpNU6V7xsYHDedEcwp9WqSiCHS0nXE69SU2xBpk8zOPHUWESJ
	 4kGKoCNsxYTISsuMi3dK1X0/R9+s7o0g2tSLLrCCRpBcPRl9qY5/+kmPevyZwDEdij
	 Qhqvly5RckoIw9A92DrQ2q+7S4SEUIu3ttHkrEZ89Z4HYPwRO37f2R1d8Q2FqlEfNZ
	 i5mf567mDoHXL4QxXsHSxW3IG1S/zb90QD1BdN3RNl53Pkhu5CUQ8+Q0Ow1AdQN+yJ
	 BUf2+UKE0BULw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B964BCD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163499374.22643.7478870840983794841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815407faa9fe23e71f65bd448318d87e33ea7d39e22e0d4c3c06e60aaee6549d
Date: Tue, 16 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781634993
