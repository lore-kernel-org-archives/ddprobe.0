Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37600B672
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783145914; cv=none; b=mZCR0B/MEAXrTTC9SNp5m8HvoyxdTc+gDDayaVai1dcDmrISPSMiJ0EgCpI+VpkCtpMASpmvqMyX599IdyKsLXbCtD8D15G2zT/WQDhYvJEOqtwb6ainRld/GkMTpFnB8DfSZTQcn/rMV+Pz7PdM0nsjlR/en97YroJX13omSYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783145914; c=relaxed/simple;
	bh=QcgeVjSodFlmxD1DpDrIH2vJHUivAHk8qJYsOthf0N8=;
	h=To:Subject:From:Message-Id:Date; b=pmjxzgTh2O4lG531fYCM/Jbye0AMHkK5OKEf4ZQbizZlxzQwPVjHm6FzaQNx3GarDh9wJKMnp9NdRu78z3yBASqZw8OovpdqQzavz3O6JXHTMackcUji22X/B1tnKaGl8Fce/RuXu8wG1izEWmYhqdGnqflFaOwK52zkB/uo6Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ffx41wD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ffx41wD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0806C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783145913;
	bh=QcgeVjSodFlmxD1DpDrIH2vJHUivAHk8qJYsOthf0N8=;
	h=To:Subject:From:Date:From;
	b=Ffx41wD8wckyoxiFdN0d2hriy8I7yDAML5Ij/G0Qb9mIoObJIFwpoLjQhMuTM9sqp
	 htUS3ICjwDdnDbowbkE4d9wY3AcemOm5Ov6hz5dHZEBz8JG6s5Wc7ZBrUbVfDWB/UI
	 gBGeEEQwV4AY1dM0l0e+yb+Tk9ioTQLy0tdmuesDvwFXXARTONbrNPM3jOis+fg1sJ
	 /eVSG+fpyDZXEu5/ISNhOLDus/cZLLiphiQUlBZnCuPmWWNa5Snj14XfT7LYoqsitj
	 coQjkuWmIr46kh/8St+eJhljvkfNe4yNXtfRenrmUpxl3kYFGwc2Cbte6yKMAnNwcs
	 +0PQz4//6UCUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE117C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314591368.22758.6873996613775544063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5589f875bdfb5a6aa9b1077ac9951190d2cce9f17764a146ac3144292b9bf0c
Date: Sat, 04 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783145913
