Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FA3320A37
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756747194; cv=none; b=Q8ec6kbVmrrf8Ofx6W6D5/3BcAkCvyNb2lpVfe6289+av1jsxYkTx3AVwm6vC05Q5KtZB/yMWWLILgyiKJv8yyxqPbSpO4Kf0tiyDd7h/JbHWriUfKcWbwPHHqZn6GFe0/0sNav4g2g3KsEG1WwIHhiyGrbV/2J3ZHayGfA4mhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756747194; c=relaxed/simple;
	bh=VX1SekSUNkCAxqCmMMBQJ4YwgWRXi6s0KhlIkQ51yEg=;
	h=To:Subject:From:Message-Id:Date; b=fH0XbtXEVJJCfjg6IZZsvpszhKXcFj+MYWWQ1/dc0UfNUv0ZIOKmqvSQH7vqo4DufJEt0QZFXnsy/f5EWgEdTJA6O0ikhzP1qyq6c1pAH6616GAZ6y9DLF++QHkvJaK1DyiDyah69CCHa0m1zr/RORikFkfirsVrIAxirvFGY+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oG1jet12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oG1jet12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B83C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756747193;
	bh=VX1SekSUNkCAxqCmMMBQJ4YwgWRXi6s0KhlIkQ51yEg=;
	h=To:Subject:From:Date:From;
	b=oG1jet12XzmqyA7F1ts4iatwDXIBOfJcNZhDnMaXKXizsUvLO1Gq8sziTF9CZJIRW
	 TMUJvqehCbg5lgSHa9J7mb2VkOZPJkjS7cIs1NxFFQLTZPMneM7FV3+2+PaI2I18xx
	 KrXVZAgEOUmbdEH1fpYbYQz//U/WHPjJj4V0pE/F4dyXsBvgpDxAWnLs5slQllQkn/
	 oKo1adIYp3bm7o0mbFscLQcewWpkGu2lwd0eyNZKs9P/Qy6Tih3e7G1MVafq1L2DsP
	 SLZfWHNBDpkSmsy7R578h1VpRFIbbCC+bNy8fHnN6pVLVKfKaaNff6MRzCybkBpEM0
	 UcWmHH3jpcRPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F8CA1009
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674719358.25230.5039710553131597551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 080463644eafcf6144509c66f14969d264f8954b9f7abd04bd157e34309fbb95
Date: Mon, 01 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756747193
