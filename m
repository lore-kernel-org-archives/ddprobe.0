Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575ED313547
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790359834; cv=none; b=BtVqHMpFkBn8Yl73P+WbtZ4dEVB1z4K3W4Ott1C4CUjJbgT5Ejp1ZoRFzFcWGEv5LXno51PeKnvXDcYpXOs3fsBBdrZspqhXz7swJTnkPGGlfhqq0zoXzr2kPyN/32lNGev4NHGXs0WdFiGXZqfvlifQnbayuSS1MOKzkNwXArY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790359834; c=relaxed/simple;
	bh=diE6FULQQmOgt3zZIX7/y9eanzhiu8S4qblBHsgeldc=;
	h=To:Subject:From:Message-Id:Date; b=iH8NyVWxbS8rF+L29oL9vT4zMJeLZYK8ECv4n6ghHi48Xn74sDgYVHRf4FED7nZV8eh1E5PDqhOzKOYnWY4wZVS70Hr+x0m7AL20fucy18ASvDygy9nO3D0I3oq2kimdVhXZ6F/Nop6+q4SzJTtdtqh5gCJvlwQ9QPGA/lM3cro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r91eOhl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r91eOhl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16FAC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790359833;
	bh=diE6FULQQmOgt3zZIX7/y9eanzhiu8S4qblBHsgeldc=;
	h=To:Subject:From:Date:From;
	b=r91eOhl+06ad4S8w0wPLafad+V9jlC+mJtXjU894jtIeBM/FgKlLv64/syBqLc68H
	 l1FK0WVdA2CDiueWokDqop2+Fo6Rlp6R44G83rS59164MawPKddhYEZSZgaBe/nHee
	 RuCCBWwB1krIweXg2SWrtb5Cwh0B7oBVSbzmP4Nazh83s6rH7opq2h3Gb18XVlR3ov
	 MXVL/ticCS454ccBANu7WZquD9N+Qx27oq7sXpCzDmrrE0364NncJ7dOhh4QaGMrWg
	 2cWh9Pa3O7VJRpHtIXL6EQk9aB/Cg4DebnsM8LLo3Xme6NUU54cuuF10hvMiVTKGcl
	 ULnzrz8IUmmBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B520DC9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035983373.12324.5012268938640053609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db34d8e68208bcf13469c8667e22b2a50fb23efe3297ca6848635ac7766f419f
Date: Fri, 25 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790359833
