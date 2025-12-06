Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2664548CFC
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765060374; cv=none; b=BqnkDwXWj4qlYrt7mQkxBmjXNWQwrToLoEtDKcuKTmDvweuSlMFiuuEyHqqHEL7MJ6mwMaWICclHIYhoDHv69Cdhk5d8XNsAzp3O47b6sXyKi7CM5fjWB1mfyiQndJk8YlmoSuyX5JvGDRdvwsQX+HrPTw+3VfhtnTr5lkRRMEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765060374; c=relaxed/simple;
	bh=aNyP7qgg9A9ftkMjSFSfV1zvsq772v+es3z1Ts6EeWM=;
	h=To:Subject:From:Message-Id:Date; b=HLK0xabig+803/RDTlbY6muNUgHr9o01g4RAroTSMzD5rto/ZJaACnopGM4kQ9pphwea6c3MQnrbwg433jgBGYHu4StHVRtKZZZRga0K2TJH2S4CBsBNqS72IvJ28WNbIz0xE2k+81jGRkvde8nqeroM71NU+eouMcLWF6qgZ1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eF28uI2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eF28uI2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC01C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765060373;
	bh=aNyP7qgg9A9ftkMjSFSfV1zvsq772v+es3z1Ts6EeWM=;
	h=To:Subject:From:Date:From;
	b=eF28uI2Ohyr/RHt4EedLGY5igDMxXu8RG1HPSOb9qo456NrlZwqdva4A6rPro3O1W
	 joFH/g/4G/syegcPG9xc2PmFuussq5nUhimyOcZqVRc5/HOUJcPMFwgbU4y5kavDxY
	 8RCtOWavJGQHlG1tCfPeMOoG922Y8Uog+B+o1Pm/3zEx5sRHwe3UOCihpkrKme7pOl
	 /n3rwRAWud/B/7+PWt547bXYOwfhgHLQW2E/o6OeJHg1x1QDkwJEJSH8VIgRdSQ5eP
	 uHTvgkbXPSFeegROfDzkLOY7GelfWi1v/MoKAyTDb4g3amS6pWhPZEPfi7dNOy8a0N
	 X0aNF91QSvb6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A89D3B7E5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506037360.23345.13660721009217734885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b21fff29f1105544ada93cbd04a3f5ac7e3b9108832faa4cfc74af828df7dad
Date: Sat, 06 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765060373
