Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105014414
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760841594; cv=none; b=JH3UEmnvodnfR3129d3c1PBOyYmw84nOGeUyNIDiPzfb+AoELLm72SQ1TJvmveHJD7YRpCt7RSrrovmJ6TzxHUl93Deg6ij0XvqQ09y9w7vnGO9Kcb2qKl0anXQuCXdGf0QNSj2l3GhaZvqGU7JKpC2GytMYwqdJr8WVYtqbFKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760841594; c=relaxed/simple;
	bh=v7TwTzcqywgQ7lEvbZnZbgGU4p4RLxNalvMXK5CI9PU=;
	h=To:Subject:From:Message-Id:Date; b=eKKMs3Xdbs9yWOd3rP+4PUfvVoJeV/3b/v5GaUMWLpUpJqblQz07/7Vcto38SV83vje4LQzq+Z2l2tAZE5aoERnACNBp55I8lfAgNbySW9PSs9wUz2Xde94gGcQJmAwb2jOourKiaxjEowGtQrW0eKTuotpmYznK4hg4AWpj2Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGcsO1hG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGcsO1hG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A7EC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760841593;
	bh=v7TwTzcqywgQ7lEvbZnZbgGU4p4RLxNalvMXK5CI9PU=;
	h=To:Subject:From:Date:From;
	b=UGcsO1hG6q23g74KTs+T9snbuVwgfUbNXsUDG6WG8Fyj6qOEhGKcGc/MjOiGX+FcL
	 PKD9HYP9vSvVQ3B2HwSJTQTAOgBFkHAEwYgRLQ3/uVd4sGmXtGzEA5BDvIpy2sYtTv
	 ANCVotwscPjqhfKYVmhxW9XqBHfvMsxrifP+xtk6MyoBOAABHtd9pjb1cg7p7WDdME
	 n7dAV9BOQJLtqkI8ss7gk8KOTSF6e46yHpd6hGWwlFGovLSx2P7ZaD1H3pr8PznWKl
	 QN0Ge4NwUrjcUKWKgYT4OS46m/Qu7U/mGX4Kkq6zpIBeTKmtx7jnPsQ8TMUHaW7sFi
	 D60fn7VIG9R1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E67CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084159358.6971.7875714623641640697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 867b7b762f06995265c37b41b6c023055a99d7d0667f42490ebcc2f8342581ef
Date: Sun, 19 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760841593
