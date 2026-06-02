Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B0B3B38B7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780389274; cv=none; b=EBWgLxq47I0FjR2bc/0+53zuW8VGuQxB4dO2zsoIVWJ/9g3UEe/GbToXYx/NNJX45YER9s3fof6Tel4zB9k+7BOPTbNKugk8lQg8uPoU9YydCs4X2wwiB9Ghb3IZOTXDdt7u4P1Cnk27R4GA3FvMWEmWAZPFbip9BFwNCHWlyK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780389274; c=relaxed/simple;
	bh=6N4cdyBStvwitM4mViHkMzq3uGH4aIzDBH5jgYZm9Ow=;
	h=To:Subject:From:Message-Id:Date; b=gB6XC7r/qktciWrj9rFsAn4kmk6wU9zIiJssIJdIniXU/I6DhNpVeDgTzGd19cQRN7RBBVCwxpcPBCyszbwxiEA2AIXdeXH+KvpUsvkksjWsYN5UKngdDx1KqISXsb87lGsCSZbM48r9rSOBl9HmJvI7kvE32yrjPlmvQfP+cgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJmTk4ue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJmTk4ue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3719C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780389273;
	bh=6N4cdyBStvwitM4mViHkMzq3uGH4aIzDBH5jgYZm9Ow=;
	h=To:Subject:From:Date:From;
	b=iJmTk4uexO5GrsxButJMw2jGMHjF+Jm8/cs4JAHDxwCggaToeOjNXQOSmZdhvrr1w
	 c2ICjjnTY8+7aHjR9W4WzWEsh6JMYzco1jo4Ke4KZ9X1Yp4hDz+axzz/EINjJ9d+55
	 qbWktkAorOEtuFdAq1mUMfc8MJkGg5bvc9QC+/fkZOLOVvlpEYQPh/4Xx9f2zyvqDp
	 7M7In6Ux1jqUZ2I2/FYULj2/nW7Law0IvgfOLQXhNdHX2arWGHQuL4mtmpmoDguLXD
	 uXzQ/NBbWRjKAcQYeMPkNB2nebJj4h0WjQ7F1FF55zjJ7fNqRvy+kYWC/QnHyHZSWG
	 +KTUGkO1JYKsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8286C5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038927368.7294.7696678379882554085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923ffd8de115a7fcd3ef026bf37a46cfbde1fc7ca297a73e401ebb604d14bd3e
Date: Tue, 02 Jun 2026 08:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780389273
