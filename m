Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5EE5588E
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 06:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737698754; cv=none; b=Fio/6SWzVXjp/O/AOTfqh17j1pN308AgjQ1LGNtdugwIi23jWoInR0erO4KC7z/7u3FAJj+nFGWnU5Fsw3hH4GXb5ps5q16UiU/s22YMN/KkfB/7rejKRgjxWBa3XTodpSy0rPdrz2R8Ij5K0HcSjGhfumF48LsIJ+WdK2pTD2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737698754; c=relaxed/simple;
	bh=5doReEe10flkgpDNNlVCGE7ZGHKuYi9z1SKV4nzUqvU=;
	h=To:Subject:From:Message-Id:Date; b=Q9eiD1ESyJiyNusaQyhIcgmakYaVHO4yIf4Jc1o3d+LeAKV+olw2AcSYhMs0aTUs2hxhczYG3CgTKXHPOASyDgYTgMVsCLQKPMc+4ntr6dRSwdbg1+pk6jUWl0fx3TFW7IiyEHJhzrRg7xYY9SVQ+KbOL+HtrghUDxMmWFUDJwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6JmuTkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6JmuTkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BFBC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737698753;
	bh=5doReEe10flkgpDNNlVCGE7ZGHKuYi9z1SKV4nzUqvU=;
	h=To:Subject:From:Date:From;
	b=H6JmuTkklxe0CEdQmjphZL+1vednaR5XqGnN9/ZusXMrYlkYJ8FihDQSFRnWMRvcj
	 sUNM7VWAaTi0BJ82MNOiAUpqapEaj3LMvf0k2QVUr+gZyfEMrIlGAPPtEJUXKwaDn7
	 wNndGsjvCzsGGYgDPw0yY8UmLFXGqUUSArpzUzl11RwlVELFNtYB1SyiCAIlbCgLNH
	 Q825xh/ffYxSyVYLT3vedh76ddy5DweHAI1dxGw88oEIgNIWS7/ubIJmYMJQ/Vl3ku
	 OwjTDPpUyVta20qv3ENOL6yo63/UaDdZKwr+zkQhSxiPLvwZsRk6Br4I9Of1PZbJOW
	 SIZVOtkgaaZfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5053C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173769875363.26368.8756995247117082324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2cef7d7e018f504601b8c69e1c38ea2c9811ac4bf0bb6a1b2f6f9df7c13b8ed
Date: Fri, 24 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737698753
