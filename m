Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240C91C860A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751050194; cv=none; b=Yc89j0fUhvSnLL3IZxBazJWNG6Rjtf3FQIonSJlrpe5tlhlG0SfEzEsXzAYpS2r0kMTN7HjWTuaxLoFU6LJeY0F9MjrrC4nAu3ulFHZz3+/LzoweyEpKjzHnllzdiL1Z4m4JE5lisjoPs12nL8IhCD15WpsSzFxKk+Q45b7V0e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751050194; c=relaxed/simple;
	bh=8wGtVD4Y2947STEVKDtNlDIv7JuE9iMQaVeN1vVCRbE=;
	h=To:Subject:From:Message-Id:Date; b=hSKYEHdrgd7xHGFEsxG3ev3qvaEKi4324bOvFSpSpHHt6nti5gGQz2ywl8i2gFdc+bfRfQ9gwozJo1fB/U8Dkbyni9nUF4+SdBC5XdyED1iObalxsSNCKJTDbILrIJ4MzANv7vJQCqxirB+YgbQTnh+eJ0GwfCjlsHbk+ZbKV7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXFGi6PH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXFGi6PH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3604C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751050193;
	bh=8wGtVD4Y2947STEVKDtNlDIv7JuE9iMQaVeN1vVCRbE=;
	h=To:Subject:From:Date:From;
	b=dXFGi6PHcp/OpuaVf+x2z4qqpX+HsMxasgUEQQ0Z7+QQUx66Awv3t6SGXlqgBfpbN
	 wlJMhXGRtzNqHUh44nnnHSSKDHwYelCVxQd9yP1+VTXliwhBTGEOnNnO1gcLA4VKqh
	 CDeKt8muIB3RRVzssVGj6JsF1gEB6Z7XrAmRyV9ZZuBJ77OdG6jSaDsqMtXxMIRlIG
	 EgLIuKM1BPvB9WAsX9mCWze2bHieX1qZcaQLh3rzML3YD/rUSbFYgrzbmXZ+ZPUJEp
	 v3+LuB/75r8I0CX66+Og4zkyUoQKXLs+rU0P+TyLYPr9l0Um3Fne/asyrQQhLclZzR
	 +XrO+NcHjsYPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E55C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105019358.8657.9904324616727242622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec33373f3cf5eaa9bbd7a7984f79bc73447e3b8f01e12541f111ac934c667974
Date: Fri, 27 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751050193
