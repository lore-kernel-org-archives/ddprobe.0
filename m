Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2992BAF4
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735149954; cv=none; b=CBl+s858GRnDfvBtGSB9ppDXTgIljKOTACX36bIMt+KnPeFYbVxFFNqRaEZw1EzR0QbxxK9lKOeoUjTTSZavlvka+UaPjEHm5i5pvV3xued6XMg0qqPslGMAkbjNpZfntGk1xBKoSgnV4qEQkcGoPXMuY+HCe5HhvZrEost031Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735149954; c=relaxed/simple;
	bh=f+6wblcaffVThrUTa8Yl020IaGK9jpQzQY/XqnBP17U=;
	h=To:Subject:From:Message-Id:Date; b=t0fgamHB60xXK49dBnZKAIkwdkjBC1ERtgiTQII4X7vXTegaM1TQEjJwMQmyDIHL3QhK2lf5UFt+5Uj382GpQachwzSNBA9lpd/LNYzXr+fxy8rHGaY0QFas8Ii/70Yd2FbBsxaCQtqEYxIlWgAGJU/56CGRLBW9PdS+EPHddKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuwysbwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuwysbwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C84C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735149953;
	bh=f+6wblcaffVThrUTa8Yl020IaGK9jpQzQY/XqnBP17U=;
	h=To:Subject:From:Date:From;
	b=LuwysbwKgjLmPFlqtf2tZnKpYY995Z4i8JiuecvuaQ8ec8QhT1EHOO8DUX4/RM4hU
	 vFIvcsA3VaYMDmM2Opq5SI64eiRko+gxROML6r0Zc8HzR6IpHhbrytWb8WwOP7cCIZ
	 t2lwGWPc/54ItM9JcnHeihsadRlucQZ/HW4dfmMPYBvxMTjDVFtD/3vW5XmehShvj9
	 zxWYqJWCPtc4PxBJo8ebiV80Fg28isPbd2owdn0byXcjs6SQDcj/aGTfa6TPaXFoO9
	 /N7D7Lgl6/cI8p7LYVLQSN1xrVaqy0h4IjGUN2d35RVhT+7S+GCyYAY+ZetvHUsNpu
	 dFAZrG+pBI22A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967A2E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173514995358.8391.13108068885026743492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbda058a6c5eb3154be469218101d038b2455c9c00f650b20a84d652ab1b3d4
Date: Wed, 25 Dec 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735149953
