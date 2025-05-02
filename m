Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E9F20E703
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746229794; cv=none; b=mmbUSzBtyyXahA/t1t5Ux6NOWwKwHnbPKqyu7Ry04ukBCBSa0awsCQLbuLbXZ0FVBHdZFDXp1cQ6DdL/ymvtwgxHNCcKWKaqrsnunYiViYCp5YAhZMNh3KeceLS3EdNeAqmBBfxUi6q0KefEVmucBFxqofPg04AL28hbGRPULgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746229794; c=relaxed/simple;
	bh=+ofJTpaTJ78Mipbj+JjAGPBgP2r3xcNt4Cs3BnGffic=;
	h=To:Subject:From:Message-Id:Date; b=VqvqjnrqgFWjT0qn34K2DDGwZ/xcIITtehzvdwFYLDAP8AsN+b2IpWxw8dnDuJszfCM44qYE3vPw+J5nEHUGxTSC//x4qe90GyUlb6D/FDzrbNsAGDtycL1xrOQvS4yloA/IGbzudwCbY/lZMUUutled/pFaPqN3g52kKkstHXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGzmrLW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGzmrLW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D86AC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746229793;
	bh=+ofJTpaTJ78Mipbj+JjAGPBgP2r3xcNt4Cs3BnGffic=;
	h=To:Subject:From:Date:From;
	b=YGzmrLW/8S+5f4TpIoB5t+Bm9Zp7PVj7/hU9K7pgzUi6KAWu7gRXAoNZoE0Hrsbbz
	 hjkSCsCgrjsXWIB3zb+fi3kKGOu+w82g0gW3MJ6QvIaJ6XwbwZYu0kTb+p9SSPG6Ra
	 97O1v+uXLkX8vJI16LQmfAAMGYaIcCEBxT6ooFHtNDi8IUCPteIyqoJzFR5WQRzj44
	 y0CW+vBtz4xhD6jESPk0Y6s8h3LDNyFQhnKKGt+ExuXUfpVqzJgCKCBhSKJmD6ZkE2
	 UteWfoE/co1FI12DzKgxI9s7ial9Hk8szzOqIO3QaVLc71uKfGpNwGtc7XZr6A0s+w
	 ShVwtZh6VTdGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAF0C3ABAD
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622979357.20541.11994190677974768007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9964b097aa9f5f5dfb004eb4c54c4bd8a0a2467e9bfcfed532da3f98ff73f0
Date: Fri, 02 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746229793
