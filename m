Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46380481FC0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781211394; cv=none; b=Sk+qk03vDOPd83njynoYvrmi+YSJdXipeEB5w8hWYbyCuUoeJZT0AtiuoKRQse7aMXLomTaDPV/25N8QTeJlaTUj2QoEieRpba1amEifIiUds9HsIrpLVF/cjOuPyjw4fxd3hmF+kPO7hUxon8aDW6RjzxpyPFUDERuNuSYKPOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781211394; c=relaxed/simple;
	bh=bZZ4IVaJ7q79abmNkcmBMC4SHmO9H7RqTT/AUdWuz4g=;
	h=To:Subject:From:Message-Id:Date; b=qoFMUYOAgEla0fxJ1mgH3Vik060F04L2OMY1HQ3NvRmhzZHYrPCy/R2Z2e0pC3oQhzmy2Qc9bG/gdoSLOXppP2rKbmD6PLLKakFjoEFzyPY/KubuJ7WoNjgEp4cwABxjfghCZLHnXT49j4yJl/UfYZy6rAb4X7DwMQIGjW5+wLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TF1DP++M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TF1DP++M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5930C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781211393;
	bh=bZZ4IVaJ7q79abmNkcmBMC4SHmO9H7RqTT/AUdWuz4g=;
	h=To:Subject:From:Date:From;
	b=TF1DP++M4/2pO98Ye2CjnAUyuL7OOEHdB4LWNxXivg8doSTZIQL66kjWoDTszixUt
	 e49BxQO4cDoY1812Owa23I04dF8amdmfJE/naqOg1CADXn85G0s9M6nUsNpe6q3eRZ
	 Icp7fKWXubcsRIiOrymATBKRkybrCQpMEZnKG/EB81pFqjiHjl3t3iFbyAnk2ljdGB
	 tQvHx8hOHE8nuCbXVpTEvJYJaQnfWX1bCZAwRl9ePmpLqNimi2WlkX9Hu7Titd5zQP
	 ZSO3yOfGKdxDBf8V8Lv6PDSMgShAb236sQNB2XNe36x8DxmSGr7rE0lQk693m0oNJb
	 EqtiEsvMP/9Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA52ECD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121139368.14756.8797259464225343457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102aa39eb926468e57bbe219288a25b87510f4765066cf8f77f7ba78bcca027d
Date: Thu, 11 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781211393
