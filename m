Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0C216DC28
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781577994; cv=none; b=RUMQ6R76AtKP1y80v7A0G3UM8e5KOO5tmMer0Ki/uEiWTgEO3yGiXtocOZoyCRnmd5uSWUOcmdQ+sw0w35fj0GYPAT4qFoEstpcTwYP7aypZS9dElYH02ziyxXcQS4MPCXTZh15Do7JM+3k1aDvf5sTZiA8voXwB/taLVVfUGF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781577994; c=relaxed/simple;
	bh=ewW11eLg7lBZaePsQsi1HHyBTa4KO8YI9cOmfY65z3Q=;
	h=To:Subject:From:Message-Id:Date; b=frJ06xS9FjJ+Fazh2CM0FoZB1WB9oy/v5gEEGzCuWQrON0HCtbcsz/FW9oo2FdeARgQj6b4Ptwszyox7asZyie4p8aezayb9o+9iYPCeQ6T9+snPFlvUOEIXI7LMpy4HyTSOvnvy6bT7IqHXkG+QAx/1v0FXl60Vwgvv0dsgZmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciVCxDUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciVCxDUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4263C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781577993;
	bh=ewW11eLg7lBZaePsQsi1HHyBTa4KO8YI9cOmfY65z3Q=;
	h=To:Subject:From:Date:From;
	b=ciVCxDUEXLOBH6Dvf4LRzPov64pp5OvI6q+z/hBpNmRxFn8XJMLYySszy8yvqamCC
	 aHfu6lCGwsvlxmTieZ1ToIqT1cxCI2dDTpECZ7Af5WgE2BdPKlei9U6FCJveWDSBJ2
	 IzbubPpSKmkwJzKXWxcU0Z0P0pmLgTRj54QOVMzKolEOOAcvYpy9dPiW8s7nqdX2nC
	 0GuTGQWqb/62Yq62tCSImR0L6zByW+8IDEtHKG/Se3zqrEuC6yykysPq9N0Lx/hXPo
	 7jLH30ZlSK/A1B7aCdIYlB/3I6HfYfthi0takrSjS2fGrSxZ3wdWKH/bSAlJnH+IvQ
	 RWD7LKTqwumMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2FBCD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157799368.18031.8161530172190940999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d31795a4b6f175b8ae9b48209753f486dd03dcbcf11e0dfba59f33911f238a7
Date: Tue, 16 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781577993
