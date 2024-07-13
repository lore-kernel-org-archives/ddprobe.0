Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80FE21DFE3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720906223; cv=none; b=ApeP9VzQJrO1Asj3v0XrM0230zEc/5FoKLffoanQuXwMt0pqDe7KEOUEoyM9h8GdOukj0h5iZ8xElhatAhwZ46pl4yBu6O6S+QkXVDBbFiw7GuoUPo5Ty/ZcRMEqELpOWRWjD0yqU33kmp3M9bskLdeYo8XZf49lSU0lywXyazI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720906223; c=relaxed/simple;
	bh=HovkmKT6mu24pRfvI8szKL8Afmtk18qNz3+ezvAiwho=;
	h=To:Subject:From:Message-Id:Date; b=hhureSJ+0P3QXZqzqoIjTtnai3UIVhzoF+8nsw9aLFKXX2LWHGzUhGDJznWsmOHKW1ON3XR2LZrXpG1XQKUxYXreDKMvFOVcgrdzH2NDPdi6T/Sega2HoiGoDxN9VW09FeRo+ovTVEbmrIWuUp2utWbFnOZ1ZqLxkfPAYCdb3J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGXMe4gt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGXMe4gt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AC9C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720906222;
	bh=HovkmKT6mu24pRfvI8szKL8Afmtk18qNz3+ezvAiwho=;
	h=To:Subject:From:Date:From;
	b=YGXMe4gt2oW3bPT/64MGgVBf2zta+qtk2W/WjTAdK9d5TvX0a7H2tUogyiw7Dx8T/
	 n1U5c+ilADmjReX6Hu11iUrAhXSxHrjM0+K62rzKNNY9nMuEByhPVCmCXTPHi+bL9G
	 Mz1vA+CEHtnTUVndygVxdzieZ8TCcteV3CsyZBeS4iGxUgkDsXciaMbBNQpNs5nOuz
	 4nIu1UVhrAkpOeiOygWbkRwWpZOFKjILPPG3dabn9XLmCsn9dJb40PFRDeGrPK8KjC
	 3bI0+bNWPLlh2lDE3QHWepTf4joxPfdxgSnH/MHJIvxhgAZ8Yb0sKoJkYygB+L1nis
	 ZjcZ4sT47g5ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03B8C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090622276.30254.13141449043674285346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb5288ff448db854b88e57412a67aae7228bb8bc900077e8521b42a1b5df8e5
Date: Sat, 13 Jul 2024 21:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720906222
