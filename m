Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD2A379EC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784871034; cv=none; b=YJM0E1b/D5SIyWpPovDe8eQupdLOGPL/TSp3YnYAZS10ZW87mWleZ2N9AY0BfzKyeiIiG3hWrO1FyZne1VKNwETy1w/t1pI/bQwERO3hRVnV/VDrLptAA6GEKTGMvsmfi8R7skgQ2nLH+3uVWc+VflVYc89H7DIC0lqCKNWp+Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784871034; c=relaxed/simple;
	bh=70tsX2KsYZh8VtCQPE/NrWNSLANPGzUEuFZl63Y455o=;
	h=To:Subject:From:Message-Id:Date; b=PBk3CmkPZPXJxX81/5ydQrcwvZJJQejf0T1dcOoM/+8sGJTTFD162B6EQOzpby37yHrPTDAnHU7ZoTrkT7eGxWldiEmdLk0C4XAVyIQIhGgJNiNrlWHw6kR7HmLDmO2J70LM/Z9DrFaBM9sxYoXNCeqi4QA7FyMDjOg7KRupc10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0nQ5qFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0nQ5qFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16C1C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784871033;
	bh=70tsX2KsYZh8VtCQPE/NrWNSLANPGzUEuFZl63Y455o=;
	h=To:Subject:From:Date:From;
	b=n0nQ5qFyiu4fRJ3hVnvTPGqHtPVLs478WiFp6w9gwfT5z4BevTaGjZjqsXAoTaDxM
	 iKECCfccotITrr0H9QuvhXWFLcJcwhKz1H5eAW6wmSuEuiLzIRpDb8vQCJh1BC5Uwi
	 5j/boNqYsTU9lz5c9Sdk/yVcucKmLli4UVvsFrPRvCHitdyqsU3e38wGxyhDmrTt1t
	 y1tLFcobNY1DlW74AQ1gF2H3WF0TpsZ237tiilQaZbRRJf1AyjNBv0aG2TezGUbJ9h
	 sidDgZzt7TXkuC4+psth2XQ4tRPYd2UNSarGrl5pIobfF7SuPQaO/YjjzrymmHTJ0Y
	 IW2oaPNBZLdzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6C5C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487103369.5505.10262825426107775199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70db5b371dd87ac9522ffb83ddcaceddbb891ac6f2b94ed6ff20508f58ce8643
Date: Fri, 24 Jul 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784871033
