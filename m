Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6609219E
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 07:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721286923; cv=none; b=J2t0SIob57enpOSWarMd0kqx5JyZYFMJtkrZPXfz70cOOHyiUMTGCvtaoj3FYwLGgQhzIT//jpBQadIsKth9gX8wM6EnlhVUSj3s2P0Wky6ohNPCV4M9VTBi+5YvgmHD5sdKpkAFJZSw2D7Hrx1xmET2Nvi4Rq09ygJTI/TbjNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721286923; c=relaxed/simple;
	bh=PHRB9mWxU4gsLLAbdP1hSmnMq9tVgljxc+mJLK8oUEc=;
	h=To:Subject:From:Message-Id:Date; b=VcJ/q7XQC5jTxxeimuobjy6CKXr/TPLw7uOmqbjPZWA1nKWCvshza2bKFehNyXBGcYjr1CHagBLCd6jy6bY5idRkuF9sEKILlR5NQLxtnGi0rZdXb6gDJQztdc89o6RdzpPGErXhgL1IwIjSjT/dKrK+KVkHesTx6iWofqs9nXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnNscLd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnNscLd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFDDBC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 07:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721286922;
	bh=PHRB9mWxU4gsLLAbdP1hSmnMq9tVgljxc+mJLK8oUEc=;
	h=To:Subject:From:Date:From;
	b=VnNscLd1gA69oKfH/Btrh7WcB+/sags1g8logNlLGGqPGycLocR/LILmWecqdxAWQ
	 B90R1fPHRfxUnW0jb8+VxXqIL0+grpomal685B1CTVCofz7BAHcICN8kwKyIrhKyhC
	 rbbI4wFNGPcfE9mmdIXIWtuFokD/DOb4AYziFUsjQ4kaX0TVjaEVz7ggsYsg5ROyM3
	 IpjaRdAVT5S3ubRCWxrqig799aO93bljrAHqlSk7uJ7HzNUaBhzQVgq3trpHnKi78J
	 q2rtg8kigTJ5uFXtwrzUAWsZePNusRxehCHeXPiNIxIXwg5msunh6TOLC3Wd3ElieA
	 VkZQGvXYgx57g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95BAC3DA60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 07:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172128692281.19308.2698096816794147443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a14c9ded7b0d850836cdacb2e910d550af3cf916c9a342167b30aa461a8868
Date: Thu, 18 Jul 2024 07:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721286922
