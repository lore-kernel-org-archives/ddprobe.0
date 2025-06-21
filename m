Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DAB1EA6F
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750470594; cv=none; b=eF1A7orCLE5raMSYpIZogNMhoEVNA3+60FQI2t3tcbu04A7kwH8bum4zn9r8bYYy93n0ZSWaxypLeKlBQstzQvFWp29RgWjfhIttJZj+yEmfs3PD7ESs/7NPQk296ZfRGbKJBNdha1hRQPBFsBUATAk8L+vr/bDk+LYoTJpvy+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750470594; c=relaxed/simple;
	bh=bDq2IrRz4/almswyrTI58BDqruTlhbdzyGcrWigO6/U=;
	h=To:Subject:From:Message-Id:Date; b=cX77zIWS1Pfd7xIoyQ19hKUIGHTAiTqz+oq106vqZBJdmjdHFfzvu48YZLJIKH+N3ASjCLKBAulAiy1xboJC0f/hCzpddmWfFkYzQMrtixny4p3D5ch82q5r5bVlHZD20WtpNC7+hRqB0BfD3MdP2OcF3GmxHU2ds6HDIcuvF5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJHpV3bN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJHpV3bN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07F6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750470593;
	bh=bDq2IrRz4/almswyrTI58BDqruTlhbdzyGcrWigO6/U=;
	h=To:Subject:From:Date:From;
	b=KJHpV3bN2y0nMZ+z07PHBkCXBB69t3hHra1V+6tUxuhYsGfUv3V1SK6svQtK37wFP
	 qmDuvHaOnOOV95j3Hf1zS3pxt+1UVczWMe8JEjU/GQ6ZgWoIwFYeoQrUkuI6wJPqs1
	 6jn6aOHXtt+GmhobMryU/59OCEIAVJhTsKJMmWp6HU7i/DCTp/052WCKwMohe3ydm0
	 qaaTEIL6apWD+uwGiXR4int2nteMzsLUda3UfBSAbfNlzu7wt0X2QGh93XxauFXJu0
	 9kwAupspDgx0Y7Umt1P+XEh9thbKmOUpBQukDNVG/Y43PqlUNqmZdyznY5o+KYMG9H
	 sdDMmDyBUwylg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF61C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047059357.23608.2044395620667851798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db00f804ceabfa6f4c38ac6daa3349870872466293728a1a5767edddb12d55b9
Date: Sat, 21 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750470593
