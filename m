Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B57A17557
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 18:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716748463; cv=none; b=rIKw64+6cxGk7imNr7k3CrotnlJm8RY/iaQDH5Y0NET32DpUuhCQv7hO08lIfVwjoqM4aHjEgZ9ldO4uPeHeekoeBoM67PgElX/iwhuP2i0hmGriQq3dF5x3jl1XYfJQ54o/KTh+pD8ukUeGDh9zUYnSD/sT9PCCxhzCKvW3jrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716748463; c=relaxed/simple;
	bh=VNhrB/HD1oGKFa6cXopTZKoUVPEJB914AUZ+8Dys/E4=;
	h=To:Subject:From:Message-Id:Date; b=O26XrMZ6TRt3JBEGNOkJpwLgD9PdE/JZ21+/+ZMj+Z2iWgpj9NBnqCq6tAIrpDU6mnOryqAhE7Wj497D2cbdHktfCwQ7mdlEdaUhXyLzhONDTrXQRo2RU9NbRWwWw5unN1arDvEW+btnYPBwqgE1QTvEJ5kVEKf+pqSPOfFlZxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1Anm7TR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1Anm7TR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE0F5C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 18:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716748463;
	bh=VNhrB/HD1oGKFa6cXopTZKoUVPEJB914AUZ+8Dys/E4=;
	h=To:Subject:From:Date:From;
	b=f1Anm7TR8ByOhY9btxxFtZBj6vsmgNbR+vBAV2KYDcdKO2D+DyCvivOfTPahTe20N
	 rjbr+dx66eZrmkYzRZBu+ItAViGunIZMPmGyQ3g9BxS668asjtClSXz2/5JM/che02
	 nANo430x/lqsgbddN5nQvuCxMySuAeVsIwjAzbap6/bTOJDoLDyfkMGemKuH26U1Ty
	 WjDYwJEKC+ddCGsuKlA6uGR1WslnwChkFv38i+sR70g9mKznSx9Y0sqS6FD9JDL0gj
	 Q3FXOG+EXnDw24varJ6JK3X08UJpV8a+oq2j/ls00Nr9kBJwMplC+BVc6ZxtUSi1UN
	 iiKH9DSMXg2dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5995C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 18:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171674846280.22614.10778452876050654499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ecf363e816b73f5939d68177414a90b081bb2076d36e8d3410c0bc9485f8c26
Date: Sun, 26 May 2024 18:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716748462
