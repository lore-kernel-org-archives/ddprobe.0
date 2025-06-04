Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F401420DD
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749011395; cv=none; b=hHwyAY9umBkITsHJqErZ+YlWLBmmcV4ohvKGLI5du90hFPeQXJ1WHcokYkdSUFN5moIEfwX/bNHYTKjAYV61bxnnYobGMDo9TbSpyIr1qTgHT39IGtYUKIA8mzvjO1YqJ7S5qj72gI98PUvccCAQjatDEvu/wdtkzvLzyGuyTwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749011395; c=relaxed/simple;
	bh=kPPmznL7HrGFhp98yQI5W106uMLnXmBquWzFeIUCAAA=;
	h=To:Subject:From:Message-Id:Date; b=dNnSj2p/VcRPBJvQEI0Hm/km6PswF/DQLO45k8iV235oH3DcKEaq9jteYtDkRAvQ30Ava9ZIfcQpiLVey8I0C4BBDAwWQ/9wZ+IqSHg8OrDS98+cG1Y42P4VJ7BM7GPPgiUvDpCqXl5yTflvnib5kfKJIjkhwMamZU07vhAI4zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5EtGEP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5EtGEP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C83C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749011393;
	bh=kPPmznL7HrGFhp98yQI5W106uMLnXmBquWzFeIUCAAA=;
	h=To:Subject:From:Date:From;
	b=u5EtGEP4354XVJoQp0PRhEw84pq9suX+g1ZSRZ7SRLnTfb3MR6OhKklElQuQFZ7HN
	 bVZ52ye7thyxbuOoQLjImxH4WCwWvY6f6blXryrtxr7OEvOzGRuyaeFjuteXGL/w0r
	 g8YaVyfsSg+7jz0m9SYOFkbGhib9LKpTmjYUticFxJ8rNp11LRcbH9zaD1hY0ZsWde
	 L/vWliBxZNxy+fVwR7C7w9YtyJjoIzTHx7xNK6PJ1wiNPNXMtFPnXlDQm8KZ/+DbbA
	 QomDNV9InNmb04aopXAV2RKqwaQKAVgOVCg8EOFYYA5WgI92yORDuIVbh7fOw/2tLK
	 gDy2yo7LirPRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93693C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901139359.21929.8653810088714622194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b6253ae231a1af7dbfb7184bc6029739aa53e9cbc5ed373eb05456113969a3
Date: Wed, 04 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749011393
