Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171CE38B
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755589794; cv=none; b=G/R+682NYeh4GHKR7CF4wUm+yRt0oVU9q5MWes5tMKEq2OpUaYMXz8oNekp8okLKfECJO+YEaRrdPYgatVcudYtR+1J2CObv2yaT2W6ocrIQoK+BeOTmo26glT0wKL47PkDkaOPJKmpzgkmqbd6N4+ooh4hL82Zw94BQc/xAC+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755589794; c=relaxed/simple;
	bh=Ij1RjooOd7MZvPIyjUs1/nhEfOJJLAQXZwTYZMITLIc=;
	h=To:Subject:From:Message-Id:Date; b=bsJZy9kZigU7ETyjjM8K2LSksJOQ8+X7WfBk/X7qkxGv3/TCABWdELrI4wkny5YoFppteWeCFduMQWKG77YFB2P7KxVRiRHQwuulWN+QXS5uQL9ajDWTMngj4WrDYVyoLwggOTJifkh8Qu4/EFMqIJ3Jq4J2oWIMzCqTmJg7cps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3MszN0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3MszN0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB24C116C6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755589793;
	bh=Ij1RjooOd7MZvPIyjUs1/nhEfOJJLAQXZwTYZMITLIc=;
	h=To:Subject:From:Date:From;
	b=F3MszN0d09rJSAbDgxNU+5Am5jPQNPIbyphh/2ZiBlMKA12TsN03f5N0mnBVA3yRF
	 sU5W51mRAKB97xRDQCaooe1gysDAkV877AE6PS3Rb5BPbBEzMEFMboM/UMR/JdI7iG
	 c559SVgnNvNgXrKyvz4lE52CFwaZUctft5eG2OzWDdwzYX2ukR7rIKWTN8Mk1MLDKI
	 qgzbBO58ty0ktB6tGwRirh842Hzl+Equz3A7sLvqsrhFOMs9aj8bizjybWzxHpSrfE
	 LdaotyNlHQ3dz4VzS1C0uckGMzRsgnsZl36a3boTN83AH9alI8sLRlK1n1FJxC628X
	 T8PgRVwrspVdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E808CA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558979357.7035.1335265525128327927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d47ee02ed027bdcb9d1ee95add72113e2cb44bf8c9f07d86957d79a88fe200
Date: Tue, 19 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755589793
