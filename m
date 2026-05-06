Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3797C3F20F6
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778071054; cv=none; b=Ftshmjfr6GjtRIwoZgK4kPTT7Zpv1G+QJEKd+MmHpiFT0Esw+wA75Je6QuFCjOLPtGkhiKTz74Jw1w8EjRkh3cYN3/XqvyyqMA49+fablNZMWd8uI96r2VbcXcQPMt2Ou6X7e0SvJBnscRgjDuPEhY4vgrXiU7M56w/9VRB9ucA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778071054; c=relaxed/simple;
	bh=SJ6i4xxTgMkzkpCwFbxZTzRJs8jh6CV6kEC/t1/n87c=;
	h=To:Subject:From:Message-Id:Date; b=niuUmPZ2qlF814oCGs06hqRrbPheRMSk88BLVQTjIRl0+NwGxYAgqisFt1ign2IfnsIte4jnbDhDw/N3Ei3jTR6UO0u7nqxkPpLQ+G7srHzsCipWjHLio/YLy9FpYaUNCpExugXR1jIdebzdLWf1rtzZC/da8HmEL8Cm+445frY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDelTw7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDelTw7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D3FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778071053;
	bh=SJ6i4xxTgMkzkpCwFbxZTzRJs8jh6CV6kEC/t1/n87c=;
	h=To:Subject:From:Date:From;
	b=cDelTw7gW5uTua+lJOGchz9VbGNsRIkG3Dc8qPvnd/PO4+3gKtVwvcdfwG0SCxDJm
	 S/fl2n2yqaPJUY1l+2zXGDBxwuu2RJNaSdS4M2Ds+i4RVaCewJOFEibr+IeUen9GcI
	 5ZFGE7kZWf5tU5mLPqXS2R/CoLOxs/lrqzpH6LSNtBSvV5UtsEyZtygVPW9mvX2aab
	 BR78RVEJdqYNNx5t5lxZbcNOrv934I773jKkKNoxY1hm6oZTr3YF42w16G+6MTxc4C
	 hSp7qrDQXyqey2ntUYzelY1d9cmoEXHx9UFYVay5N1XQ+3UPs6o+t/iqF/Dc56V+oM
	 KIT1j8y6Hz9dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9DDCD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807105368.26850.16220890348023803383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd928121f4877795944aab6f6f598fc916eb57032ba735a53b150cba8118b34
Date: Wed, 06 May 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778071053
