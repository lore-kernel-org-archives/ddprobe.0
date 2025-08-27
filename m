Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A87630F943
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756272594; cv=none; b=Gq76bNRp0HXRVBbUTUiPRegq7A0Om3vwy2GYZyuAYw3hdcuHcIKYpn48OiRWbNeyt5GtFJ26odnUhJV11e81LNP12OhyEbfV4M5rH6W4Dt50p41hloW3ixC90pwdfaAMAKbZV67YtZOoOpQDw4wEgYqnC00urMqkSr/F5+fAWHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756272594; c=relaxed/simple;
	bh=z9nMjGcPNWGDIFYKLVOb5k2v0wuxJ7yHUqBV8EXOZeU=;
	h=To:Subject:From:Message-Id:Date; b=I5jcT1CQ52vQ9FVvnjGZ9C7AQhMJcbx4cwcMyHMmQup7OkTR4egDm0vtYwEaJnBxR/8mK4MBOF82gHeJUr5bOK9jVr05FcWZpJ5yKZk6vp9RlDsJNyAi2HUwfqCO2AKGrIAMWnhxji20Z+tUclv3alDb3KkpwkmGVZ0AuKVCjGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snfRIB8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snfRIB8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C906C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756272593;
	bh=z9nMjGcPNWGDIFYKLVOb5k2v0wuxJ7yHUqBV8EXOZeU=;
	h=To:Subject:From:Date:From;
	b=snfRIB8Jm2qwqESsjg+m/pbtcGjqDAcaY1gDVr/u8QicuKD032ipnEit2LqjGiuJn
	 JfKcviEmT5WqcoHt/DOi9qyVs5uOC9YU3cjKSs+vj3ZCUYZOUTe+s3qWRjJC/YLbQg
	 4hzsYEHgJvsVQl7x6DjMt+ZLK+10RpaLZM2I4U3L7K5kTSXAbNrpcfJ4VcLE8xmZa0
	 3hoR+iVlxeisvmzFkqUJy+mvPCWRq+6ewAwkaHAi0FsdAE4okpE72FvQYzD4BIK+rQ
	 kFzBvbgvbrqisw84QTSiDT9ALtwhpVOXRNWYZNFffOl1Drhpp4HslKzQZwdPQqZgH0
	 2Kj3MNX8/te7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFAC8303F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627259357.6857.13656296954608529042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0895fb15b4e6f1ac4fcc61badfe354986a66822a24841e3f2b8bad9f891a9c24
Date: Wed, 27 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756272593
