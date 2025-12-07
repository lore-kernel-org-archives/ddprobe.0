Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3D41F7098
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765106574; cv=none; b=qAIX+zhmM9MgF006JAnD4uQdW1QGYBqZ6QtpHo42ohkL3RHHZb2THJknwAiWCfsXN4hehRq6v4rtE9LOH3+4UQZ1LpuF5kWTvTvaZFCgJt/QD5Yox3d/nDybTOGgEHypNvGEnayxQ+xUQ4cBrsT1Rh4i8els9XdZxdwVzLX5rHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765106574; c=relaxed/simple;
	bh=wNEDwmhVhXkgJyVXgkuBgIkJL8pJplltiheH+GOf934=;
	h=To:Subject:From:Message-Id:Date; b=Z2NmD6qOTdQz+LdZa6/JmsvoMNm/Z4LQTbn80z6Nu4s0K9s8k+3B7Ze1mHvq7l1iGgrlcp3LDVcJzKwNZpz72imm42rPkd44OtLNtwQEXZWZcHaYn/5NvuoKiiQBxSAwHqTWkV56VSkRUBv8OCgVOxwcc9vC+DzbF9RZ6Jb2YnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K33Wv+KR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K33Wv+KR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA19CC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765106573;
	bh=wNEDwmhVhXkgJyVXgkuBgIkJL8pJplltiheH+GOf934=;
	h=To:Subject:From:Date:From;
	b=K33Wv+KRAAh+vAKKYT/wSkS0/7uWD74hXIIu1AWgFZ7ab1wsc19L+uLcPN4x6101G
	 UE5HyLQor+hfAh0dY+Ib4FfrnJMrZak9e8xCB9+ly3pZIeYwShFGThTSnP6ffP1hhT
	 MhSNtRUwMlN/7AsX+4eG4wWVEp6t0rfflKp2BB6qqpgPOVTtnFGh919irwHCBEzQZz
	 GFz+/KeBbKvLg8C25CoAg4IQrAsVDq0NFkZLNrWyphCCcY4ENr0KkkOQdrk5DD0Kht
	 DvorZc5tAbWsbnsC+RMlYKK8EXTRJc5njuy0X8IGCPVYfuopgPydNmD6ET1FZQS6Yl
	 bd4vc0A/N61ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C3CD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510657359.5043.15278668395699398613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc646eed9583a26b6d13ce9e99da9affa6eae85b4a7a558ba1e1037b121a94d
Date: Sun, 07 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765106573
