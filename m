Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB2521CC4B
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758344994; cv=none; b=YDY1LOmC/6lntGYDmXsXHGG66IQxfkoouBV/zx4QKZZ/M6zmk//UiKhuzNhSPyjO7TmHOuI3ZQiV6Ob+jQeaeVBpzdj+M4JOXfcDJccV2oWwyqJINe6MvWRWsj3T5d52qw29IaGPac0yzQTAXh42vXANLp0rkHQJBy6pDLcgTf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758344994; c=relaxed/simple;
	bh=0p8PXW3ot/3QjG+0xQWCGCLPNgHmbvRxEhksVpFVKXk=;
	h=To:Subject:From:Message-Id:Date; b=siQ5clnKSIQ1NzPHMHrwZb/807VUJ8yjQqcFqoqf4/g2kgBjBg7fZ4h70wSNKz14K6qt+2OOdWvF7d4i1mng1AHj/oRrWjgapNQcP5w1jE0245ncNplmxeHeEkt6ztPk+xQVDOu7zIQt6E4Sab6Ejn0Mbk21zlLHr1lUAw/LM0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVkjsjgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVkjsjgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8A2C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758344993;
	bh=0p8PXW3ot/3QjG+0xQWCGCLPNgHmbvRxEhksVpFVKXk=;
	h=To:Subject:From:Date:From;
	b=DVkjsjgnVqq9fhgGYQUKYuH9PQ8xX/zS6fKOo+/mX4Ou9N1/6iAStdHhzvQg1PtAS
	 +76tMAK5vn9jGpBb7gBASLCghwC02C0pipyKS7tgpfuix7+VYrSdHKkUI2qiAb9fUN
	 ix72Xk9TOKT5Nfu5t/RMsbGApgEfATy/bogyS4cpo2kejlPDM30xOa4ym3K10PR1Mk
	 33mg0gGntxrybarTjb/mqXvo1KQTLYznQdiLSr+1Q5Xz8kZTWddQ+W4CzQmHeiJjn4
	 2FxXuH5o7xjn+koF26sdHAiI75uiddikiGyG0u7Fy9xiF5TzaVZ7cYOUCQneHldAMF
	 o622GE1Bz2SEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A2CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834499357.25548.10892412316616469635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f501742db4c2315556b7fa531d5639c03a57cd6a0b5cee2cf367e762d8290e
Date: Sat, 20 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758344993
