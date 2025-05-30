Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A79277028
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748640594; cv=none; b=CPmo5no1HphwpDd+QcqwEIZR+cGr/YhLvf9mysH/5Uj54g621uYzl5c86y7EFKXNqq0ovQYyVixRyR2ogo6ZS2zy7Dud1xWZa/+seQuaMHSiAEWt+dxZtB4LxeCWuut6Hs7NFqRykdpel+w4rLMYWi6OUVVbmU7UTHca2tgqX9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748640594; c=relaxed/simple;
	bh=O5hZk9tqC2Oteessz0Uk8vdVMryuz4whWQ0q4GcY4Jk=;
	h=To:Subject:From:Message-Id:Date; b=KZsLzrwhEXhhfXn3dwSiSmYlxz4JbP8dis9bcN/evdsnRV80dLdm/wGTC6lDC7aG103n4V8Ls8GHPXPymZ1w+0QTt1Y0FJ3ePoE1C4yXjN9HeutDDAecI0jH+6hBoHMYTif4SDMUvJrbf5Akgx8YcB2VEP6/iRRiSSgh752k5HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxfpR026; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxfpR026"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2013C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748640593;
	bh=O5hZk9tqC2Oteessz0Uk8vdVMryuz4whWQ0q4GcY4Jk=;
	h=To:Subject:From:Date:From;
	b=WxfpR026dvArGPyj/bofI30AtkG3WJCSnh1Uh+437EExN2JeaCAEjLDuwmNo3qJ48
	 barhoaIjilVucerPqnImplrcS769tOP25U23oC3CPKNQdzHXKn9l04f7fqKEItgz4S
	 9ShrIVQWyYlKg5asz61gIc7goaOihMUUbWuwFcmXlR1bOnR5rL1hJwXmIyaX+SZt6t
	 sGDLT/1d+GuSE7XFLYo4fkiXqqKYhnJosJs++ChQ03EonsQpiA+vtpIn2FB9Mmy7F6
	 4jbLPXGZDOOJR05mG91vwEvzzaKZqhsDgGBLUo8axJ0hYZ/lANoCTDr6ga7jsSE0EI
	 wytmGm7sGaBWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECDBC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864059357.28121.13087673142355968276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb15eb022d596cd70135fc4f7392001152a740bf3073f258686dd4a8fcc0197
Date: Fri, 30 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748640593
