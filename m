Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523F11A9F91
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783734514; cv=none; b=X8ZO2jdh1xZ2TLd+gvc9cCTvhbjJ0hjqXdmY0a/hUoONcLCN+eDQx0R2hjjl9gWiSd8srM+W0Pz7ORjIxNQ5Vb/TIBidh/H5OUCdbpDEuWOdO7oM5AERVhYaGJmnkjZYd8kg552kij20kpjPxvf0FSbW+Y3sJy2Zuq3RGT7Da84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783734514; c=relaxed/simple;
	bh=7haRyctzeS2RDKFlLs7XmLDKZzGoyTP476DDLxzBU+c=;
	h=To:Subject:From:Message-Id:Date; b=VBPngqJmZFhP7gzcnZUN/oncZmEjUPraRcg/i7+mYZMVWOvUW+FovoI/7Vy/yeUdw4+pMo7ssqkNhfbaLezwLvrhq4LeOXeMp/43/bVNLzrapgo2/jYwFFk7+6svlZy8wdvhaTKE04K09oEJqlLMZ720jHFD/TZYdCXVAyIqCIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kj5RCUh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kj5RCUh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F8DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783734513;
	bh=7haRyctzeS2RDKFlLs7XmLDKZzGoyTP476DDLxzBU+c=;
	h=To:Subject:From:Date:From;
	b=Kj5RCUh//naWDv0+Impbt0pTkQYtv8Mm1afz5G/Y8G1LptognUCFHzDgJkEDLiFs+
	 EAK5acF06uoKuqH1RNDwzS8b73O/tue/oqNFztKLdkXqSaUhpvQXBrFnDgnkEQQ+l9
	 N54Hz9n0XwR/4sq83f4eAC5fU2I8tWl/KD9U/OJFOCs5E4fdGI8mOVzMK4B8WweomN
	 oQLDJuBhvJNu0xfdNzid7RGBn4PO9fJlhJjsu0U8BLSSRVm5+cJdV04mITeSiZVXwX
	 833dAV4+F1ecX+RzJ55RsiDFm14b4Bp78ZeR2rXkyBJcz6OJUpTCu6w3cQQs9D9bGJ
	 aXNtst+TnTBXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0848C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373451368.20068.15965735376951281784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589d148fb85a048cc801cac8beb4b5db44140f65719cbfc6d1d9e186cf9a86a8
Date: Sat, 11 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783734513
