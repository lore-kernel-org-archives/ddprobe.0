Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7008F4A
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752398994; cv=none; b=hq9jdmBF/fmEmG7oKLbegIHuHrfqBnbPmWww+4BHmNgt+Fb+OEczukRS+rPnK/SLi49yovKKGAVF9C3rogIZYRF+X8m3f9zRIMQNZ2issw781c3wBTeo/CyHw0PBMT0w+vAB3iEY0SnQKOnWEUv3t66fO8tMlX2DJ8oUJW5MkRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752398994; c=relaxed/simple;
	bh=lym8Il9NZ6WtQDSHHey/d/G69XiOACSuycTGxKNXIjQ=;
	h=To:Subject:From:Message-Id:Date; b=Y9b05RwujcUoJHacx5ZTXSn+ce1Ashmra+6KF+V8UJYpqbQW6nj+omAVfi0plD0ofBHiVBzV1ZOy1wKVY2fIqDz7hbbwUvWlhUHlBzGGfwwkWNr+9PDCPK5qPG2eDZoAM0OKLWjewWMvjVEwKB19TOwt+M6Bpl3CMqy5xzLMaq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/zhT4Vk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/zhT4Vk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A06C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752398993;
	bh=lym8Il9NZ6WtQDSHHey/d/G69XiOACSuycTGxKNXIjQ=;
	h=To:Subject:From:Date:From;
	b=G/zhT4Vkw9UaWxpJT8l13BdcePSZaZrMlFZlv7vHg9hIjBbA9oeX+DCmnmkvS8uHO
	 T5AM2UmiP4fo2Iken2ALs9j7IhvklK0886tqeYGibxKeOKJ0v3yIbsKs2oIUgYirxq
	 g4g0pSD9bG0dLqknCpuQMvhNaFiaLXJmNJZLxNu9alC2/0IzTrsDqvC4mhbwtOk2pt
	 hP8b153mvagNEcswNi/c3lMGID3+rTaVnnMfmQtdTD4bKljA5EJJu+VoFghhGDgbLV
	 eXHFFJ9e/O7qpSTl2SEcYt2EAgdWOFo2Fz1yamMpOAqwZQKpo1GJL3r2YQFQTEKIdP
	 pIj3vj7orUlkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC59C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239899358.29994.5715314354240217334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2925a8da44316319018581b8b3f9f8192b3b8bca19b6cdc6780cd29194658b
Date: Sun, 13 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752398993
