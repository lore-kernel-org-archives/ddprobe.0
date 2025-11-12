Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C0E41A8F
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762936194; cv=none; b=bMOA0e1mtIVhkV73FkawE8TQBBaUq4Vz5ft7y6h02Y2p2dm5lY5+nClWIdNm9Zc4IxC1L2AMIdg3DAeL7kDoClUQRP9F4MFA2ui7GeI6GMpdpt6kawzGaa5KCfuD6SR3hfitlzLRWlFSv/ziaEwJzSFU74UD+dKKe7xDcwInE5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762936194; c=relaxed/simple;
	bh=c2ElO8VnA8Jd64jiI5aJHnHovBqgVaS4u/7liUmdqBk=;
	h=To:Subject:From:Message-Id:Date; b=X0nUtfOy686V1XMJBFDTENAo6wx4BvXH2qOQJAypgyeOHFC3EguCwMJnNMi77kMSQmmFbeWz47OBPIc3Zxth8QEg6VHMPLOqLtodsThCnCUk1glT9oOpZJLcGRRUWZ7QCTAcDYMUGq6uMg4QgKInfo0Vv1J4mwC9RuNYwhAXXDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9dsPV3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9dsPV3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95F5CC19424
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762936193;
	bh=c2ElO8VnA8Jd64jiI5aJHnHovBqgVaS4u/7liUmdqBk=;
	h=To:Subject:From:Date:From;
	b=C9dsPV3FrMXkj9r3YAkauRFgz15Q/1JDLFWhgxkkw+2odQz9SMnAoMJheCcNG332i
	 iQlsgz1qKyoxeiD4x4u6V6+9WLFznAYyWyvTLohBirfSi5dOlMGj2LFEro898VLue4
	 mHORd0ZcOfz/vSN9RbZFEqQo+53O8rpxnry0Hl4krfozaYMnUYW+EhOVqZfZhpgrTw
	 7nfYl7+EU89gqdDFcDn4z2hEWtA1mprh1BdhYzRloxybQMSfsP/2c2dmkMuLntN05G
	 kBd7SHfrjisYzafKNFlWhdyiAVglVwyIUs0IFGLhCor7sZzMkqU/GulZCphmXCFQ3R
	 Qy1u7wy+Cqq5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76ACCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293619357.6829.9692761755076599577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e2959d6d14f21f80e56e0dabd25bbd5ab9e53c74e59fd300e967278c54b408
Date: Wed, 12 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762936193
