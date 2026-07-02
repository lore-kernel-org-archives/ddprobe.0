Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3118D31F9B5
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783013314; cv=none; b=Qi4zm5MQfRa83ovbViFokWEbl/0pO5TexcMxDPum9XmvPbZs/RJgsvzi/5JPq3h7GBJH72g4gqBdmKyKuVYm849iQQ9yBWM356b+CPJTpZmb7Z9a2ZJl8B1XlgcMoqEkuTWO7UqY0pDB4bZEsx3tebv0etK43UWm2/Lpj/HbRD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783013314; c=relaxed/simple;
	bh=knH0/+IwwPCDBe3EQj01LbxgMh/9V2KVGQqL6AoOiB0=;
	h=To:Subject:From:Message-Id:Date; b=rZUmKEKPSKvzYqcQkcaaAQLO8Oudh+wJZut3IK6HcLwd+IGAuIVHIrlBFBZLT87zQKVpit11KD/sr2ue8ISas3CBsTpI0xl/iqoMzaoqbz6JeKrHN35Z1e2fot1UqDwysW51B79iYBpBhPhfiK2Qqp+iElQVnCCqp2xAZuAG/Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8jifY9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8jifY9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA194C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783013313;
	bh=knH0/+IwwPCDBe3EQj01LbxgMh/9V2KVGQqL6AoOiB0=;
	h=To:Subject:From:Date:From;
	b=Z8jifY9fg9yL5xOCyKtFtJnSzm987hpR2xCyEc2pbSR086j5M3jAmZQvOx/W90nba
	 GCn+uUq5kwbuOu7eNwR8502Dt4yFJpkRzLdGBbU5akPNPUtxBM8aW+f4IO0jcHqaOJ
	 oKyppLsHYsGj49pT/4ya/WaQP3HkYkwIMChjkX800nmh8cAiZIRExkGGgj3LiYWBlt
	 JQsmXjpyRawLaSN7yq6gsrdgwjNRJuEKxiD3ZqX87rW5YIBcv1bWawa7xSnuQ+EV8M
	 4o+ZXB5k+70T8DkM+jGRJDLv+Vh1F9r0zd+bqzGAbcIyMzYT65QfJGijRWTkpD88AQ
	 eMQ9hWU3h8OOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82BEC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301331368.7646.11592224944553527686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c627030caf6e5371852f0660307e41056a72f0633db20508d1bbd26f9760580
Date: Thu, 02 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783013313
