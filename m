Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3634D8C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931754; cv=none; b=bheNAIAKfuHY46b78LANfHGgZZ3C8M7NlfgrDXEHnMb+t6z29hXu8+KUsZPv2c3CxnTfTXvhG05O5EaDA2EHf1OQ/zJVbMLCUYovstCU6obvsRZETq2E0K8Hnj1NAc5FNlJ7Kf8atlgFO6fUCwYJkOhi3KDTK7uG+jBZWHX/kkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931754; c=relaxed/simple;
	bh=KlUP0v4rjgFP+qHtkAkb0OUa4O0MVE+0PS9MEvYwsZw=;
	h=To:Subject:From:Message-Id:Date; b=hN3DJZv7WpO0PxYq5nseUarXRLY0uMxEDePxj0hX2MpeD3hIX7EdUHpdsAyO/6w2UbP+gXOFW+WC+30eoldqR/ZgyjisLwDeCD02k3Jv62Rk7ItKnkTQz6Uyfs+6SgB5PMUCQ6VJ8d7s2/JQslrpCCpmxQgQBDDsK0zcrSVqdl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6Z2wKLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6Z2wKLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FD9C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732931753;
	bh=KlUP0v4rjgFP+qHtkAkb0OUa4O0MVE+0PS9MEvYwsZw=;
	h=To:Subject:From:Date:From;
	b=i6Z2wKLVtF2CChgbLFeumYeZcWpc7WlMXb1Ew/T5uLp4UKJ5iWKmUQwMgqtQ8jdnh
	 ktVTl2QFBtWzdIHVl9fTO2OAiBCX9zdCIFECOoPd2TFpZftmfnX8IOw8ztruk7o+dB
	 29NbyxbWKHwk5h8RiGAKnodn/SjfDKAyJ/n4c9vjJ3KhvTPNASqEdGnI1Mp51j54JL
	 HtjpbPcxWSAoXANXeC840TaKWGYbUgJ94ecXE/11WsqZKNEL3WZLxfibppkCwc1Nxc
	 +eNePqdUJy0HkjzUpVJK3yN5sS7MLex6jZQFdhmmcQZXP5kYkYfVozauAc5Zb3lBXq
	 Z7d0hVxh/Y+Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945D4D735E4
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173293175359.8911.10056288719628176135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9baf7b705fc746a2c7a66f2f2f3967dd4da90aad792f922615461eaac744bf24
Date: Sat, 30 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732931753
