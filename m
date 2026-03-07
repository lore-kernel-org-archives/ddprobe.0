Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9BB1AF4EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772919294; cv=none; b=meGLOy3oBBiWcHkUWieOTEycorPlKdHmNsEFARln8RCeLgDPaBVhsolsGhYdkzJ+kWi87KIAHvaMkvaPTihimxOSQwtOpYS//z9eXf8A7JyIFYE2tOkMaw4IBbPUrp2TT8gz1+8cot32hvRQPjyqVJJwCnwpkbIDt8CwH0So3K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772919294; c=relaxed/simple;
	bh=QkBTKdHj/XnnkfiL1B2PUM5sj2mUAaT9bxSfqEyEVG8=;
	h=To:Subject:From:Message-Id:Date; b=uFQrptAluokcB4oidz6gC3xwpRA21i9gkB236kN8GqIuaW40Co0oAalvuwznisNPFqCzOlqfdBVfWtIOO07LVhWz7WXdy5RJ1u5V8ik24HUu68TW0fyCLDaondX67a0+fOFDUuQU/EoFdQzr4GD3L4YDnvH4hCoEptuxtCMAXrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUBKDS9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUBKDS9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E2FC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772919293;
	bh=QkBTKdHj/XnnkfiL1B2PUM5sj2mUAaT9bxSfqEyEVG8=;
	h=To:Subject:From:Date:From;
	b=iUBKDS9Sq7bVzbIsLeqh25RDzbjT6dkw6LXwq5JgQ4uOHuqWgUZB4cr599hzizEA5
	 rAENKUFaNMt9K0UqmYvymQjnim0hdsu5bYrinEhq2e8ZF3MWw/reZuksRsmBmfdNWS
	 G1XFGfsKtkl6LKAH8O18xJXmdtbYjCr+Usj+BYeecrnnn5hN4N9+gIwrJrR/+CiS7x
	 coAKbUVy9m8lLofgKv3dN2hrfKHlYpUWJKsI6ivRWdWcGR5KviqBsHQP69SROnz22A
	 kkWOpf8c8y5i5wpnleNMOx8w5NqNOik+4wAjzcRtoAtYycuufM//XA48w1qtC1u3v1
	 f64JTzJHqkZHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F415F55102
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291929357.1799.15128294870762939882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba7bab19c8bdddd8af7c0bfa3c6c67a8670a3e1d0ff87355e431a5b4e8dc6fe5
Date: Sat, 07 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772919293
