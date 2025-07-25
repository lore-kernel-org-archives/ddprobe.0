Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D819184E
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753418994; cv=none; b=cL4A/AI3ximfoAaiEGbrSs68Me2hhKY/cNT0iaRNd4T/qNM9M6EmetOTZZBp/WkwYBALBa++aIt9/IAWCCS2q7HT5BSiPv24UFCKLubXryYqIFAQpzdu7L/9uCXyj2AczSVSU8m6poWuVQ2ZyX9maN3n3XQdWtetrEvguz+2qUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753418994; c=relaxed/simple;
	bh=5SjY9OP0IAava0nV0foM0uuO/2YxqkHhU+7UXVtbNWA=;
	h=To:Subject:From:Message-Id:Date; b=mP96Vj4ZmZQ6cY2yM9rBQCnQPW/syXIgDWVRvgpR/95umh+/RU0oFI80gf4jQOpj7bLJ4rh991KOtk4JwlLPSjv1TiEFNrWExCyp6WDEnnl0yBppsil1FblvosUwYm73IY4vCI0pWHDsaI4iAtMbP5gZpWnvcV769Pqz3PfgjW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTmVgnZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTmVgnZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F23AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753418993;
	bh=5SjY9OP0IAava0nV0foM0uuO/2YxqkHhU+7UXVtbNWA=;
	h=To:Subject:From:Date:From;
	b=XTmVgnZY6EYkvESEBORR6cYZOGuJqX5NI+MT+b8Z7S8hg3mdGgmoPMCJs06BMNsI7
	 mcEu8OusjAsN9YPbU8MoLUIdrB2qGeAWiHqhmIuion2mTJcScd4W7M73vAZ+REuHyx
	 62apz/7+X704NBa+N4UimVNkR81KJVi086g8c/uF+vae/ESt//qXPj2nfesAs+alUd
	 FFgAeGKri0QZEzym6itMwPhvVR5Ljb8t1QoFdvN1za/pksXE2lFTW3fk8xod4qUPf8
	 +4Lkaueo5i/rivbEMt1fHJBGr3jJ3vqW0dARnS5tzh1WODDgPpxvPZPUxrFw5cy/Np
	 o0g64uACNya8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC0C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341899357.29710.16834876113752060616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318482e87a555dac9e75226d93da77d194d2bf06e12f527f3376ca3b42b3a0c2
Date: Fri, 25 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753418993
