Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE0E3242AD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769175834; cv=none; b=DlR+d0K2vnw5SDOGRCHs9++cLMfiuo92lQ1+R7sJRNhPAzs3GlxFrPlAK+XoA0HT6g/4E4EZB97+BgAbIZeQGuFB5a9rseZh/c2gb88hUjpNZsqiyYDp0AUCsmMA8EyjeDAE/qN6ilq5pDCng8dNRx8A7u4TPtO1p9GUh+R5iLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769175834; c=relaxed/simple;
	bh=3W1xMmJHDXo8tbcrhOjpTj6/EG3P+PhS2HLXgZknOts=;
	h=To:Subject:From:Message-Id:Date; b=mNPAc3PrWf0/xQvBc5qVtPT4FxC4efBsO+mrFLYgKJ6Fx+OH0wY/pURPJTHcfpmi3t+pe1Ew9C+EN4TOesER6vqUkCC53qrE2Hd1HfVaSe1boaKd/kLv4XXWYB2wEk+niE8G6DTddwg2vvVwcWWTj7ePft7uDLLhAQQgsKAFhsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qay0zpkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qay0zpkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB01C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769175833;
	bh=3W1xMmJHDXo8tbcrhOjpTj6/EG3P+PhS2HLXgZknOts=;
	h=To:Subject:From:Date:From;
	b=Qay0zpkWRt3lObo+FNwe8C7+zwVkzd/unhkpxrZuASaXV3S9FxnNAa1FlzZeZ2KXS
	 frVXZzj6NZZRKd2DSECcuVA5bOoUmbH6PYk2pc2ac92IojYgLRiTIfYtfeNiOTjJGg
	 4Di36WJj/Cdty+JHsNqzWFbFkZpSO5BWgno+UyO7d3QUov1jK7GX8JbqZyenqyk8wr
	 xWoi+pj4D1CmHJ29h/h+BXmzekZRw7tWSArXNsu/07URF0GSsm6m1xH221CfMmcb15
	 Ek+Zee72hYk6BVSAgNNspAd/uCRsWTkB0qyRAZMwT1e3VKtXlJAi5gwI1j6WnwNAE8
	 smUKxIPJVC4Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2C0D74ED7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917583363.27703.7793194872203429319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3539dad3d398bb20236fd1c8b27eb520db2a25f53b43acea2d6de115682aeb01
Date: Fri, 23 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769175833
