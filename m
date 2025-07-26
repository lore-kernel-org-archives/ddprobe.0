Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387E21D5AD4
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753547994; cv=none; b=Faec9ROguMkyEdnwoT6cDbijoqi4i3V3Y94DLLLj0KLB8d3qy6+S++O/YooPxooBQ3wcOX4w72WoyApIr7s+CfudL6BYHyPqmrs8983KEe2VcSrnFX2jsmxextTPuIlQKx48K0Qk8cToguyJD5fnbS1wW8rFf0AvmZlyaBheyqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753547994; c=relaxed/simple;
	bh=Y3ZI2XNaQH4jDLCAv+39Jne7OVd939Xr/hL0nrcxvug=;
	h=To:Subject:From:Message-Id:Date; b=M44QLwHVGTJHsdyUUnqCZZqNyv/byC1hCETgmiulJeIsVA2jozJAgQCvMLOql1+jRAINGqJaw9UXL2LLPoY50q9keR2vyCxho9mrMvUOu7wjXF7oG5dvHGpDMAR1F3ug4ga9WPqMJxkpwZ6A8nICjlTS2YDXKxJMYGbQMDowi4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtkWHmK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtkWHmK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F6CC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753547993;
	bh=Y3ZI2XNaQH4jDLCAv+39Jne7OVd939Xr/hL0nrcxvug=;
	h=To:Subject:From:Date:From;
	b=PtkWHmK5wP+8bnezxPzrIKKEA+Z8t3GlWy75diSMvdPiPsXBts5DZWOr445WZCYry
	 5W/NZWG/OfYx44vEmRG27FnVpF5WKDg3wc4ZSK5kuNmBe3O4PL34nX3gYGcriImeLk
	 hj+8bb7M872Sq4FeEP4w8H5/4tyhlbJGIy9PuKCGpp6mwTWgdfNzNDMbIxzvEKX9cz
	 rbVApO5ikg9LNiBgoXWQTERCdg76LSFyoD85VaUgCEVYKtWE3xLueO5qsswXsyC/ke
	 FISdHgQnTJqG7xP9UtWSRCLeL8IB+Z/hszKFGlqy9b+uF8WcWQwjQFonI5jMxJkliR
	 8rbfroMruCmfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F4FC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354799357.18977.2038703385645416584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c69aec271cc0fe10e9efd0e2c6959936f302dec44c9adae8b430139dc9f0e4
Date: Sat, 26 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753547993
