Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183153E47B
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898294; cv=none; b=HIDoC8VCTJK0cKVuQmAYbH92i0AQsMlmHB5EMIIWyeOeovZ7QEf02X8oLLujvqsh4sgHfnmitYRb+abG3K1FjxNwyIzVyBpNYPhtAaULhRYKEJq20Yso1UpSbFyl835nb4zg6Q+JVqRfIfBD2XCuwjNDPiRB/uTF8w7oVo5M9V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898294; c=relaxed/simple;
	bh=qO0VlG9NScMqDEt86akSJoz01O2WCZAmKdAvLQMV1Gk=;
	h=To:Subject:From:Message-Id:Date; b=jU3R4RLjTgfuvIxzM5ulHOKKg/ewqkOfFK8Kv08J29MGexBjebPZlkH14GrVRJljgYGRojcAYu1fw0L27uHN8olXzqsPe6onQxLfV1FBbHnOWbrl0cokorX1F0hotg3wDJk+cVDiaHURUdT56J55xo2MH4EglhGsMY9BKcB1nDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBZ0rOlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBZ0rOlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFB2C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772898293;
	bh=qO0VlG9NScMqDEt86akSJoz01O2WCZAmKdAvLQMV1Gk=;
	h=To:Subject:From:Date:From;
	b=nBZ0rOlB/ao3Qw6IbxQx21d+E5zkiKmGP6odJOrQytStbFYxoZEBiCR7zp7hw2gQ6
	 IS53SLt8DUCG4HsdPBNqXfNX83iHHsOX2Fz4OVgtRTLq+Uhg1zZvtrEkVDtMkL+sv9
	 6qBtoUwvKZNe7BeyIUSj3xyrjsEY5YWCSOdItRQzKrm7sf5E/cDEggziRF/4JOb+xm
	 24isqfqTzb8JbcIV2Jp3kdqDaw4k9JGbO0B3dc9pE4fQrZcr7p6ulcx1MGEx55JcAu
	 xPwyry+Dy9r8LjFHWDnkNiSKxplOy2EE1FB+QX5iAgo8ry7f2aY3//MNtBUw4xaQKf
	 nGuY8McmCXu6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DE4F513F1
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289829359.4528.6496760719615342327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2005a3b13a406f511cdbfc0f86e09e194ca527db86e14fc6dcd16532c9b6f691
Date: Sat, 07 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772898293
