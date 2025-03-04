Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4253C15EFA1
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741048734; cv=none; b=HGi9yG9zU2Oc5LNIhjC/B4E4/uSrlwm9QwWa0gy/mlfS//5ycTegczEymx19KMmR4Z4xz/vMgLhmQqFs/K3rqXezR3XwFuLwQtS/DSFSqDBYRE6jnjW0vquwsCTMJnxDIYqf96SPdTCCHEawUWXVGlFoWx6WB2i6gfm9OO+F7Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741048734; c=relaxed/simple;
	bh=JAXonfOq+rs3JgjEUz3g23u5u5Qj3PY0c42//xy/b6A=;
	h=To:Subject:From:Message-Id:Date; b=ISGcMYCO9FfzgM9etT7ZHmyvkOnKR9bCu7VsoSx7QH0W4+loUv22OUocC/QBIXBL2IxMKNOJujq2hM3qjeZW3PRAOdwb9ss921u5PY8NB9KXjzraPMA27PJkZDD+ylxygDYshLcZBJ1vGOgzrdkkvKnfDNnovDCAV40NnOA5LTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWePO11z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWePO11z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA815C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741048733;
	bh=JAXonfOq+rs3JgjEUz3g23u5u5Qj3PY0c42//xy/b6A=;
	h=To:Subject:From:Date:From;
	b=pWePO11zYGwd+onB1dSUtbQbEZwwgzUICQ6kQ5UhKUICNqEdNfCqfujj0h5eDnz/q
	 lwOEFXdYon/qpraKkhRCcKYfmstvHV7AhAcPhs8Vg9LArYAv58EoEUCVSjsy9ZNzQN
	 5sxOHuadFlRdUU2KpNSCbnregSO2cfb3tdy/Ye4LFoZwk9wvn7yofa67eVrUMOv/aC
	 P5/TWNnGJKgOSHHNpU3pajJukqaSuXv0KMzju5UUp6DbvxBpBnuNq7lBcez7VzOL6H
	 59C+kGxBB4wTZ6G3McbhvfpRUl72YHbls1Yb2Sxhgbt8QXdF/kDB4OzICHjN8TQPBs
	 8I+d1mao5/Nig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AB2C282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174104873358.14726.7299245123659621068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d44bbc676d4af7aa6fe8ac9608814a07e7a2d0c60c041ee5df0210abc10f586
Date: Tue, 04 Mar 2025 00:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741048733
