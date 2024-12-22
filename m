Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D837259489
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734900354; cv=none; b=pY0OPyj2gP7zdvLzuaTDVx8ZIwT5dW4Q+SIhpjpRYbbHccGtkFDk41sCXWrtNGYVQYyhfR2PPF8U8+PYvbpmFVG7Slez1szPC664cg1GPjGwzHBMmlZLno+tDNIT0uMUIKrXPI2KYFb7KWUEFh0ai0bCH6bsGJuBU8Jx8Q5nSDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734900354; c=relaxed/simple;
	bh=AhhHxJm6BR6btslSUhgMd13hEbe0m5KJJ80C6kHASMo=;
	h=To:Subject:From:Message-Id:Date; b=RjYnOBxJlUMczfjajdYspO1slo0zlUW31lgn4YlTwPUXN4k3Ib0kUCIbstCzFqujt3uNhujZPcRedNGG1ed5ruYYWzHLUI4YKGGCTybCwQ2zFkUfYPiL+XbroP2vWLRC1eC9MoUnFGh8SRVOh2N6r+5DVbhu7hD1KCpIrbVtjrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EptqfQiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EptqfQiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A88C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734900353;
	bh=AhhHxJm6BR6btslSUhgMd13hEbe0m5KJJ80C6kHASMo=;
	h=To:Subject:From:Date:From;
	b=EptqfQiqHfdpF3LyFLLWbKbzkpq62h+wN/To3xnzKHW+RyNTvrz9yHceaHl3kTA4s
	 HEYNalfMBc3Q6qYkiUZlTMKvFWCuAuTPWnsveT6UqRi8hIIZAyChpfHm4FchaAe1wN
	 ypUNwHEPhzMzaGZJ69nVEhT02AlClMJ66eZA4IBG9iUOFK05O2ctmeYu3+RtaQc3RK
	 i411iLy2omRbuPqXp6hQDT1DkQj7SmUpp0gTvsiDSLERv099qSCbXjomIhNZfG5d+i
	 MbJvvqd0RbNZgDqBWBsDqY/RLOvCSa86GDZPSxrXdNdC+2P92THomXfDwnnGzmpHDT
	 ndh9kUpPmVF2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D24E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173490035358.13876.13319601414969221828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c67bb44f294ec1a12e94feba0555d38ae4307e571fdcf0668a83bdad94f33e
Date: Sun, 22 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734900353
