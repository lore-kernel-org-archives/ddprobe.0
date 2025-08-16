Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D9314E2E2
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755373194; cv=none; b=XsesUdXeoROLoFa3s4DF1mWwFnHc1eBJYYceGJpYKGEF0XgjeJGsdnJktE95VtSt9KQDYfl2ncLI/fpOD6ovjqVDaFhLVdz5Gq/Tj9QFEdjnfcXZ/KW0nnPilzj41TYk8LzYkzDUtQjlIQLxWu5UXot1RGRLQ8YqsbmjCbIDEsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755373194; c=relaxed/simple;
	bh=xrHakkN7elhEz8m2Uzf3G4PoJZvCH6/Two+Zl91Voww=;
	h=To:Subject:From:Message-Id:Date; b=O5HzWpAcKBuC+zp2espIWAtLO2SE9e6g8EOIEad5FI0+qBEwVRQnUZwK8Su2p8kHA7U23HPzsUAln4HfCNHik+Fk1vQ6xaJ+cyKYBORzmqO52EzJeUCaVs+ECRsJXZ+bIpf3zoi+xcZoAJv3UZINvL+Gj6zqJmG8n4mP1PQ3XJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlFK/SRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlFK/SRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21F2C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755373193;
	bh=xrHakkN7elhEz8m2Uzf3G4PoJZvCH6/Two+Zl91Voww=;
	h=To:Subject:From:Date:From;
	b=HlFK/SRV+Jeabcc4ALRsfFvpfGZZJoWXuOUhhTto2sYpjJgcW6pLn6kjIfEllYJxm
	 JeXtFcwlXp1sT+fwly7+EIvww0XMOWUNoQ0KXOdHiF5wgwsDlrjzBbbrFovMR8vx+f
	 bKPRGNIfF3z6U5Z7EyMhoKpjh8JCTOGkL5GMwGr6CuvQZkl6athI+mSBH4H84HMdg7
	 /nwdpto+GVwCPtaiIbo7cvmCvO5blAUDSfmRq9maMeYqN5xkEBhEMGY2V9ht1SBq0N
	 YFWQWwufwV1xJn0xSiI43cVUh3ZREaUYTyxgGE6+UsYYfVjrh667JNKaMy3zXc6yxJ
	 Hrt33GVwjI6zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF6CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537319357.7018.12784629210294363034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee69b178d02e0dc5755e43f6247d3a4223c7b4fb0f45a9ef37ef644cfd9de1e4
Date: Sat, 16 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755373193
