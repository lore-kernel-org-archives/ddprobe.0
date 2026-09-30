Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B86C24293C
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790731234; cv=none; b=GGFReT28ccBjx3uYAk8S1jnPxj6JaJ9nAsmu5qObYA8vZEvdrlSqvhqP3lAeAiDX8gLl4XPFgsRY0H60kCytFJOiTKvEvzEKWzn53okzugtvIP1vKfPS0MJBZsnjRStVhW2TIJfF3cgUcqSDCTNMReXpF0DxNdT3x1Y/h/pBQdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790731234; c=relaxed/simple;
	bh=X2LC4tusEnI6ReL0+ku4dSRXeGz4GRQBZW2iGwOqZo4=;
	h=To:Subject:From:Message-Id:Date; b=tdh/W5CjknLDEsPQyIIaPgwSs5JmnpPciXp+F0g0ijf7ZKoYkUa4m0voJOGQA/qZHzSak8lqq74tkp0mh1HC/8gY9jGrNafGhcoYagi8JoB95yiE+fYDjRY5IMGdBuIhqTXOh9P0/Pi9Ue4K8sICn7IxvSUcaejSriTEOl37TR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBixvW9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBixvW9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF54FC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790731233;
	bh=X2LC4tusEnI6ReL0+ku4dSRXeGz4GRQBZW2iGwOqZo4=;
	h=To:Subject:From:Date:From;
	b=nBixvW9uTGuyFXZiGUDKypmOpeettlXz3Omy9ctMp7ONxknAlu2u4/ldNhD61jCtx
	 MlhMw3ENbV65iPtFevqd2bqx8AwnPVXiLcloxAWVfJyO3hE8WmqqfzDLlsTrmeyyTS
	 9ETJ6T4X2lrGqNtklwoSLwhSUQ4C+sHjxuRdGeXabzSyxaelF0Jt7HAfjJlJZx9eoJ
	 KX1AETSNP8t1T3rKuBAr3F/YRKVesxALvooizxywKkqHqRoMUluhY9aMjiSKnhZhie
	 hiBoOEq5EOq9X+BYkuG0J2KT5zX6Z6cWrSH5fhx7qafdOK82vdQZ4XOPqjC2c0e7v5
	 hUo2Nz+9hDrEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA10CCA5FAD
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073123368.28544.10349404969986661111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e95467fd1fbbd6450b1d076adcaddd7f040dbc447fdc8a74ae95a60f8dae8d0
Date: Wed, 30 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790731233
