Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3486D1D5AB5
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732630554; cv=none; b=cCbO0wW6IrTMOcfZOocz1hTPRvVtT1ihdm+huPh0Itskri5NaPw4bcn0KeqUfEInieGD7PlaXYoR2a7hZxSZ8LPj0UpHd4PHUxX8MjQgPbETlzzWenJmSMVUobFH/dS+XGtpszioK6Fbn5zC9FecA59v38I5ZXC3q920sRopHLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732630554; c=relaxed/simple;
	bh=ot6xCr5DiYESGWF36Dxb2Olxc/CsbkvKU3Lpg80xP3M=;
	h=To:Subject:From:Message-Id:Date; b=gB7gazlSF4oymRukrRDbZ/OqVwsTaQXnHsdc14JqL8VbTWewFGKu5isTs1Pl5skPk3qbsM2m5AXXVztqRyiSqOWnFXfPbo0X386JMDKEk5r73ENaMBvYjRknRJ+RjUn6ij9ALG08EEnlSiNUYNxCAv35kfYiM+DW4yAevotouL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0LIDT0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0LIDT0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6986C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732630553;
	bh=ot6xCr5DiYESGWF36Dxb2Olxc/CsbkvKU3Lpg80xP3M=;
	h=To:Subject:From:Date:From;
	b=T0LIDT0ynltRHUQxnAcACGB4q19JZg01eS3pVFRxx0T/5N5/rDeFyWamXsjyeBM60
	 MJiVNcpG4Gxn53Jhfn4DIWmNFoHGKpXGkLMtLRltEnxoTP9K/7YneXx/cFS51selnD
	 eBX/2LrZetRUXrqusGRxF2JEhKev0qOqaXjXxsLcaTj0302uz5yPWXkNvVzVE73plQ
	 M2c6B1BgXCdgod289xf4VF3yCVAuq9XvFhDfHmtyUMCjsdAbb0Jl/NNMIlZC3rUgHp
	 LfPLLXW4/W9NQarDdEPoYyCsvQtkUk+n8JFm0Celf+ZAYHF6JLfP/qEU53B8LeaDmF
	 t12M5kHmJ9MYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A357FD3B991
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173263055365.15626.2021754068518051300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14e6ba3acd7ea3e6b7a50f9b9167a2bed0abaa7a1239a58b5819d9e538f9b57
Date: Tue, 26 Nov 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732630553
