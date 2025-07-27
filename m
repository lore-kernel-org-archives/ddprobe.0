Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258791C6BE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753580995; cv=none; b=CmY9L7vJkuFc4X+VT3e8RkBt/BDHylVGw7s6esrZQ4lofHaf2pja7mqUB/XMBWtjyjbbBWNpJPXglxiauSRN6yBw+ZD41HzL6x6OzNjOYvPbY98IxuN0o61qMqpCAzPCDQAdvkhmdGBI9GIkfMXh37R/95m3sgZ+9xOWD1ngibs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753580995; c=relaxed/simple;
	bh=ywXaW0eT9jqoVV8JyZSV0WU2fch+c3AaWb4edW+jeo0=;
	h=To:Subject:From:Message-Id:Date; b=OBZMkvId6CN3vqvUY9yxm7NQ3xE4LbZlz3C8GPnpM+n8+Sd5gj1bJVTHbFNMz8q2gqCbU9mUaLjqCdtIe09giq74K6rDbmyXLV35fnCHsSdMA/RkskmNVTjWkM6lU5n94KlJ+1rEqyeb9gf5uJLMxdo46mL2FUWU0pwl/Btx+u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfDK3gvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfDK3gvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A217DC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753580993;
	bh=ywXaW0eT9jqoVV8JyZSV0WU2fch+c3AaWb4edW+jeo0=;
	h=To:Subject:From:Date:From;
	b=CfDK3gvtujcZcjKXnitAh8Xlds9JJ57sCBK8GmYYWeklliK3FYymSGAKiplGTQVPT
	 YWZ26cDtZRoW41Id6KXVY/79AnRrd3gveHdIVyG6kQIk1ReTNKUuC/7adIgdJEeZIv
	 AeIXspUsVp4+NFz/RpUq0YbyNjauVP9MZBjS3ndJt5UUWtb9zq0bSFZOZT0wDP0oG5
	 BoWnrA6r6kXOwuT1o5s32IUaA9djceLX+WpZttkf6c2C+n/cDvmV7SPVwShXUQ4TEw
	 f9T1YDJJjxcN4pXsDh4qlhs0QKSOL3570mdugJUPCx23houjWVheGPmNhygSlt3EAn
	 gMQpB4Jr6NQpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E5EC83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358099357.30473.13203293707027465081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62883a62b1e44322aa7c2ec602ebed24efc63030ae20bb219b7f4a6053f6373b
Date: Sun, 27 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753580993
