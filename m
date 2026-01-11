Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F370BF9D9
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768104234; cv=none; b=HAb8IYun8UgnrRuOIbFd4jl/evdYx1RWhHFk+a0i1150pLQGI/D/zKxykQ8KesLytyf2e/JHH2wGxdZ3eTq+ylnpPNM4G7Q5EJNnHUDJGRUC4CGtABZ0/6XwyUYi21ruh1lq7J8tHz/ArjN5lXhTBsE6NkrKpL+mmbJG4nFKOHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768104234; c=relaxed/simple;
	bh=NvhQmE9gE6YueTQ7lpkl6Yw8M62PqY/OvACmuySpdPk=;
	h=To:Subject:From:Message-Id:Date; b=lVwD2qBATxwS5y4p6b0vdJvRJjStfndDgidadhwaXDXJYaYfWf41+ZjtDT7GPXTRE+VweTVMkfT3Zzobygw2ObZfvdTfXiENoUt225RhNAaC3RaGu2Cegz4JCiLSawbt7lYyrb2p32X/H6mryrD4BBnA/MfW8gdnKpmbWsaGEuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDRn4N48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDRn4N48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E24C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768104233;
	bh=NvhQmE9gE6YueTQ7lpkl6Yw8M62PqY/OvACmuySpdPk=;
	h=To:Subject:From:Date:From;
	b=DDRn4N489T138UFF2dZYpqJOxcQcDPsUcUxtCdl07wf55ZDONGYdr6wAwRs3tVh5x
	 UcVFm8lZqDFZUTaCGgh+CjvA+C1kgjykJlqTT6SG/FkNzOImP3eeudaMrFOoEJQO9E
	 OjC2MGmzVAPSfz9Av41FclEJEHLtjHsNNb2P/mlZy7rYrEkrEy/nIg1RWaTHNATrZt
	 i7C86WKuDoW/4XxxWLWo7V73Y9NuLs7r3jLCAMfRJ5bKIigKB08kOVUz4UkqhXVqN0
	 yvSv/gFpH84Cnlj/jYw1qYy+WoSL83llUo6A0sDIiCMWSlB0f+SlElDXjr/KxA9PYH
	 ZwMfB7/I47Ymg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921E6D25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810423357.1037.4170685811843708957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09d8fe7c1b60feec324a98ec6ad18c8f5f9cd6a2ee2d9f6dbbe1eedded46524
Date: Sun, 11 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768104233
