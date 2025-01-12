Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4173038B
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736651154; cv=none; b=F38eQELN4t2MtAGecBcwERY4v7/aoS5wbzkwdJsC9CbaFpfLGaRXUEbrth7Bo+wnGfO3wTQG3/5CboYs7pcojn3p+EiyV6eJTeVVHyn9d75Wr4P8p8Z1MvhhRiIt3H/PuknXoO4n+PPcw/Oy0W4gkfObl09PdlUwtQJ8orqoXeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736651154; c=relaxed/simple;
	bh=qtbrUR0szKfMMVZ8FHgDmlo80wuX5rSM3RzxFnIXz5s=;
	h=To:Subject:From:Message-Id:Date; b=pA8hvLEvG7fkZhvHQfEJzLJR0SicRQfqOsPd91rJ1kzU6IceZS0IPPIo/wfgbQ8qeh7t+CNQ5xsun1EJZOTPlo/NlTqWcHL6ouTneiLZXWesaLyQzy7Gv5tz9IuoIPWqOCaQGqLrbIUNlepYS9Iwccb9UHHwHNPmwVkWAVSP7cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fp1v53uA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fp1v53uA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA8DC4CEE1
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736651153;
	bh=qtbrUR0szKfMMVZ8FHgDmlo80wuX5rSM3RzxFnIXz5s=;
	h=To:Subject:From:Date:From;
	b=fp1v53uAn/Ks+9rUUY3OzccYbq5HDo0d4FFymAPORjUWjbtTE/+HKE/qSF/PhHMA0
	 Bm8tZCNhVEeSFVuGdnjTqM+1yNKDNFVR61M3SgC16wP5n/C/YoVD8LAzW8i+lvNfe3
	 huvrb9wp/EHp6m4ui10b3T7T86ifDaLXa6Y3/6en1G7KOqVr7uVbnIsEEbD2Th7NiI
	 c+szFzebir0gvh6JRh1y2KIG1eBnO5srO9lzIUT2l+EU5flEjTN24tWU8LavOsHrqL
	 SXXQA7bOmCztLXpKHRSaPSrsmI1JwwNN2DMGWiVhZl5kZWNNYU7pfmsFFgPSC5oYLO
	 eeT3J5GcQj2AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EA9E7719A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173665115358.25393.8222509901453874103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab3a0bc61a627f2ae606a1d6deb501bfe276e7ca4003c3b3aa6f6441eb71d66e
Date: Sun, 12 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736651153
