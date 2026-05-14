Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4222F2AEF5
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778743834; cv=none; b=ofjMFcJ0nHC7i6SlbWOIgwQCYMa0qmiy+1Hh9cfgNcIF0yZOHpkzVgHQ7HtvBdf5WXeC14isfR8YAdDWXK8GiMrAXNUdPmWGjKyy5dvQbl2wINb0oxaGO7JE/zM02eHqmo+SqKXFb2p335IaESgS8FPNK+8BxUigGBgvEE9C6/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778743834; c=relaxed/simple;
	bh=dQ6sHGC5k3UnU/W1viGZPpn1rBlfvaBNakbdqjDLe2E=;
	h=To:Subject:From:Message-Id:Date; b=fe6O8Jm27K/Wwg4oc9jCPYFGPhxfVI6fbGeQP5XQpBU/xitWT7WQ1lF657xhq1G5ploqQN/xzUNcKanElHzYRQigoRurzcbJJr3ukRWeiIKCrLFoeaPpxH3VKlNc8d63WAG5QtFc1s1u/jgVabM8vTYhF2/ZjURZjd8N3QrC5HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpuRjV3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpuRjV3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD4BC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778743833;
	bh=dQ6sHGC5k3UnU/W1viGZPpn1rBlfvaBNakbdqjDLe2E=;
	h=To:Subject:From:Date:From;
	b=gpuRjV3ISjctfjGW/hBiTP/fTjZUlovgSOQX47BEtvdblQ9bmphEJpnUgDo+l7xNa
	 XTH0qVI1K/98MhQ16pbQSIwBTrxiqbUS4KOn6zD17LKJ0giUxlhKVreYNyzch6GKNo
	 XGvx9C8inyBLo0UKYGfx52U2BjP2UKr5GdCPLHvTw9d7He53/+uyeL1E3UbU0yEkOB
	 uZkdn4w4nC5Z1CJl/RnylOutdfqgZxr/hcxwajeTwb0jNJgf2wRnfLtPsvzBsr62EH
	 0jA3Sn62ys3j6q4n0QyokNMHqtXa2K8kmgIb9coGqJY6dlvelA43EWv7G1jaxspRsi
	 /K14SSFwv1nNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CE6CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874383368.3397.10132313927848605925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c0eddf124b18048522c0c867997c224cf2b37b71ddffbab5d95ad8205e3f1c
Date: Thu, 14 May 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778743833
