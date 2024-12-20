Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE2E218E8F
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734720354; cv=none; b=OylyeSMb5EJvsYdlsa/EtYgmODqHLd+OSffUFJPGOe/S83vMSkykAB3BvrU+x/EonhJA6b+a7ZLHjZhSVOUkVSdz6G4GDEXjNQusUJoWH90OxVyGEIEwwusFHvSA2U7+jtjf2T/l68yKKj2LhdUok8HAMS3O3UCJyMwrrZmgyCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734720354; c=relaxed/simple;
	bh=sS3HH9OasEfn+ozjYsnzMlaM6ERJr25CVMROOpMig9s=;
	h=To:Subject:From:Message-Id:Date; b=BTVsBykhJPlFA4sVhWzdnim94lBejbvDik0KviwQOFMrZU/Pv5yxI4Mi2zcC2geQOo+7SA+R9hlKlqYMFagiHczZqX9VSD1g7Hm3aOpHOkdkEPriZQd7qKyyZ8ZEijUuGirJ7apVD1dpzkdYBrpGups6qO8LXEhg2HBlEMrXFDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KV0d/mqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KV0d/mqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E31C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734720353;
	bh=sS3HH9OasEfn+ozjYsnzMlaM6ERJr25CVMROOpMig9s=;
	h=To:Subject:From:Date:From;
	b=KV0d/mqQxiV6AXeO/v8AOUAFqPQbZgrmIuAhOd4j1ivkn9DwLxxpH74CGiemD2XWI
	 ZKr6M5oginKkM6CyHUeWDdAOC1uX5sl4uSXo2FHLCAfLHQoaBKhzuiYaOTmumi9QTf
	 DjKFlQOcFYkST2v9nxzHh3Lu30msOdqYyk5ATeT7LLtNLUICCKZCb8qiyaMTCrN1UP
	 FJfKxCfmEXQWoUxqiSE749VNW/nH0nnNMuMiOX/0G+pP4ll3SKBkDQsHeHdI592mRA
	 8OASSl9E0YLpNHG6MkdW3O+rLXsTcjMU1JC40141SXbkJ6GBkKo681KqxTH8B3upn5
	 jM/ZoCQ0cQuEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99219E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472035361.30692.6141259255540366769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c7685307a49a14e89ff95fab4ed88091fb07e35f307c09daaa1d33540d76a4
Date: Fri, 20 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734720353
