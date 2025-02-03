Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FCA20E70A
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738616154; cv=none; b=PTHiUZykXgm7JceTr8KMTlseax8Yay5z+ncZu4UcIE+J3Lb3JLvAQyoWEjUaOdhN/QfqheaCo+N9WzWzuFIQg51UWaMRyTNb3Kw8JGkum+ZvvmMQ0brlt33735xWhEhRWmdTd6LOA5zgC+/zOs7FCJ2ZTUA3O57yrW9Ir3im4T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738616154; c=relaxed/simple;
	bh=N3lZPBFRqS56bPv+mT75r0HT/0UJu7lwp5LkGAWjKfY=;
	h=To:Subject:From:Message-Id:Date; b=udXmBBxNU6x+bjdb1fjvh8G87n8+NoiteJJJxck6LGb33qRMW8TMsge1ymy6qNXY7NomAWVcGlbf6YmdvyOn7j4ArLUqKNGAyWeHJy3EzBU4Sp30kblRjM5hbD0tRyKKqms+JT6tGJ6HIxWd6rZt76Gtxt9PU1pz+IPWd/H/MKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMqYGA6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMqYGA6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC21C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738616153;
	bh=N3lZPBFRqS56bPv+mT75r0HT/0UJu7lwp5LkGAWjKfY=;
	h=To:Subject:From:Date:From;
	b=LMqYGA6xO8QHmMydyGx17/iyz4CbCA8Go5KoeK2wSrfA0n0p1V2MJWAYWRttVRNyd
	 ywbn5v27ZTPsFp3idST4TQZJFisuU9V5cWtoWrIOCIsiWyKEKSuEt/zlFiVS2adfIj
	 l6B76X7Sn5wLTo7IEWGSZh/JRX4uFRr93q83pIsrc8U6W5kjQbX3F5GBC+zzDKr4QE
	 Ak+k9KfCdyxsDZw4QqHZJbPmox67ud4i8xfFTnS0svJZKld0nSAYoRMzNVnMeenSKD
	 dWATJ68es8uTZ092iQLUIXxe/yfG7weVXUBbdWV7DVcmiYcXKypSMGBXDWYvI246h7
	 a06tZEyTRab3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FA0C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173861615359.11508.6164619899409297503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf4fb0a1e0092e047ea70a0ba2aaa807919d733c7db9256eb2e15540a6efc8d
Date: Mon, 03 Feb 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738616153
