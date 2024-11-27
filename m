Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CDB1FCD1E
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732718154; cv=none; b=DkHfb124Kdm0RQJzWKpuQtjkEZK2+12PNZSIAEJ6OqNrUKnX4RZGiQg+8TBgomrvRmqauAtnbHwXExJSdyvgRfQ5PfCoEodNeEeEujsNjgQlSt6KlmOyGNS5N4GQubdqSgZyo3Z7EMLNUACGgQBB+xMDCzXoGXyjNZSabXDV+3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732718154; c=relaxed/simple;
	bh=8hPAxOaWqp/2iObxQ2X6wtEt5SSsNzVGFBHM/wbh82Q=;
	h=To:Subject:From:Message-Id:Date; b=F0dSlupUvXk3QREOE9gSzD8g/we9wN8EEMqZH/k3lznYd8y0AZ8hgV5Ycl6/2Zm6BSC5TF1iGvvGJWiPlRAyr/q7BTZOy06VXFDhwhoC5AUOYQDY2Nnusfs1GdRdynO4hyO1tlgBg2oLlRhMU4u4q9Q0dU7xN2hPIFDbertd+wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gh0j8WwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gh0j8WwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0825C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732718153;
	bh=8hPAxOaWqp/2iObxQ2X6wtEt5SSsNzVGFBHM/wbh82Q=;
	h=To:Subject:From:Date:From;
	b=Gh0j8WwNJ8YVAX8/CCwntxk8MOj9BFDOrwuceAZdaIxmOif9ZS9BZNVKWGb9QGHDB
	 8elFxyD/mmDYyRBZhscSnqXxob2zp6gBEC3oZZpPfya/qMD28BKlesdIl1hA3oTNq0
	 riBPfKcslFKbIlyJUbth8Hzt5UjUfN9EIDhWkHBf0GMigrlaCsXAyeJEI2bQW22iaj
	 BVeN3xaiCOOtvYa6QLleie3GQZcd2pZnmeegPG0i5+oZaoWV9PgYRlEYIRyaGSOelA
	 92FbAXkEZrUNVbesyfGnyev9GCsgKQ+cDQQfPTLcVg69511Ki2w6Y8Cq6mcBhJfWQ6
	 SOI0sNqIx/9nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2F3D6ACE0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271815363.8017.9460643394177628452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79ac3585b43964c9eadc5c669518cf2698c424c0eeef518dc41149f038e1aef
Date: Wed, 27 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732718153
