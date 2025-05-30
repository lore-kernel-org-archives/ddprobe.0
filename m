Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE8C15E97
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748615994; cv=none; b=eRPUvhRvrbVh30yRXqukQmleSmcOzTvqI0T3MNwyfZlMNtqEfyHpNknF5989qZnDzUo8KHK0b2xE1zu+2VY8K99Lj4i1ZeSjLnFWkmMPV2j3H3pYHRanKUap2E+7Ta68HNF/s95mdSGOODH8llyXYnOek8EfgPwcqev2loWPE/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748615994; c=relaxed/simple;
	bh=KQYsSpo/WIcXIfdRdm9hcI5A90xx3dQPjlLhKkNpACo=;
	h=To:Subject:From:Message-Id:Date; b=qz1N3zJh8N4czcuvcdVxkOAmAmcltjj4u7GibegKWGE5TXKwQzqwu7Lt0vd3VzJjhSejpdoI3K8TdYUQMHt9lhg28YzOiOOlY9QxOSfihRaVqFSBI2kYRJ1xweTTL1xk6BDoBrTog62YiIrfp9rMr8/FF3Vm30r1BeioAdcwY8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=if4uNCgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="if4uNCgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7A5C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748615993;
	bh=KQYsSpo/WIcXIfdRdm9hcI5A90xx3dQPjlLhKkNpACo=;
	h=To:Subject:From:Date:From;
	b=if4uNCgTXBE6ra0IH+zUrE7K8YzFutV/SdQNaPGYXc4Yz8N/qhXqd+vfx9M4IeR8B
	 juK/6rq8vY90XK9S9YruCQxZtPpoz9hG2xye59eLK2fGFvkpTTUJfKNjlYrwh0ji43
	 qg1/G0clPfMjmsIJqW8yAJeywajDw6h2II/WDSm031vkGjvpD6QY8wgLN+wRS4Tpc+
	 SqHUtPd5hTRzsDhbjEWKGTvkutAIspI4K6HildEYXhv486fpvZ+J5igLgC34BpujqK
	 5ScYzRwWvKwvyiVpth9SRldJsVmc8a0O4Vq9PEQsDbhYaJFq4tHhXaqHdR36AHXjo5
	 BD/sfqolW/SlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F674C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861599357.22087.14376379913232149443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963afc3b8497ae54379db4d1a020d0ea2086dce2ff88fb6bb600c606423d2126
Date: Fri, 30 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748615993
