Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721C11EA6F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720383983; cv=none; b=C1Alcl79y5cTBkBLnilCzmeEHmZdaORkapJ9UJi0tCqAkFBv8QqgEeZBnDmmGZiHH2fS9HZ6SMPUXmgYLliYW3zmj+a+W4Xf+AMiLJFI1aKDTU1JgEWNWBI9QO6diGkgbvhLMjkbppcaTxWy5coiHvfNpAiome69sJ/nlJfU/CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720383983; c=relaxed/simple;
	bh=e5HnFE+z0P5pFZAEXs/vKK1EY1I5cYu8AOMDhW6ppMQ=;
	h=To:Subject:From:Message-Id:Date; b=tH2p8kNx0qP1SaPnKn6YjW5ypqbkJ0zQMd5yMJDfZIIFUmqav7ckvHrVEVplpgrcjtEP8YaE78PGOK9wGsSEafrkF/QqaIlGrRgM1K/No9EzI2a2yRTLxNSuHjss1Ri5MH73xGTRU2x8przmxT98mXQoQIqmtUnxafeSd4X3G10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2A45Fp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2A45Fp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD82EC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720383982;
	bh=e5HnFE+z0P5pFZAEXs/vKK1EY1I5cYu8AOMDhW6ppMQ=;
	h=To:Subject:From:Date:From;
	b=p2A45Fp8VfL/D0Hd0xGOG28SW/0d7/7HsPCRWTZKpBThS6D5KfGEQiCixlt2Xy/x9
	 adoQbEZ1iB5iEEEk2UXbrOY4tq5GTQ1uD/Z5mNIwadQ5j1H9QVcuSlLXkLtlvVE6yp
	 56FmGt7rBxgV/OCxnL59J4HkKA2+tgz7jxaW5+HylQjdq/F6IbB8KiEXbswi/oY5/G
	 ZQflUorTJMy8ydL9iJbyA5Iqc002WeVyXo77SDYgex4kPGfbE8/tG9GTq6RJfMzler
	 mmoHMqkZjNo2wF6vI2NgaWr4nf42vznXGWV7g9pjZoX4hz9FRZBvc4r9tbJ0A6sc71
	 gzow4lsLV3FTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA197C3DA41
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038398279.27463.3466674968448389045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4de8fce6b09bb56bf4463474e7da696e22c4dce32de29e03e60b3e251d3eea6
Date: Sun, 07 Jul 2024 20:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720383982
