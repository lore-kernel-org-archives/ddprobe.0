Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDF91D9A5F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772942694; cv=none; b=WNUf89E8prve4u+sEmKQoLqWNq6iP7hexYdBwkhSnVZmQS4JCU/zFItB0fkhVUixK2C0rFK5LafAkxVXRB9Ib2QdfWOlJG/PsCRuS5LXTvjPGYf0K6Rby6BjJkyOTg9T8iaUncISAe40hKqGSUK/t3Xnje5dkoVx0lBv43d42Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772942694; c=relaxed/simple;
	bh=23k3+9kjkplj0Zxk+IDLSaYaKiH3hYzUnv5d0bzWkvk=;
	h=To:Subject:From:Message-Id:Date; b=tMGNdFIVKXv39CR1l1m3hFi+v1G6sImqNRpVrOADPk/s/7gWyvQhek00zuGv3U/nVvNDyUyOfBYJjhCzbUAVI0oN72STG7I5sNwxBqHF1hh2bO/2p65wvasFqddM5Fdr49osRzwQweeeKModUBbkHIiyG+9t249a9dq4EAeJreY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFYNTcRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFYNTcRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA182C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772942693;
	bh=23k3+9kjkplj0Zxk+IDLSaYaKiH3hYzUnv5d0bzWkvk=;
	h=To:Subject:From:Date:From;
	b=aFYNTcRIbbOFFQUlzL+BPOIYPzk2q0ldrrOCXrQVIqv8eRA/TAwOZ1t8QB3DjBatZ
	 jB/NCj18uij+Tz/6SmyB8zraJC72+W9zlFrs8MQwDLeym71WDRjT8PkrBNjmn2c04Z
	 n3xJjL2OGJFnK/aOf0n6c+VE1IP+irMzLUcZIHfDLzvOCQl6ju1Lo+O1V0tbPjwUZ5
	 JUIcw2XSTZAT/QZQEaXMRlxL/zj5ie0C2REMSUj1QSZX35xCDNc9Ca17zkg8dX0lMI
	 jz1OpP/ol0d3OFW50L+CKnuz/pz1BZA30DXVxC7BFZeDMatNFkwb8bOEvt7pqYBBOp
	 Vk6lue3r1pgpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921D4F55107
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294269357.15875.10189470751045865827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be93db60b9d9f8acd541c6d914e59cbd4e43a5842d41cab1ccdd08b3d79fed41
Date: Sun, 08 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772942693
