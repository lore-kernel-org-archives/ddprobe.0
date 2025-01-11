Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D5D634
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736596554; cv=none; b=GAFnKwCeoVp5tax/H3SEwE4HLx9uvGaklR5QJzltI/2kO2OkWAm4r/B4fCb/BoDo9N+yNLFZbz6zceFCys/rFCdgf7ZZYGnb6EAUiiwFipzdZerGCuDDxRaoIfvP0BcT+i7YAAii+3VP+2EZT1HpDkDYX8SMVb5uoMK/uw0KEOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736596554; c=relaxed/simple;
	bh=ERx5XSzyAUDxUk1Cz4IbQ8l4qb3Ws4CJL+OWtRfSgVU=;
	h=To:Subject:From:Message-Id:Date; b=i6OBac8IdY7FPU0mEn/6FFC4uv+T8YHDuZXSJ5g4UThJ3l2V0nB81UbMhC/zZYEZrgMDkLxR+fWSug+SlZux5ZBrOvwuMgSVNjo+2FaKvaL6eLKUeTcNf9lsOx1GLp56YaIhXcSp5eXhOXdxh8ucc6dLMrU0dYluKQ7zHnojn10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kU/7K2kV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kU/7K2kV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B10C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736596553;
	bh=ERx5XSzyAUDxUk1Cz4IbQ8l4qb3Ws4CJL+OWtRfSgVU=;
	h=To:Subject:From:Date:From;
	b=kU/7K2kViU4cZV3Omxy/AHQV9r2N+l3ZwberiJOglJVfwmk9WN7vdCkWksQq1I9yM
	 9iyDxML7uv65KPo6moyy3fuWUwJBg4LiBGH81UPu3n8IPxKzE3dL1uLNiio42p5Uf6
	 ie+meuaa6HuVhdlWw9E7eU4TWXABS5Xa36N657l9TTZqfg/BvaST6uDxOhymhsLkLI
	 1blgMOXZGv2/pbecrjdhKmzmEspa7xBbBVoXk7UaZX/EPp4OrWdIA6JJHFPhjbvhxp
	 H3Xll260kXSs+J17LDd5iJRLoB/EaWt1SYZtm0nO4/9b+IoWppADPpytBkSxNzdEEe
	 smXljmnfSOe9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B01E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173659655360.31103.6773321082890764463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ed03e1d71d4b5a701272f09af53a6427205eab233b11fb5c93020b3596adca
Date: Sat, 11 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736596553
