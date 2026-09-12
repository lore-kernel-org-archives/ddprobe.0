Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EDD32779D
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789186834; cv=none; b=P7n2l2suxWSkyJzoxYDeEX/enHwH11fFMjGaSard+3gWil/SJ9nmbpPDp4lFNvnmXw3o8djQs/r9E99zImw8L/cYcxzXrOFxtjYKuUbdnUZlHJz7eC5PPGzWLK+Y3r2XgDOMjFTixye16hXve0oJlpfqj9H2+g5SRldQAhqRUCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789186834; c=relaxed/simple;
	bh=IdvQsB3EUrO/A/dqwrCiWWNKnWJ41RNq0k6gGb+66l4=;
	h=To:Subject:From:Message-Id:Date; b=nwhkyanyyGpumh9b7F0644NTJeGFBHso3xR9srMSSerlV+n+1Imh8EKgWE0f9kNh7n7fgisHj0stezJpDgrAxV6BuFpqu9j9pqNgdUNUdvaZWJ11ZiI/Vy07AiW0dwdJnsZSJTZuFUdrofws2ejEG5SA6/O+iDWP2phJPas/S8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+uxy/rA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+uxy/rA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D721CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789186833;
	bh=IdvQsB3EUrO/A/dqwrCiWWNKnWJ41RNq0k6gGb+66l4=;
	h=To:Subject:From:Date:From;
	b=U+uxy/rAVM8YODozgg6sO3jEJQW8OSKMfJvWL7/YUnZ61Qx7ObbDZbbQ4X9f4mdHR
	 Y7YQyQ9lC1Yv1f28f+XM1p17XtOrZGjMMjdUq+RHxHiBQhGGIRp4fFjGzcSeBdb4m8
	 t3qQjZpDNeGsO0jHuOxLuUsFm6YJvdeIhSfxvTeCFwkW/W+i85Na2uW+R69EOx6bpu
	 m9buhs3shJav0HOytaUJp8A8FiI0iCjfnSv5nHQcdpDvrxO95I2PF8hRI2yLNtRavr
	 VYMT+NBcEDXJX5GALLfXqnOpKdZ+jZ26soEwailxz83erYPKXhspxiVL3cLepqjgTj
	 Ma12u/b8hAw0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD504C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918683369.7978.3036576024407718766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61bd6312c59c659b6ce4a0a599c095b27676c02a9875b24a244fd021062447cc
Date: Sat, 12 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789186833
