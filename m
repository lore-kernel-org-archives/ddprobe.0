Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C69486B85
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790106634; cv=none; b=QxemG5V+yxxABMsHWAj6cotLY0kT1d4YrdQFwvj9mFiI37kGRkw56Gl0DvQ0P9hm8wEZ0tCGNnClOg/fudgsBsbSt1rIow64PI6bBhn8n3OTA6nQ4cHzQ3XMATwyN4GnLLmlo7QPE47HxTPeHnLSE+i000dFGEueRwiQoCPR4+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790106634; c=relaxed/simple;
	bh=cjoILDfzz4ZuBJMS82TtbEsOVJCBRAqSNjFXjZetDEE=;
	h=To:Subject:From:Message-Id:Date; b=OBWUMnJrA87vfrhJgNLsnnPuTw94OCpKpjr2EDRkygWloCPmhDqbGx8wFH66wtGMJNMpEoTmdle7rpb6OLoJkC/ySQNF7vVC77Iy2Mva5f+/Eow5kRqiglMaep2neWjQzarqxwVkbb0N15VOocTTWjVJkLvmrDGL+d0EcyJR8iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oc1tJq9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oc1tJq9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CD1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790106633;
	bh=cjoILDfzz4ZuBJMS82TtbEsOVJCBRAqSNjFXjZetDEE=;
	h=To:Subject:From:Date:From;
	b=oc1tJq9UvD6jSmAlEUuTv9AxT10NVax6uMjTfsyncbFhgMNkC1YaB7Eodd24l1C+C
	 6kE08mED4d/aBruoahxZqZdy6bMyJ6TFfJ9MINAFQ6C6sFz0x0FEdt0/G102XNy+b7
	 pJppapWl13a9k98XSXreE2ZA0s4317NxO7BK2tMCympMxtRXgFai4elmX3/K96+YSD
	 ieFywAsofkSJZY70xJoxoown9LZicHMf6SUQDx3oL8xWmxUYxue9Tu0s9oomQlO/Ob
	 ITV9CiVm66E/KsZOLaUfzTLkO7WSqA9D3PRHx7NSK6VJxJCOlk17jHSjRwomrAmuPE
	 VeK0YvKeTsqTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B154DC98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010663371.28959.1061816558335429619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9861ba3cd081c1fddc25e6d29d68e7d24cea6257ed57921ed9e26a5ed3feb5
Date: Tue, 22 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790106633
