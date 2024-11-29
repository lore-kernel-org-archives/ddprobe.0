Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60EC14A60F
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732906553; cv=none; b=Oy4QECCpApwq64flnD9+AibudUnG4lenCVjebsfT0lafmmswIW5zcOIub6iGX0hYAA0HV7ooNOR/slVOci02gtojv6YTdfMCI9mO40hs+LX9maVFxgOCqU0EABw4nJZ1Sufl9TYQpz1hHQARsAiZZP+RwkVz4MXU9OU4k5gTyEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732906553; c=relaxed/simple;
	bh=5Jbn/8F/Ro2GgXcg0JzjV9okr0G1VeO9AKX/mQpQTds=;
	h=To:Subject:From:Message-Id:Date; b=JzRsyr3XT4enMkeJTYm7zyF3K8e1Py5xCKyE0QRSiKFtwj4BvRK0EVC5zvz9gRoWTGKMzg85W8nKfP8AYLBLvrqcCYut4LBWbt5p9FlbWoIA8gEwr5KGvEV5o2sZiWMSS6b7MSGP1K3R654caJhmwO0YW56NDIZuNLdqrHA5zGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxHVZnLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxHVZnLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C7EC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732906553;
	bh=5Jbn/8F/Ro2GgXcg0JzjV9okr0G1VeO9AKX/mQpQTds=;
	h=To:Subject:From:Date:From;
	b=WxHVZnLkY29uZ6nG+UcBvRP0PJDXWprTSdicHXESy3JlwqBWfRdxIDLH5hzSF4EvT
	 +0PbvXsuNL+EIjrpaabNpy2NkSmhIMhpEaq9N0ZHVrdx/cvVlpEGq7nUQbKD5qpYJj
	 t901FyBFOSDDE3t/2gmbAr8tHefOenEJ3fKmqet7icQ/3xR7kZxXTZ9tPQ1gaOqH65
	 p13wyHLhfFD/ZJsDOvlWlcx7jLXqizJXccrf2wKy0gOsRitEoPKmE39QIzcWcnoHYJ
	 kJMcY9oIksClgIa+iXakDxnltEraXP4SlEVC4fOeoa3KemnE3pbdKiHloEAMav46Hk
	 coDmfjIsjtrOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964CAD729FA
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173290655359.22173.6433681323577169794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb3fe86621d8e452f85852dafde482fef64325fca04e9f88389e3189b343284
Date: Fri, 29 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732906553
