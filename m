Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1516441760
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763203194; cv=none; b=uzZcm1kZv5yVROsYKlzcsxz3JiYds14Uc/NnDG9ubqSZtM3XZpBJEQflew+tQDAE3nN9gq80zFPG+lubRfsYCYeZ/r46+ToLcV/wVwpoYW75ZOpvYJ27E1TKqep/HhJ5YrvmWwe9+RCOQDkdBdr6eDBBCiY9oDSPCJSi6IBgC7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763203194; c=relaxed/simple;
	bh=T/yxi2ClM1ZYFrqcF+D+Knww6AFqAGWWyTJm2j3JnAc=;
	h=To:Subject:From:Message-Id:Date; b=qVRMxAV+imbdbvNgzQ3E+gUgqrIKmWptQujiYzg58g8SSfUKcn2l9v11DMqevVgPiHPvNMmifwpDRetFeot9vJioidAPfyySZQ9MQBKXWMtpEjHXPutmvbnb8VwGTSgaK4cG1Sb8PXPHCcLpJF32mELXItGkg5SqUyJ7XafGdgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBOBLqbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBOBLqbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A9AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763203193;
	bh=T/yxi2ClM1ZYFrqcF+D+Knww6AFqAGWWyTJm2j3JnAc=;
	h=To:Subject:From:Date:From;
	b=NBOBLqbiLWcYz9MakZNKlgiDb6P+LQBSMJSJQV7kxof2MKLQcua4L1ogMPZgHiEJ3
	 D3ftiU5liuK4iY2tiZ1MzlfMp1NeZcP3wNVE4diCKfvbkpqg9/08zI+WHaVelj0I3E
	 FjC5PfDrHy9YZZ9t2uRDiWsmdpd1EHBTI0FJyeqKeCWAwFPNZ8NnipAai/N84UcTQS
	 lvpNKkeCDlu8x4iE5ZLw+zbNNoLmH7tVnkHKvmXkYvwWajmCFyuBbDa3KvQlLeg/Kk
	 +Iln9tcb+cn0RbHhIRPIPV13lqbVoXceDOj4cKQdDtjSxfO0T/1X1AFbBZ+AaDo1Ra
	 XJyzLd2zpVrGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E65CEB2CB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320319361.16178.3821342042675100641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c094a04accf48972d950bac659549ef993ed25daae8bce9c9af3ff383bb474
Date: Sat, 15 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763203193
