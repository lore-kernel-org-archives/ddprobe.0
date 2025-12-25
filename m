Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B62E1D5178
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766664834; cv=none; b=Bi04EhI8A3lt/LDWZpmXZOPuFctR5OUrLXo2JIiydHMll3/Wv5xQMeV6KOXjTHeNVuZNsLUKVWdeD5EjcSrdTKCf30Q9QQ5nEjmttaIznxZFoPde2qJ87EnQZNeRrPmDAfVjYTnwYjYZQ5BqZHSxNxI2559A13DMGSS4msn69DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766664834; c=relaxed/simple;
	bh=8IlvoOugBZw40NM2WKH8QxdSMBZePpils2dW0dFkVUY=;
	h=To:Subject:From:Message-Id:Date; b=IJLl+44tNL3QXdsTRG7js0wY6lB38cTm1Yog9W+A9+zN9qA3rzeKEyuo46ajFyKOZ+r859nHsg8200IxsNAVFW7kSm/xzn6OvfgOy4E3wZ1R+Vg8yAdKQ27HNtLvXSspE0Wv/5jw7Na3bPGYoWclvhLX4UWzxjaDvupr+2rmlN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0+iDrZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0+iDrZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F25C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766664833;
	bh=8IlvoOugBZw40NM2WKH8QxdSMBZePpils2dW0dFkVUY=;
	h=To:Subject:From:Date:From;
	b=u0+iDrZc6zQQOGVB97r8RZ4B5rs8JSHV89QDbNhU/v/Po8hBD/t/x7owquw8loMJq
	 AunHVrElg/1pqpT8GwDht54ya/2sbdzlD9HazVd1OzkmskIOoNeQSy9XydW5HGP8GB
	 41xPKJAhkMdgkbi5Hr6HGFRhHyaZ0zl1uvf/QmQpuf2HBeLetZ5cOMGojQ1HB6oR+T
	 oocy4pd1QAKnV/CTmIHX9c28MsPM9DrzBZSZ5fHWb5tv78r28YrZGm9GYIk6e/0WUt
	 j3vPsVErwLkzBiXmh2L7TEQHd11eLa6eLSYnV5EVutNlQQkw4n4p6l7MWKcMpPp2nJ
	 Cj/0vqimlUfEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EB2E7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666483357.31445.1105614382514022322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f17107e4cf56fa588ab5e6bf8dc1fe5901b0d3182501b57b502c4ae5cb2c1a
Date: Thu, 25 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766664833
