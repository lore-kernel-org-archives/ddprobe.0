Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0894F1FA
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714225343; cv=none; b=DtEaK3Z8uNtYpB3/4hRO13CjMwT5WWDEZTy6CWiAg5HAMUfu6+BVGDXpcUKeXadLwMlTW45siAstjwA2V9Z1UNTFRfoO38xr0PPgOzLUgO7MJNAs4FhDKUdE4CO7lLBnoiSFO48qk0Bc2LMFUmEvd4Bc7kaLokdzfGy61dCHCN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714225343; c=relaxed/simple;
	bh=+Ft7JteR5Dn22woqR3H+yFlY083bMxNy34I/3ZOwFcg=;
	h=To:Subject:From:Message-Id:Date; b=tLqksxLfIjrXkRFieZe964sIetn3A3T97IXbKdXjmy9ebsQ7xM3NYlwyEBPKr5w6c5D5R6wtW1eci9fZt1WwXoLvp63/oHYGF4/yHI0AFijRmsYbTPt0TWfN7csUWm5aqlrJ5kKCaG7YWeXe43TaXfLjt/jizAJZz0DO45P44CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXt55lox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXt55lox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14DBC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714225342;
	bh=+Ft7JteR5Dn22woqR3H+yFlY083bMxNy34I/3ZOwFcg=;
	h=To:Subject:From:Date:From;
	b=lXt55loxEZW73fXQlklTE9YAkNM2KBe95YJB9lms3FGfBj+DNWNXJ+v1wZSDksqV0
	 Kfk59W/GN9EcVrVBudqdMqJIcy40JRYp31PVAsaHxIjwzedz4G7lBNvokhPZR/bycf
	 VBsCvjLBuDfYdo5DjFiMknI6quSQyS3SpGAK8Sjk0U5vaveyj74ePf8oRe3bKZcf1O
	 qJYxYZVrOzoLJt7Ws0JgsJZ7460sLQwBwrhJmjY9z1XYiYfMuyvDgYxGlP6FuBgjbY
	 2xco/tpuOPbotTSSXmEAwFJPZBOx0uF6POaBTTd3xwIKyLiV0lD/JsW2kL1u49/1Dw
	 E6+BbdQ/Hk3NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE764C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171422534277.30456.16816307057398599732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1159448ddc2a540354ee045d1054c3a9dc4aa537c5e2861427249685e9b26c
Date: Sat, 27 Apr 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714225342
