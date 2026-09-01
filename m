Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E06D480948
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788280234; cv=none; b=ZEbK5A1mXv5GchX/+FgkaHgvrKiIWlB34+CF/5oNPf4rH/79c56dOoAbd9vk904nnvSgTndo5yEvByhavCqdH+5qLL/Um6Lfacdst8a3tV2obs2b57wwgTlRjfv5YPK1US4yY6S4VebY5+5a5p8r/tRFcAFgap3ITuxk/LIAgfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788280234; c=relaxed/simple;
	bh=g2DxYvK7tSC5kxlvr0pmrl+I+0mzKWw4WAPgK/6VAOs=;
	h=To:Subject:From:Message-Id:Date; b=TBk3boIGvP7HTtNr+BeviRjL5QnCUOM67qCnn61dP/mSbPWjMcFFIhvCnF0EaBah1R0PbtrMImaYOfQTUqZYboOheBkMZZVrgFmQhW/H7iXdY3DalOZPfxOAl4PGNZg1alaz7DZtNkuIYVJB2m+FHEs2slOxg+OE4cfahIeIOoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb9Bq7CX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gb9Bq7CX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD926C2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788280233;
	bh=g2DxYvK7tSC5kxlvr0pmrl+I+0mzKWw4WAPgK/6VAOs=;
	h=To:Subject:From:Date:From;
	b=Gb9Bq7CXKkwxdaXmhDrI/G6x9bjMzkUkNoF4QIQmvwULB9LGYITQWMjST7nRuuoF6
	 z7KbRqsrMuUffP/Z8NPaS05IcMirTUrPJAjhDbWlCBfiJs1OH1kX/pX/p1V+vUEgwN
	 lgMtiIwzIfqZbsPO4MrdtEkmzTXKgzKNaOq6xpIpYhwTaQxUwroHIvpDqJ7IRG0opX
	 MLYgpOWWcduWZfvgMkvDhwZY+Iv4O06ThgsdFZzgwi04t3jjINtfZ6qBnhWZFdkKPJ
	 Iqq7AeJyGYai8SA37LnwKgt1PFYUU9TJGsLwdYw6iAI3qV8SKbN8hsRkt8kjafGB8e
	 +gsIuKRbu7lWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4E1C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828023368.5877.9582538199196331017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2a26b91d4badfbe3fd36266caf3adf4dc67a30bd2432ac3544649ff00aeae8
Date: Tue, 01 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788280233
