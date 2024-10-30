Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD68224B46
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730308554; cv=none; b=U5QrRN9G4l6fh3jQDoe4nmCAqm8YsZa3RTZXi9q2VP62/sZbOoKh4Ex62RTHsYCIhtMhtQZxS1zTY3ug9lu2DphHLXgGwuTOZRvtGg+eKppCX7QYBI8x00W4nvG4jatHDs+cF3UDNHdxr+SNH6qOtYHbGspG8xwZOnPnPfyMkmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730308554; c=relaxed/simple;
	bh=ZHGZhUbu4bP8HQAErajHHRPC0KVPF0AOpHhBGfBaVio=;
	h=To:Subject:From:Message-Id:Date; b=bdfKO0ipyfpRE1vJyauHcHh7NRNoxzzlJ7qy2WHneXjmTB/6R5+aUzoM5DU+HFrmpbrtTf8ei+YN/QNjx0q3HSaTccM7Az6g6GRUscYVGoqyP1Kr1DSeVVW/5Brhz9p7N9Idwf6jiwzs8sMirZvy2UgOx9hWZJQxlJlmQoZWy8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmSFe52f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmSFe52f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58F4C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730308553;
	bh=ZHGZhUbu4bP8HQAErajHHRPC0KVPF0AOpHhBGfBaVio=;
	h=To:Subject:From:Date:From;
	b=VmSFe52fiYrnxuGVKkibThSMEPMh8V20ANtdFJXeB9BEwE8kf7ap4eka0SupSboCw
	 RUuEKIqPHh1nFJIkkHAbG822oH1tWskwp5OI8L5og7Ao/L53VZ20tENJCZkge9S9UG
	 CwILhKgW2v3BuLm2bnSz/8UNeGvpj//kHbsq1gp4kmNR+3ZnfLLit+cc4hvZxRx9vO
	 kmKh3gJ2PUFi4n0pPPPVPOWaTO+uDJ38Wo7Ryyj82GxsfpwGQ25z4x5Jh2Gl+IzdNY
	 zFQYKcVMaC8UsI1/c+VJHOK9Px2MxGQ7P+kvRhaIKWqCkePFepSpUoVKd5o28MGge0
	 TWSp0Rl/NgnrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9463DD6B6B7
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173030855359.12753.7320274574918452487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ee0a76b392900a089a3590d631d2064b9e37ba676f5b9b3efe0e90e080f13e
Date: Wed, 30 Oct 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730308553
