Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203B32BE7C3
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762987794; cv=none; b=MI2JTG8bS+CSu/1adfkgVFC9Ns6K4uAfOjgCWV5IxQoQT8YXI2o8SXLhlsb+7cwdA+T3wbDyK5dr7LbKclObdjojP5+jig3/sTElWIqLiszQevq/ANb/kZIc2t+RpOHoUWUUzxEC3VmrT74pXb1BF+/aEdBBVQJO8wE7D6tr/+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762987794; c=relaxed/simple;
	bh=jLZsoMwKPFsn5DS3Or6HAUWukEkWTd3qBp4LW+UKvsY=;
	h=To:Subject:From:Message-Id:Date; b=hKHmeMyOIBOYITm35jvMWqRK8b8El2y0TH0+5AB4QHLapptxHtsNfQJ6U8BJ7YNviTO0BRwfthRD9f9J6K9FuZwPHDTpF7Cew0WOGGTlmxnkQFufm94SO5ZkS8vMbAboLqCU9g4ZbR6JCsj8id3AWy57RTCnzGYqoA/uaHMPieo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYjGv4qW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYjGv4qW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4524C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762987793;
	bh=jLZsoMwKPFsn5DS3Or6HAUWukEkWTd3qBp4LW+UKvsY=;
	h=To:Subject:From:Date:From;
	b=oYjGv4qWywJeJKMHmVZD4uec+ZxR1FwvpmlF2yGmdS/umEkrWrwf2Im7HWAypTxi9
	 4SK3srZ1sWeJKaD/6i0WQMR4vQvkNt3CARcSzKjy1kAZp6DHip+yJwzfDBOsoTVr44
	 ozdoAMcRtLYdk7NamqCiUGq7WZFqgtAls989xJMlxl7OBYl7Aw65sP3JfyE1o70k2Y
	 teuEpgBLW45i98xnJIst6JNIvWXbime1jo6S61uQiedLtbqtOpFLVMe0ZyAtvXVY71
	 IIitjVWXLMPEFfPk9FEhZgur46YK6QBYVYBnMDupl67b7LhgvoAzo62iWXCF2FYmrr
	 xzmtomPUXRCwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93051CD4F20
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298779358.375.8370857636739295323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9801473ce5da9eb79731ebb9a7282483109ef80a79eaa4535f0faf663833e05b
Date: Wed, 12 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762987793
