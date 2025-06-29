Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0A235959
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751198395; cv=none; b=nX/GI+zLAq6O/DtGno2x6/d8gRPPePYV22Nx9el3KstvB1fVl9zZsMDFNfIvv6Xiuo3c6stcwruQ57MUycrQdKuuO/hJE2WoSkdlbYOjRHzswSXxNeOPX6c2UOeMpNpXKaq/YWlm8vDIWXGjqPrWSynkTm+2+nY2BSX6FMmhhGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751198395; c=relaxed/simple;
	bh=l1s+AJgPf3cPkXvaMxeo8o6L5tNqdMeP09a62/O1dnU=;
	h=To:Subject:From:Message-Id:Date; b=u6R/6Q37SkSNCLIZEpwGNcEcZ4H717JEyqz7WTP6w7G1REk/foRWEyRC37QkLUboQC38Fq9LPKJUbc7fLc81F790Qbdiq+oZ0Bam10bDStApSbT4pvWB6bo67dz3XtlY/ZAMN7g3ro+eKfjERmLqgwhMLYgJfnzrLO3I5j7mcFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNAYDv5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNAYDv5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E7BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751198393;
	bh=l1s+AJgPf3cPkXvaMxeo8o6L5tNqdMeP09a62/O1dnU=;
	h=To:Subject:From:Date:From;
	b=CNAYDv5StibP4nVup09NKwm3P/1SYkNFuK34E/MH1pLECXbuRaw9hCSuTB6nQJgCx
	 tsc4it0ydCY71e4PdiFPVPShtiQCEvqUz4fvA/5br33vlfselNbwZLqlvsquZBoCSl
	 +RRfdOjs9/7ETznB1o68XOFXhTYRUmEu2+veHJKDjGaBTwIXWogfwYogxpCZpeknbm
	 PbwIrAvMcRhxbkxw4OdGR+5MOB+X0PmsNZYFa7sHD0d+H9WSVVW/rK0KQveTxW9k81
	 OhiQ7Mm/Zxxr8iq0RchnwK0Tm44aYyr+VZHE/Zelyo5JDzGa3iS4L+B620IMq23BPC
	 tnSi9H5XFlS7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF26C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119839357.9230.7127288635628383427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e236b13f2526b1af4a6acc81765885e3f6861047371ae29a29ccb43394e260f7
Date: Sun, 29 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751198393
