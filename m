Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A195D73B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706009897; cv=none; b=MeyeB1rUsPl20vuVJlwanlcHVNFyVveyjFXdScd3JeQM2GyFMHqBUmv7UoeGRfXhVQRxZe3uzzta+1ImOnfYBobv8lk3YlQGc44ihgtG/93DrY6YwWQ8qymVKYC2bqcxIcjzzu/tGEaKLi/NGtrh8b32rt+2cgPEvYMX+R1zB+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706009897; c=relaxed/simple;
	bh=apjds+MpojFqMdYdWZdS99KxEHzaW1M1OD1Z3Im51pE=;
	h=To:Subject:From:Message-Id:Date; b=BrC9qdnsL6pGAmxbXPuxMrquVLZGTcW0m6XiEz7K1aaz2O/5A7n6fm/p7Wm+nl26P427knYBfCf5nixSA3GGZhuhG1ucv05szqCSMuoQqoCebUov62i098qzA7OVG/OwdlLdVbB/rC8dyA6dH8XFr/BbLnoct37s0lJmi512/s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWmQgKId; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWmQgKId"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 778A0C433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706009896;
	bh=apjds+MpojFqMdYdWZdS99KxEHzaW1M1OD1Z3Im51pE=;
	h=To:Subject:From:Date:From;
	b=kWmQgKId82wvp6QTASw3WcBPbboCTQEFlnpV4NBeJl0oWvMOg4qXI3FHSFPUUF2RI
	 6FZfA0XZtgn4C0xdCGnLszcE/5mT0R6YXoXTfuqRqECZXpvoLOxFc0nRqXCYuXZ7lj
	 UC6XTGn5piLXgVaMSWv4QgwIKmRx1t5EHYdoE+u7Tee9+o7FaTIg023V80qP5VnY9A
	 9+RGuawoSMMuAn05ZWNXhOF+oS7MbyzX6kZGnOvxVZ3J+Olhzxxgq05OhRz/nZqDN8
	 h1+l75DXlv0LjFL1d7QsiGEZGSL5jQBFxKp5yHZnzSUVsxHlhUkRUTjgIHMmpoDmb1
	 LMVAgdCedjk5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B32AC47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170600989636.22560.2527677179972529383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d7106fc8680e024b8935bb05a7d1404948a45d8f6c41e6bef55463c4cb0293
Date: Tue, 23 Jan 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706009896
