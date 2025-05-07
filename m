Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2775928B7E6
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746632994; cv=none; b=BONhU/yLVCGzEb7toIq8xmQNt3skURWR9CYbysxH1hR51TwAigU4a2cCeFaNVY/wYc5vIrabcMjGhKdra+e7R4yCTSPxoMDDqN00iT9DOlMn6uLAs/mCR4Etm9A9e0HjdmUb+QnDHosGuDA+8qe6KHJ8ZpvIZvWRl5Wkx9+8N8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746632994; c=relaxed/simple;
	bh=q2lBiyYMy4heu9RUpnmFoZfLce9DVhkxbVhqH0Ze44A=;
	h=To:Subject:From:Message-Id:Date; b=LIAFGBApwU2H2L2eIpb9jK42a6+z/jsf24haG4CXtgZEhq6dZfZODtFCI7JgrLfzj4x2wLMv8PVcB+t6rHx3TOSglID6oLawppPCx0x4eac4TTI6OyzlRgE+miWrz5FEPv2oimaGnOkNmv/2/85Zp7nEBLujB4opIBCvvK8Yw+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VY75U02l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VY75U02l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2ADC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746632993;
	bh=q2lBiyYMy4heu9RUpnmFoZfLce9DVhkxbVhqH0Ze44A=;
	h=To:Subject:From:Date:From;
	b=VY75U02lhG8BDC3z4mDaaZ19zXbY7X2pzEaBS/u3iAi4UIMBIn2u/kbBkopWmNzF1
	 2jMHS/sOxdUIAHjQZSvLcmLcf1GmWHcN1pHgLVgUa4nrtnBj2Id/ews/9hUjF6I1Ik
	 ihnId5s6v+MZUPciyANCGEh+1i19jQDs1kpv/wuSI+46PShBaxvNEyqKIsyQBDpFav
	 muOuS7gp1n3bUex1jo0OiH6I/2HkQS9oEphQ90SOGUHAOxrH08lfZN0NyLPXjKDyL2
	 D0lhduni1MDbGUFPkVQAtqWcGh7nLSe3twIFX4/6oZTOYjWdpwklF1ubnehuWdEok4
	 fwoUulPh/CT0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE8EC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663299357.15539.3352870893090923501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a4051e28011c7d483a00bd3359cb3a93c2a8de49669f2602ddea831ede55be
Date: Wed, 07 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746632993
