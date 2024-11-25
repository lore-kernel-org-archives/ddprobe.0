Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1642AD17
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732523154; cv=none; b=OExev9TOZt+d+jyHDzXVujSDe0GcW5wyhYYtZbgTSYqo9WjZgK+xEQ+6ogzQ8t5aafxAYXLea9MJ/94PwKbrJWC3qws9VFM5vPUtlp8FnWFOsI1yFzx4R4SXdv8/iy/wqokr/3rN6DU7rfqTWTg8DJMG0t1SUBwLyotyZjv+Itk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732523154; c=relaxed/simple;
	bh=3zk+InBgFFRm9gi7AWPB62/zn0Zd9wOlulRwlhZRpA0=;
	h=To:Subject:From:Message-Id:Date; b=OKHH+G4f25EdAxrDWc7M7LLFuJAkiiHrjobVqm5HXLsSVlTDhlubDzO7UQlpNGKFhf9lMdVfYcnJ1HghcTEcRfewScAj2KvAQSTpfnPVkneRAFatZlqASyVx2sCAXrhErA3bG6/o7lwkRsrGOkVx2T7ua1BF0/md0zCwxsHs93Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tluDKq+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tluDKq+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4ADC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732523153;
	bh=3zk+InBgFFRm9gi7AWPB62/zn0Zd9wOlulRwlhZRpA0=;
	h=To:Subject:From:Date:From;
	b=tluDKq+RucSNeWBcJ6FfC2mY9wzZukpG30PhPZDGRLairQNGXDcSg2B75T3wTmrwi
	 hvXn9XOi9rdDrnDliMo3SyJfhZsB+SXTDIfR8d/3k+9lkYG8q4wT/voWlqOz3YSqzY
	 Kmq3Cb8N/8ahvC1P5qs1gFJYjBFrwaUfocVle/dJ9V5uAmj3MZdIvGHtTGr8S6TxPf
	 J+TZ4aW52u39PVtEAY9oITQI6CSKFIHJ9NVAj0yQqqA6+q9pvFf5VR+jtENrnqvbI4
	 Kv4wZ6MJBVRYlaQPkMuoxIbP3TjqRlZt7Z0cQxp86CIPzyFuA4x7eIAZerBsk3hON2
	 M7JErjondJwCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964ABD3B7F0
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173252315360.8791.11329262700772203811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6dab685acf620983e0a2c045eadd1da51dd398375d274865b3abd2a48df8c38
Date: Mon, 25 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732523153
