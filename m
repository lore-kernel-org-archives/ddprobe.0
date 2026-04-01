Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE2847D95C
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775064934; cv=none; b=An7saD89WSssrw5wkoRaut5MVgqaoEQnALaZRmgXO4ikYiMtM+Da1QdUZTl/KHtgUyXpCtfloZbM5xto8IvWtuEdS6DN5I5aJK9ZMHAjSTJ/p7MiqlTRZ0qdraMw3fLo02dbQNP4Hqo4XEQ0YOvNzfnJYg+00GGJrA6fNvVTSnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775064934; c=relaxed/simple;
	bh=+51MywGN2ckYNf6yYo2aveAuC31fBTHfP/46ruLkff8=;
	h=To:Subject:From:Message-Id:Date; b=ByW4rFt70b/+j5ibyLPtnUOj78E4mXWlR8+VBf66IuFvYzcV9sMfmZ4V1ViyFnkpV66fScT1nZBMdfRu0Rju0CU1k8/klCtXDsPYSBr2Q6i5LFJ/7GxeSnIXmPOlAlT/b+nCK13udXY/Jlm8ex1ZEmO8CNas7jI68PVMoJMg6tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ea0iVCcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ea0iVCcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3028C2BC9E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775064933;
	bh=+51MywGN2ckYNf6yYo2aveAuC31fBTHfP/46ruLkff8=;
	h=To:Subject:From:Date:From;
	b=Ea0iVCcgz5Ws+lqowsz4RJu6qhH+M9baXk6DFRThpve05ApLEMeSRaADhsRrw6W7z
	 7P6GyFfHCIwjLtxvLwoX4mk6aLNuOAt3Qc2k7yjl9j8UD4fT1ahnVRshUmuh86X8G5
	 V49n2ScJ4YcaDDdQpf7+v7OyjspZ0TjTW3NwBPTUMe4zVVW2FuUoRm7JlpoBhIOTEj
	 i09jcpUUlKhSrYGd1BL0u3LV0vLSSbVr3tZYogRen/8eN1gERDY7IApRdcQGmYSAk2
	 XT0otmsbjifDz13QKNE4EA1gnbnpELHuA/HKYlO5scxqjEKVuMJeProHozG9a+XUZq
	 C+NAn4x+U8MQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE471076389
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506493369.3076.17294159089251732365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5002145c4b372e2700bf04aa559be8e04db42bc2e73c8f9410b67f1ce1a65cd7
Date: Wed, 01 Apr 2026 17:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775064933
