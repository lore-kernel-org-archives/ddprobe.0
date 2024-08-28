Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC6218030
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 04:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724818554; cv=none; b=mA9yoLB2IhCS4cwAN63azzmXJhEPwfDULpA/yzHLfBYrMOEmLHXXIfHqawN6IoYXVnn8AtcFuOvWUV1RarELLBhUeOPoeHl9wAkJe+NSgT5BegdQ6+h4bcZVZfHQMbLKEauFTWbjOwh5QyzohNo6Eywko+EQ1kjGXutTEm8F3rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724818554; c=relaxed/simple;
	bh=m7tSQkj1KRuqrjxyLD8gPRdU33KYs/zdugCcdueIOMY=;
	h=To:Subject:From:Message-Id:Date; b=V+OJiIytSPMfZ6wP/foE//GuXSWXwaZheiXI5FdgBN1c4D5BnSi0BkNBBMg34dXTKpxGxfdK3rvp8R0FIxX45swxeFIMnWb30bviz8KN6BW7Ct8A0BuWFk2eSkLx4Uzu1VaMct+3FOtc6qDgAMHU1IPnNOjjV5bvLoTqxoTfGnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnoSMSRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnoSMSRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA913C4DE02
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724818553;
	bh=m7tSQkj1KRuqrjxyLD8gPRdU33KYs/zdugCcdueIOMY=;
	h=To:Subject:From:Date:From;
	b=rnoSMSRDHWzAbcQXTEoqeXabBaGQ6EiqgON9uyR2kPvfste9ddZZ6o29D+d4LpI47
	 3qpvmdp9BVe8l3n+egRCCTAkv4k/b7SXxfrNZ0G1tbgVo0BgPeuaVyZ75V/ACtwGyR
	 JQfG+WcY2whQ5KAbuKJGrH+LY/c43wzc+Dnqo/3/hy/oL90T5/uwra2voy1UtioV79
	 G5zye2UXe7U1OjQ+XdskqDGtmelgF9Cr2OqNvejqHQ55hdvjXIs4Krb1fj/qx/VLgT
	 VwHDCzgff8n1XAJjBztv4GMbXSG51NA1kOTc9cqttIew4A7eXYqnD4C8gtWAUfNNEL
	 WeZrgXK5h6RUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BB3C5472D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172481855364.7686.4823607906846034445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1df33304b16f6c08b630aea2f4f39f61b5db3d94172fade24ed6df1ca4064bc
Date: Wed, 28 Aug 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724818553
