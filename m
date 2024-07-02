Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA8E14A62D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719908123; cv=none; b=lkNhYnyfdpMYwYwZRBX3NaiGaoBvEks4iy/bBc8e1KASABu5bNHQtVclywvztB1KxpltUc6f/5Ujw3M0nTDvFAGCCW+vhJuSkMRa97NySpmp0UcQoINztbJgU5ZT4GqFZn4h6imlSJeZTdJZHik10U7D9qyi3BrU+0rUr5Q2sAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719908123; c=relaxed/simple;
	bh=L88g7IwZgNL1fMjyN2SX6IJGYrOGmo+opT4sntVofHY=;
	h=To:Subject:From:Message-Id:Date; b=DAOk0HeUTNerBz5fKGEFkquWGRhi/ymtLU5Qwj/ohq80C3aQtiyNY2dC+R0o3rBAJJw5BeutZB4rC9aZCcUArxY04NRIhioDaIlFq8n44GrFA200RatVNdprDHcKEi7PEweNxwe/w1UMEnnUvy4BBm2XK9Vik5O9mAC38KoBSi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7vZqfbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7vZqfbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFCE6C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719908123;
	bh=L88g7IwZgNL1fMjyN2SX6IJGYrOGmo+opT4sntVofHY=;
	h=To:Subject:From:Date:From;
	b=Z7vZqfbgVMY1AcLrAqsl72zQ6avtqXltDXSs4IvvL16/SnxCf+woN98lUKHYxCj6r
	 ipKh8CdXstNbXRJwu+N7RGoxp2fpvuOo3aebVTEAPNn2B5p8aI3FXt9vSMuh/Tp9M9
	 TE1iTvrDqqKfAmf4HvsW03WzGHaj3LW8kx0dJmW62YZGDwIkSjy4TCgMRsWRaxWfwF
	 8d6BE0WJ86lgfaH6056XnhzkTD2+QjENL1+QdvKabd2ZlzkeLcTgZKqU1dE6X35I/j
	 aYT3kosyexlXbx4GXgOffp5RTcDfKlJF23EVM3F4QMtWjliQWHIPgCiM6T+KVRQKdG
	 0juf5tqNV6hCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B89C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990812284.9599.10123609691404864706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c215c640aa01aac4173dcb23cfee7b496940b2ba8e06acef1633d2e0e59b939
Date: Tue, 02 Jul 2024 08:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719908122
