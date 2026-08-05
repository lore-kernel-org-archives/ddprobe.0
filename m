Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B80C3CFF61
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785959434; cv=none; b=Sfm9UYEWdoc7eYlIsIzcGd9DcrUI3xwqkCo0php631Oh7ZPmbjvU5Zdm1fErPcMbcgl1GWEWgX8OfX2Q03QTcZt0MBHzHuuEysFq2bRexpID9uMm1/Y5BnDp8P1wYtSuh1iRjyioe95tfQ0Q2kiqLzajvlAgf2h++uBlz482cRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785959434; c=relaxed/simple;
	bh=/PqxG2c7gcMjkZfFt5ixBIsjjklDQOGyaZFENOB9LfE=;
	h=To:Subject:From:Message-Id:Date; b=Iq4EB/+VeOWQnqHOefPvzLoAN039Uj5erbwP3j3++4fLzfKQVCQGWRJvN4EKcuvioev67MxQaxdSo/6UmfmyA4JoBSGZH4+ZDM4zRnSAgLSNYMf9pfdJLwunflAaCjlKueje0MZUtuA61v72L2LVud8RC+ZNuralyzgO64xewDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3OWEHug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3OWEHug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAF8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785959433;
	bh=/PqxG2c7gcMjkZfFt5ixBIsjjklDQOGyaZFENOB9LfE=;
	h=To:Subject:From:Date:From;
	b=V3OWEHugrEWaOMkRw1IBYu45Ie5al7EuQtTb+xpPOapXTjO0js7L0czXLPmHXjp9F
	 vnHx6+6ZRcgz03KBT4Y7HdlhLEysI8Cc/EfL0YxZMA9CR3moIyFKLJm9ziozOlHLeu
	 6eBJ7g2FQ08sW/S3NbkNYZdzC5+BLaeyjBh/lQ8N4OQlol04a7caXZ7TVPy8fHzuZ/
	 BO+OpeD7Luqmm22P8bwrku8z5aaUeACeOVKFctlgEwTGYaF2uhNVKw9IXRhzIIPU3O
	 QLs01UP2O3ZAywqNtrScrkmhUNgoG0Qf2lvIMpO+fNXAsUZgH6xuPjQKhL49pYGj5X
	 4/NsvKKDr61kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA522C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595943368.18972.8222727776267196902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719fc55074e593d8f6cf622008f5d2f9a8e0103c3c0fa5b45536797d2d661c29
Date: Wed, 05 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785959433
