Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABD3223702
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771662294; cv=none; b=MGIurk9Zv/i9bviEliDRlsqq8bR0yPd3bbTcgjLdll2a4UcKPps1LKRvntPsh44xaWh4g0+V0NEWQd4awWlaUQ+UCWDI4iqQwGs5CTbnfstrZIgG3r20Pc2ppIVIxnjUGV9ZCFgNJ+vD3UrHcLlI9Dk0rOvZPERorfkAFth53j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771662294; c=relaxed/simple;
	bh=uaFEtdDNmzurJDRyAgEaPpM5vqtESOHxRQwy3z0shE8=;
	h=To:Subject:From:Message-Id:Date; b=TrPUHnhzakYaB7jK6QI+7x/gxNLhi2Z5JE3Gze6VgU1hrBmxL7gj24gL73Lq4z0E3AAzEwzYoy6XAzngQW7LRoQ/UW6GO8BeQVpg6aWck2Lp6nnuOxbUgWQp2+Rt3N++RK/M6Dwmc7iz6ug3XXi2DMFR0SN+r5sMyRyo55Ulz8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpqxHtuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpqxHtuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BD1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771662293;
	bh=uaFEtdDNmzurJDRyAgEaPpM5vqtESOHxRQwy3z0shE8=;
	h=To:Subject:From:Date:From;
	b=YpqxHtuPBQdY1AZd8FZ6R2dybiq4pr06kbuqgGdT+pMAcuFlq9opAfIhS33Rga/cf
	 rJtEeGw5spzBuseB+wGvVeHHOGDAVdnuct1euXQX+glwldpYw5aFPYrMP1nGW5jd0N
	 KmNVR77u/PeAvRdAHJZw6ldzd9L5YU96KUorTsL1gsTcfOLokiCkejCHHqXQGGC9Pi
	 UuE578SGmIBp2Eot5A7kBKddDlp8UXBROSprBFjTpSoHs+C7d8nokH0gqWPvDvOZDn
	 SPG0NTXqsMScsvSIWnIG5N7VgO1pVKqyCU4OGy6b4lRERrMmg8YRg10N9r08VzV5BU
	 SeVAdft/nl6pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF1C61DD3
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166229358.29782.12692396895318042142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d2be0b013a26c5c40713bba87d77b6ac6810073a8bed45721b8ad2e4291a46
Date: Sat, 21 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771662293
