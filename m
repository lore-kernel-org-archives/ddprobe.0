Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CF1198A17
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780279474; cv=none; b=m4MFQK05+zNigICTOxiv0m0jjF1us2kkxtcA0Z8a4trwefzw125JuhVXXkUcqvnmqbJyw7pgKVvtKUa4NYdSfwoywCV9nQUV+cGa14LDOeErYxBPuwL2SI45f/LByhIYMWk3+/5H0JNs75cVPfU6c8iIvbEyplHI9tAeGfkaUbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780279474; c=relaxed/simple;
	bh=MONejeDR/ny0DXfsBY2KL5eFVLDj2IVkpkARD6JI2KU=;
	h=To:Subject:From:Message-Id:Date; b=Aq9cxpHah6g2EzfahyrG+iinQE/E9A0ziSELMJijqEtAycP9CWGVrB9DQ+k7cX/xeolOWnlyQZqf2SSoo/0S2NorjwjcrshMV3XJFkGZGFiEEDcWZem9h23nFZFbwg/zC7qgeNxnc/Uogj4RBnTO6QmyB3WwNLlDY3eFjic/oZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fm7t2ilv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fm7t2ilv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE91C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780279473;
	bh=MONejeDR/ny0DXfsBY2KL5eFVLDj2IVkpkARD6JI2KU=;
	h=To:Subject:From:Date:From;
	b=fm7t2ilvbLIf+i4ZQuAh7h5yRudBO0qC1G/+7gNk27hGUgfzu9E47wCtGEySSlmF/
	 7dJlHANXTbqhH9Urk53+jjoVjedQBMdNECnRM1yNfDS8QAeUHkptRzkpts4czvypvt
	 lo8oU1CA5XhF6/nX7aParBLTjCoRkhttGPUbCHG+jd2+fj4TnwN1+dUmTDLTe1dVvM
	 vkf/iqJ/hK0uNuEzllKtZLVmXd0xl4QzFlwUd7/4f1de1QOI9PX2zLKxs4jjFy+GgT
	 v+pR5YYmQ/U9Pyi1MK42zLkw4+60RGP0K95/gPYMTJlZEI65joS6j71zX3AySh1AWD
	 oeD4r6E5NsG3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0644CD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027947371.19195.16744363234174005499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458d424fb752780a23a753bd7c1bba7008137322337994731e299a84883f86fa
Date: Mon, 01 Jun 2026 02:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780279473
