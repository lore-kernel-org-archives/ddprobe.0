Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6F1325714
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772244894; cv=none; b=X9LE1mS0tQl99uJbJJwNwVJZtvB4TpQwAuLV+03jMbG3i26owymj7bvVu6Cn6KRzuN+hhSQJKSreIZV0GO4akbT4+0rk30DytFuUrSRYPyJPh0cLPiUrCoOSWXDA8XkV+9Tz/3dZ059d/XlX4obC1EEYokhegkG45MfIvafWEgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772244894; c=relaxed/simple;
	bh=1mi9sHgvmaxAw45D5jOovJ0j64qLXC/IvDeR+GNKQ/8=;
	h=To:Subject:From:Message-Id:Date; b=YyNQcIERsdfvuCNAOBTwWJyhne2Z8gczWJ20hfnqMrS+iiRsqQZARF9/aC45JwQ/GsSmZ27dufqSRy7kRDj9DYIBgcjXrT5YTeINP7OooM9OMBDeUAg3/pa6z6IpZMps9Yo382Stmo/1UTA+md2dHFU3DWA5emklo+vEVfcyfH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlzUyuE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlzUyuE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FB5C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772244893;
	bh=1mi9sHgvmaxAw45D5jOovJ0j64qLXC/IvDeR+GNKQ/8=;
	h=To:Subject:From:Date:From;
	b=WlzUyuE+0galOQmlTRl5UyObZT2cRmeIN5fn19iwTc8pRe6gDTmOvHkms3vv6ZUxM
	 g/wAZKoEP+JfLMwQxPO+BJxFwivmDhxjtAqRJqevyd4M8nPitaAMdX5M7g6DzbedGG
	 9IRZujLkf74ScSMDo45cKdTIcZRAXqjJbuZQK3h+jR/deD1NkTb/jIl8KHZ5LJXiri
	 BfWch32ntvGhj3mc2tYB6BumEat/bbrRHge31fIj4hJTGZTqsYLxrHUZeVT/gTe9Sd
	 cNsMqEFhdKC3ME+C/Pz9BzS+wOsLQnIFz+wLN9yM4Y4CP89NTri27MqunApu+Fg1wS
	 s74oXwD57Ry7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6551039882
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224489357.8690.7775951076623172566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab4c46664484370b99c227ff327b4d2a8881796093bc874911b2289254ac2b48
Date: Sat, 28 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772244893
