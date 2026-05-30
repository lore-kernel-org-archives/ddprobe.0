Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139C334C9AF
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780159414; cv=none; b=OJdZo6csGsxCjZADYNfQK16ncoYnTtpvBb5WK3V3ihwkEX9DcXtelyhxVH38DQetn/xW5ZXPNxQaoOn3f4bS1fYt8EewIouNTtar2Ofk2WPGZYE+BRPJCzdIyvfzQSB4SYBJfWDpoNNaaGJBjTK2WBzO7hPPAacuMsZ7zjexhNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780159414; c=relaxed/simple;
	bh=3ZaBRomc5h+F6HiL8TtZaBHQqNpR90j6hOYkB4xIs20=;
	h=To:Subject:From:Message-Id:Date; b=El8IfcDNUDV3FHPmshHU/tmv0rA0+ljEAlyK0uZeVEhxDgr7Q/aAmpKkdW6eE55bMAdA1xc2Urs19MIJ8ozHHMpBcIIR1BoMJodfvTKTXhbej355JZnQwIMNMEkHWrU9PQiSY0b/TzhUgn6k8w46X1w3x+fp2dSn6PHlVcizGIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z13q3eCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z13q3eCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB244C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780159413;
	bh=3ZaBRomc5h+F6HiL8TtZaBHQqNpR90j6hOYkB4xIs20=;
	h=To:Subject:From:Date:From;
	b=Z13q3eCiwh+8E2SPJpYaEQtSKTTJZL++IrZCpB4xExf85f+aHUwQ+1n2hIg7q8LTC
	 4yUG+V/3kLJ+3YPgQo0qTo0rwAgY3C8RbDqUgE5n4ICkZpbQjjr98fHX/onrvrYSmP
	 CxROoCX0kqWfWAJ4c+qKPPUXQNX7uBFVMVbDCq4o8ngofwhs4neND4kmmfl2l+64p/
	 RAeypJcxAkwJw90b5YBOgeIFMKC/um/lxVL6yboaRxqz6qwacTIBEIMOWoAl2kwMfX
	 M6MWmRaLShK4d7/QCiSwEew7rRe+dqMkhlNMEuLZ+K1socaNYutXJoBM6Qs47DMf1Z
	 6WTU7RmVgZBTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2455CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015941371.18140.12133295165466845888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1455db6bfa0bf8bf9a0fad4db8d172a453b287c63d3eb6f0eb43d4270987323b
Date: Sat, 30 May 2026 16:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780159413
