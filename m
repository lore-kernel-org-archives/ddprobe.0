Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331A320C473
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748483994; cv=none; b=uKvjmlDkvAK6TmLqRxE7xUMQo1gjDEbf78RLPLoX+1owG5RBk0ELfqxRm9ydkBFdWwPCuFFRMVNhMINVkO7joJVhzi2eoIF3YbiGhO0cLQhrL/3wUyYdQrN7pqBTS1+hLwM8yeJgUMv+mwsuUNiCbbF/BdkeVr3xlV9PlkflIzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748483994; c=relaxed/simple;
	bh=vF0/4w4/Y5lTZJt1cKf9mb/e7XhLCdOZNOT3SklUeQg=;
	h=To:Subject:From:Message-Id:Date; b=H0zAz1BcAhHjFWRzBaGdKflO//C3K7Liy7iZ4UN8PVjUbsmZ5eYnPLeM6u/4rSiSsnRLoEf2f8JLlQoxMYK0iDi9oVNbVfOva6RrU7WiCytsvVtR1LAimIje5CYSB4hAZBkDNKJH5Qm7l1tMcRC3DDenTn04o8MX2OeW/ygmno0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b87L0dgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b87L0dgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEC7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748483993;
	bh=vF0/4w4/Y5lTZJt1cKf9mb/e7XhLCdOZNOT3SklUeQg=;
	h=To:Subject:From:Date:From;
	b=b87L0dgpV2ZlboT/VR3DKjLwHYCA+YuPH9BzQiRJywObglLswvd2TzI4TygrECVSP
	 joE8syk8FNkMffiLZND79gvZEwg9NMhVUmYusTcE3TWLYXlmVKfmqmsgmDCHcx7kxa
	 CVnCIeR4K8M0Tfh1/Z1tEx7GZv9ej3bUW0elakt59gkYHr1x67PvLEa0RLNp0u82ng
	 6SavF9tr1rZxEIzXlwlrIRObYs/6RLTTKCaTuwCmdS5FdaO4EnYDB8ftd0h1+V5Xfi
	 LAKz15fcfvQNxvODFEA05MzYiNxb/HNbrMcTYyxqx61/jakxHVZ716s83HhPvZcrGI
	 2GhAIRBE/sO4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B8C3ABB2
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848399357.6194.8712845983730694188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d425dd8c51ec55a467ab8cef7701d3d9a9f5c8026cf953cca57d6d570fe274b
Date: Thu, 29 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748483993
