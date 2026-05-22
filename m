Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393A13C09EB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779456754; cv=none; b=UqzK0geYNOTMk6Wiq5gNHHe9dqDXPuSsH5n0gaA1vDIqWFjFgFxnneKVf0HjhOCOidWqiR+8DIGnvxPkX1QRIxbITk+txcIRIZniPjbn8Zy+dJ9Ck0mT5T+MExjx+vpoZbUynG1QMbeP3/4dNTqG+uAt/qzPexPzQozrx0PMwNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779456754; c=relaxed/simple;
	bh=9Yn5RLCkuo0KzZKYAN7xo5bKpb7icRqPru8npQbomuk=;
	h=To:Subject:From:Message-Id:Date; b=eTE921TSZQ6zVM8Gu9bPHxqQvQtD0Q9+xjOuo+ZzkJRabuAZmJUUgCMn4Uo6e2VF1u+B5gwWWdl7lTtn2+m8ZeXVKtOJtq9j7mm/E5IrwjmHVqlBQFpLS2yTtKZ8F2tyOQaM/MekgFc0n/dhvJl9/sqPhJnpeOvQ6MWKBAesoQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNdC69Ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNdC69Ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3B9C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779456753;
	bh=9Yn5RLCkuo0KzZKYAN7xo5bKpb7icRqPru8npQbomuk=;
	h=To:Subject:From:Date:From;
	b=oNdC69Ae6awrG+i3WQ5kCIK3va9B051O8Bez1im/cXovgjDijRFlW8vpyMPkMHwCw
	 d3rQAVxT0+iOQieqNrKlTr81h6xmirs8zoaUQaCVgTi8OGHMkPto8JOIKRPrh0XwvG
	 GoESbIBsnwSVqDjd/Bf+bzqlooSHoyCFjYLZpuKFFVnibpZy4mSJddelHSC9oU53kR
	 CHKOf7nIfJwXRsQmlzMhazh34kmWheOHvauWa2GI16rmYhmjx1NyMC1PSQu4HRRGiT
	 Qp5LcMOIeEqyspQ5EYpKmQJzoC3xkIGBQN5IAz6e6cdLmDqTSgaEcIcWM3sZI59F6U
	 eoTIFRk7xs/2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C77CD5BB1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945675368.30278.9053338717337448912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c91b8b01cade3fc6789dd5fda376a2813d77a849d52716c7ab2bb673faef1a7
Date: Fri, 22 May 2026 13:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779456753
