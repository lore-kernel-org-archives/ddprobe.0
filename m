Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8862459DD
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784990434; cv=none; b=ZfhKgvbs7XHe9hG8FdGNXgdUaZy3bvLHPzSIAxbAix6jpIgVMqpsySnm3ol9mf8mlCG0K6gw2Hl16k80qvWRlrmvwEiG8mJS6irtl6AZylFJ316b41eXnhEBEs5nHKhuFRLvnAsu7kJeZxPe08dMmmJF7gTzbroxqdjanjjhyy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784990434; c=relaxed/simple;
	bh=bgaHAOIBPhEuMHTAGt57gFhmkkrG88lZSaUYkUcs3bA=;
	h=To:Subject:From:Message-Id:Date; b=t9izBjWybZlc1pfU/psQEX2aoboVdw3WH1nOewNK8GKeqaUhFgnBzK8myymeMF2kIvRQcIVP+pgjRPgNtkQ3lQwc9NoS+YpGa3FEaIlGiHEcBSyJOrI+KkpxzJVformEqNXCnI9tlbCYXkCwvbbGrni05DRlzR2zIDKoLeJMilY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPOyOZ9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPOyOZ9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EE6C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784990433;
	bh=bgaHAOIBPhEuMHTAGt57gFhmkkrG88lZSaUYkUcs3bA=;
	h=To:Subject:From:Date:From;
	b=oPOyOZ9/cM7bFZCdx7Ms+UrtwRRu0x1ma6eWumpUkjBAFXHFqP/sOkqZ0WQuPaWmL
	 mD4KzxZye5hGKyEwxJXj+NOExC2nwzaKUHVcCqEvEkK5aM7qcIiD88hJEFKyR9/T5x
	 R/H+lQF1G26bgRVhmzUjGoCeA5/25xgZYO7PsVgBiJMT8l1Oatb4j3iqsUAG5JOVRw
	 SAuwworq6PmdbUEUiTp8kEmdGa/eivKwrqUK25BxaxYDzpU3/WyYEPUr8eY9DEQLad
	 RbLL837D0aQ8tvqlUN0w+w6ZhPYP3aHoJiB10rKCVAGYBulJxp7CBMMUiejEM0jlhL
	 FlMCqOYLy9gYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDE7C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499043368.6999.17518221858491042312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bc6091bfe5a1b044390bcfb4b15f81ed963598bcd7a1160993898bc9bb1059
Date: Sat, 25 Jul 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784990433
