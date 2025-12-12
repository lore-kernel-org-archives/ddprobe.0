Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C953238C08
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765575174; cv=none; b=KtidQf2Ruo8Nbi2yVQlz1t/XQiZWq+JyhNUzbH1CVaKFFpXVi8i89HgMcV4arGARcIRh186RbhPLD3y35NluY+kJVHVw0tAZ1yMccb6J/6aaK7Bd1BFri7aEp1Xqmr5XQKp2hRUlVfLq10DdBKa55z2pQmInpPQL/ybqwI91oaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765575174; c=relaxed/simple;
	bh=Iq9b8/tsvmMxGv3jfC34vtI4Sz7TS0enm4EsAm8/lQ8=;
	h=To:Subject:From:Message-Id:Date; b=eGZYdZjUS19KlLntDgkvnnb9QChqpgsgrDO8xgqTZBa2JTMV0r00jhvJWu43lOYfvosndVlGhXSABVhNU6Ziv8RT5wu9+gzDlxFMcVB9vxjemzKt5YlZoeJ0CNiJXCWreu2KG8Ucd/HHV3smP/JoDZopQ06s4KXkUwSUtTZabo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0EOihEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0EOihEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAD3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765575173;
	bh=Iq9b8/tsvmMxGv3jfC34vtI4Sz7TS0enm4EsAm8/lQ8=;
	h=To:Subject:From:Date:From;
	b=s0EOihEgezsIN9s+89YpU2JAdRYf0SWZRqm+VwgAD1jC8h2obrdStutewMF/ApEBJ
	 OJxPSkqK1XHytCxBcYy1yOt8X6myMfjSQvHFIRE/efbdQW+aT/9lhCWJl//RsI5eo4
	 Gf1RFqAHs36AVKf8RN6qpKmNFDikEEtCvjbLNLu9eurPND1tvA3VkwnkZ4ljg57amg
	 szVl2Qa2s4fS3DhYlCdhdz7erK10V2kpSnvjPKHBfL55ydlD0HgejkITKMOTcobPEv
	 3QnXjsmyJRMD8UHw47BHrJnf3zrPfj7qFzVzv2oWmSKyr9AWhHOUAR5tiaxwcrDgMn
	 ZokOFQKXCguXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A355BD59D95
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557517365.436.9925620265911268447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c51d0269d91d5c25248b5e3a1baa91eb904731733fc2fb2c9fba1d55e0f7a69
Date: Fri, 12 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765575173
