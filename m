Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925943F6613
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788164434; cv=none; b=A61fIZ36famuDFXypKXgNu9b2MoFSJCPR3Mvh441eBmVTVCY4fe7YYwrcxQvJis44+HNpaYLL4VpLQunIBmnwQXaPeEvrf2C0geagiU8iUug6KM6TkA4oI/GtAejgde7WMmLPAExJioD2fNFGjO4YghJzjARzzI/aLIEawzqpVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788164434; c=relaxed/simple;
	bh=OSnTHm/JJzu+P3i+igpaV15nyCGKy+DAP2iYM0eYsmw=;
	h=To:Subject:From:Message-Id:Date; b=Anbq1wYIxUI76iC29/lG2QOSoK4r9P5bJl40TWUq3JzgnfEd6OH6LMNOwaWwBoZjekP0Hbs1slaSImlZb38hf01wOFkieVqCOCkH6iFyjYGF0PbUuAftXupBKGEcZ7rvA1XTi/clnq8RLitO14r6nGIHNxFc2ABMuTm4hOettYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uq4B8s3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uq4B8s3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 279E4C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788164434;
	bh=OSnTHm/JJzu+P3i+igpaV15nyCGKy+DAP2iYM0eYsmw=;
	h=To:Subject:From:Date:From;
	b=uq4B8s3lEMNgFAxlLokoJuRxCyvcrfPcM44voJi1jZ6cLorJ0OBG0ultuh0X46xWa
	 2DIFLha3u5NZ6sK1OMe6Qtf+4aNrgXcY9kojPoggw2p/H1CpALP2ppgQekk+PKHolb
	 HBYF9nL0uNXjcgJX3vuwWaMWS8RQYL/zvQYw66lI4y7nXRa4foUnhw1z53cQvuWZKN
	 glsjb+Z9bjOrdxyA/evPF6xuMaFAF1KMfLHw4JsoxuUpo2WV/BL9JkOJS+83MNwq+J
	 jOjIMAcJac51fkwJVkedWT1N6hTGUBqAlBW+QBBfWVwiy4nf/iEfdWyvAQcIt7IY5j
	 NacyONcdjtN6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0ABAC624A5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816443379.24862.192124876124427387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4731ac9e44ef223f6dce45128d41c119aca6c869170d67dc7b20ea7181d36ad
Date: Mon, 31 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788164433
