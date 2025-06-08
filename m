Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA478BFF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749407394; cv=none; b=DF1GMKQpgcelX6wpV4Yw3hIvnDZk4fJKqXUz8wvgzekEXSikjoNWpD4oF75T4JviCpgkOobkE9nwJiSttQorUXZSB86j4UrJJk3peaowV5tsF7XvFllLtHhzizlsLFV6CjV/ZRYlqkzufs51k4VlR04K5Qt0QZx9pOKZ1kAbRI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749407394; c=relaxed/simple;
	bh=qeMzYPt8Bk6gjYqowNQuvVa15dPapxAkPBKD9xxxeIk=;
	h=To:Subject:From:Message-Id:Date; b=uNUNgWl7oP/hc0Qm8Pd0RsipAThq/7Io33GwuwdlJE4tSGvA1qU/ZaAxJpC1fQkqFTAAwVm2V5j7keIlGb9m7QuH97puX9P2IpkwEdymC6Q4hm4lQKH5DCgc5j7FbqM9v1cUFkUws19uo5ZItncssaP7ROrnsebJ8JpZLprkmUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQUko4Te; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQUko4Te"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F0CC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749407393;
	bh=qeMzYPt8Bk6gjYqowNQuvVa15dPapxAkPBKD9xxxeIk=;
	h=To:Subject:From:Date:From;
	b=vQUko4Te7cZD4XbGt78lkvZ39jMWKn8twvj2WcdICYCcyLpl99POLu/hf4+yQHT6Z
	 OR/myYHu0T7V51BvA4AFuigTG6KPRRLLVKOvQUqlJ930PaXoLjOCpt3Rcul8NrR/TU
	 vSX9bkrBpL4j7jhLL9rrTNhpAplGuhZKnYpOQ5pe1Ah0LgeoOkOAFllFxdGyucUSDK
	 iLAbpHOjhqbpVnR4rEziz9YdxQXAo2+isb74z3iadzeoRjH4JWynJNnY+kmWCtJrGI
	 1DpHrQbm5Gyu0tVLFFINmmLXB9pJ9anfWenold9/LZzZtJDs569OwV9zPzyAQGAAw6
	 BRPmH6oDGlyuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E9CC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940739357.12944.3740540238180646240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f930b02e5a1cbda838413aaa0ecc883c67a2b1aa3e2b438415e63c6ae1622f24
Date: Sun, 08 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749407393
