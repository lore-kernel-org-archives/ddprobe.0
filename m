Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A5717C208
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735068954; cv=none; b=L6fupf34775NWyZAscpYRkYBK7HOBf0bQWJS0bFEAf/NqxcNglSppmbMNOlVcrJUvvj1146z9qaN4Q4lRBP24wEcnyp7goAvurgmMqNgxIGD/hwyRrHV7d5pZqT+IcKCj9uG2GWoDeXdsZ5OJPRGH5fkm1bcIBJsXP8HP0Vasl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735068954; c=relaxed/simple;
	bh=pcOFUNRsKGRbuAGWdUE29p8oa8TuN+9fc83LSVhch5I=;
	h=To:Subject:From:Message-Id:Date; b=tL4Q9I0cymEu8ikD1SA6nGjcbXJXamUEX/Kqx8fsDOCorYVAf9ITAvhUVfhdkSv+V1Lu6zpWmayZ6COu8OTqU95VKKUk9XtJRngaxm5hfRp0QIC6PJ1FWtYbzb2DoNnmupnUWwfrKfGNG116Q15inkhcayrEBALljsFp1h2V2aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbIm2ZJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbIm2ZJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24F9C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735068953;
	bh=pcOFUNRsKGRbuAGWdUE29p8oa8TuN+9fc83LSVhch5I=;
	h=To:Subject:From:Date:From;
	b=XbIm2ZJdGe5YxKFVobHpKX3nwyt4IQtbXjznSohxLAECP9ex9ZRvm+xxKahK3W4y5
	 uLdPV0o+AcailnbTDF2uFJ+dcVW5n1lVfEFEn1/Quu3KeWJcaIJHQ51xXVBVI0+5WN
	 +bW6uavvso0LYPZdnPr2YpgaPvX2uz4Q62/d8w+qwBqtwcurdNQ/hxE1/EOKbcQOyy
	 P9VSgFrPagxC7WWlTinlKBmMzkxd+BlPo/DnHefJ5V5oSvUmM6mMgS+BiEAqy8Yrtk
	 qQHtGnNs1zbTpdTLbglA/M2LfjXH/UoW7hkD5rq8GxCPIx++bAnRxnrHnNEtHvFKSb
	 CyXuBkuVe13Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D8E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173506895358.7875.13688644326963091837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5153f50b4cf3dd46a659d910fc5977f27f5df385007d5f05d8682c2268ec9a3e
Date: Tue, 24 Dec 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735068953
