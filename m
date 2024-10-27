Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD28C2C182
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730027153; cv=none; b=FgX7Akv9Ur+JMAgIxPZTFAddBhMqR+e5OTiJuZSQEbXWlRSjZnWqRFq8p7CQWgi78isqXvehN3la9X1TM+gBi07v156jAHiLNJxzL6zJ7shyzE0uUmLJgAh7StgsV35oDI7GKRFdfzcerb86R1G/LT6FZr6aLMcLMAq7aTi3OPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730027153; c=relaxed/simple;
	bh=c4lml332viN1Nwymco2e7CL4tz2aCA58Tbz3DWLRcms=;
	h=To:Subject:From:Message-Id:Date; b=sHv7Q4yVIwgb5Fjmf6wGan8ltd6kMJmVg5zESlEB6bPdPiLM8ZCAo4l6aiu40ucfAiB5gi8YO1Zlnoo6FKKAT672YRgkmbBtc4Zsjh2bgU08Usss9m/uUldOO4g0mL7WtTEobYzm1WpyPnipNiyBIjYqTtFr+r+VlLmnVlNwQmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhrIUHk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhrIUHk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2629C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730027153;
	bh=c4lml332viN1Nwymco2e7CL4tz2aCA58Tbz3DWLRcms=;
	h=To:Subject:From:Date:From;
	b=uhrIUHk6UVwdQUU+xsJPUHaq16XFsH6lghNI2i8zdX7/P6gumOz79Q1bS9WfPeFk0
	 9q8SRquROQiJLap2JFkEeie49mxuuT0ljmgGqbyawlKtJ88AN2+0d5YqofnThCgJQ2
	 uiAFLm5OqwJo9uQXrAdDfgHZ34S8p9Ar+NEeTlol/7f1ix9F40eHxRx/LlLcmH/nQJ
	 L5OLPAbQ1Qw6Wvg5wNhdmEVvylnhmp+PqDdp0+spFTJWDodGl+2KwI0lQuRJ9cu8T5
	 Jbkw8S+tgQaOvgWuiQeBVigCA8QRe3/begnpf4KQfZC6Kz/3wjlBPwqbCNmQOzp/0P
	 WmrFt6MEiRCxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A240D10C1B
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173002715361.16268.9644309125587704547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e343e088db047d43a7976585e527281487301a853b0a33598ec4026810d9f884
Date: Sun, 27 Oct 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730027153
