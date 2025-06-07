Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4C61367
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749288594; cv=none; b=hdLec1oBFsgAkgSqMM664pHwHwu/NbQ+fC9O9MfQHf0ii6repmBIqbmC97o0Jq54eMDR47jwyYHEiDZW1F75Er5Uf4iddrFqilJ6+3EaQ95CBSyR79g4rCT7nx+DMVtT63NDAanbYii91h5eY5cZOtHh1YEygejO83h8CrkWLHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749288594; c=relaxed/simple;
	bh=bZkPmoUiqeR+A8ZH8wrmQT8iUGKDNa9Oo78lKnfA80o=;
	h=To:Subject:From:Message-Id:Date; b=A9P4RPijpC3Qqb/whUN2qewJoWAMQC8mWb72GInoopuZISL84TrdZ3j749+7foqmnyFDOLMhEhyDs/JqAzhrJh5wY54843DmLFIDyWt/KkP+xO02UDyr9S04JhBpgIeeRKw14dmch3NRk4IEqEzEr9sjkuc+eiumqE/u8ECNlZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oo830kW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oo830kW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C85C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749288593;
	bh=bZkPmoUiqeR+A8ZH8wrmQT8iUGKDNa9Oo78lKnfA80o=;
	h=To:Subject:From:Date:From;
	b=oo830kW/xKQsXGBnz1v1d9rYV1ar36D0dZkmPNQ585SCZHIsox/oH7/vRlY6FVk+V
	 Er3b9Qo3TtE88RwzUwSf+3NmRLGcd+hg03BzJh3LGuiD9ph9LRbdoJR9+3AGjhfyrX
	 New0G95JWsuPjqRtNtLV/mYvfyqVYn8eUAHWbsQ+tjfkhRFhV2kBQ5+75JcpkuKIcn
	 8ZTIs/Zof8heyiacpHlFqDyK2Vu7oeJtSkDNiPFQaCPCB3QBVTlJ1lGuX6FRXDVLOo
	 qPUO8X/xnhdgbWZdZpL5FTtXjHysFv0xr3ogZaaA1rtkTH5nDDORiNhpkFHx3ZdErM
	 gWaTVpJxeJPTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9410DC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928859357.3039.4781219275714930757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee8e69778057d4077e39adb19c76dc71cee7d61b910a60a2ba9a6e65d26c837
Date: Sat, 07 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749288593
