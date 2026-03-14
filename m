Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142D51FC8
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773477894; cv=none; b=UPEYhRU+D0wYsLiRpfJFRaoLkyiB+aQo6jdzdg+J45kO2BwzjUspK6EgPJjANfcDxNmIXXpFnwqiQEU1BY0R53RktIUxL7Hk8X7zxQdhiP5n5LcMbaFqzyPLy0JGLnwTu1Sskc44TWXX3Jf6KyhER4z6AP8885fDo9CqhgFwSzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773477894; c=relaxed/simple;
	bh=rvwXxy1sFrm2AiJVlgK9raa2RAMwHO2Mztjnz1hfzMk=;
	h=To:Subject:From:Message-Id:Date; b=CJ1DzRsfFt/2vscwrNOGoFzPxG6i0msvrmVn2VZ+nRd9xLjwgfEz28nWJvqCpXSKjy1tJ4Fx89oWNg5b/KMy3zqU8AU3ssALAsUObKv46/JgWzjKqsgyW4z4CPnhGSv1/9IjmXmBu7Fvi8cgpuJJchQ8f31TA7V/n9WWt4BTOvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlvj13ry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlvj13ry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BF5C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773477893;
	bh=rvwXxy1sFrm2AiJVlgK9raa2RAMwHO2Mztjnz1hfzMk=;
	h=To:Subject:From:Date:From;
	b=nlvj13ry3OHzFnndsAAevdejzycsYCAvIUnsWbwvABPDF4eVefiqz2r6cQtWNo8U1
	 bBG31jQEhSKHWkfBCrKRoVkl90eRQ7Rv8XMmpcODRmTKqusu5jgsjObvNymVQi4yVY
	 0L4jSjJ+pHyaG+/TRGYeFdKiE+lReKvOAeH/WFw2LAI3VFobr/0tUaJXZMgJhL9X3b
	 XCoiepDGonpYm7X17i15FO1BVU87W74T9vvoBzdoLyd5nUdm5JAxR0jhnfcE8nNNFO
	 m5/WQqZKA7pE9tjsPeQYOaCjlvF/BvHM1OCjw5fwu9ODmfvFHjXKx27vv8IZ5gY/yT
	 +FydL3RQKeJew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94550105F79E
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347789357.9388.4553685841623260180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b459f5646bd7388bb7e0e8c1cafeaf110ae331f86e48345f14e04d7dc05941
Date: Sat, 14 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773477893
