Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F732B9A2
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733049954; cv=none; b=jgECvE4KLwOUOJsqgKKq/7HjXMWM37MH8OKN7DeOhnaJTyxJueWqYEXSDzrElnemUJR8umIHYqAnVQm3k8zdLNi3hbaV2T2KxgEVIJNFzJxrkgIbkszSBrI5OtjcudjH9bXiTFP1HBF69elpC2/iTH/1kQC9Ks0ATIZyBVlvHRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733049954; c=relaxed/simple;
	bh=yRepD8R7g8VAeicFlFsHVP4vOb+soI2Q6UUaqInPNuk=;
	h=To:Subject:From:Message-Id:Date; b=BRfID13WNyHj8n9tNQ/o+xmlNi+NVQ3JXJYAKEa1k0m/l3o5XiW6P+kAJ6cEdy5p1/+r8y63JZZJO5b5fe0cubDpz+MsXc3w54kfvKYVvi6bONoceKlYjwmnCHy1zkWsLXRLQXzAOahqwlL6VaMsHdK9EDnx0uMzjAJYGNhtF24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVeIL9la; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVeIL9la"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13EBC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733049953;
	bh=yRepD8R7g8VAeicFlFsHVP4vOb+soI2Q6UUaqInPNuk=;
	h=To:Subject:From:Date:From;
	b=BVeIL9laRQ4G7ey3lSsfNjw2jtLY76jHaC2a2WBiBjGthUXy72wjR6/grAWYDonX5
	 GKNx7yHgQVf8wvkFfMzom2caRNcFpTrQZ4D+eOnm+PiLH3COOz6G0e9fAzCT4ovttt
	 rDfmS0iP0c1LOpDJO++xXSGhuYpjdfqKLtyt7twVWwQpWgzINr0DILZaPm58Y9czMw
	 7f+ALvfKMWauKxFfaDbgyfnFGwMsrtDk7uG9oMDlCOJI8KirTLvpt8NzozClxBGVPj
	 vp1L91cd0AV48/b/hKVN8/iyxfOTnK9Kb63p1wiHLsP9zDIS2kkggvQ2hx/Mqn+82Q
	 jNVI04iSTYGRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E061D49762
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173304995360.11097.10170680961722466521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4bcf89c98c14a0872f87d947b3d85ec5227ee87e99e0c24b082b786ff7260ef
Date: Sun, 01 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733049953
