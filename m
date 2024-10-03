Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE841AB52C
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727996754; cv=none; b=d9gY9nv0/dD6iRVHDO6qilYxwpr3VKWK+dH20xHSCCRbtcgYK92P6Cpi9UpWyjfCrXVfeBhho71ojKUvb8nPyBXPI/4oK+MY53mYz9bQ9sP7852yNWHNrY3Q0jD7BFiUS3GOxrjePqymKUxHDTFAvBCL+C0eU14SNbl7pRpprN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727996754; c=relaxed/simple;
	bh=VjafsxQygaf2KfT165zv7cZ0mAM/Kjj1yJR8ZqjH7Uo=;
	h=To:Subject:From:Message-Id:Date; b=l/Th7lEGhCJVyQkfldR+8n4cltu42tQYAQsnwQOAVLwyyXPFOyeIQMJ7glPdc/2yKlJXmcNWNfAMQmsHVVWXaYiXyCEH/AQbLmIxxRmYpnA//+wLa7/2hWq1dnQhOMDjBzi2DyXso9fm2eoeA+yusurn53C2/Wreyjt8dqy/o9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1suAaEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1suAaEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D05C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727996753;
	bh=VjafsxQygaf2KfT165zv7cZ0mAM/Kjj1yJR8ZqjH7Uo=;
	h=To:Subject:From:Date:From;
	b=M1suAaEXKxieEXiZrOLG9DAhvPLIZS7bTh99MalyircNMEINK9Fixigc1TWcj+P1+
	 AWumh/6AFKvnpTfLZjabTebPqWEayxnPsoxksle0rMsZVItEcvJK/RZcHvS7XdOViY
	 iNbBC79cgeVCcyfHfNPtYJR6iFMejcW9X2BPuWyGFzKoF4L10QkZunF+R/HqItC4Ek
	 n5OaqzypPi8oIsBUG48octf22YYVoG1ZlTyQYq8Ab0kWLknt4b2fAx8FOV5jPY2jUd
	 Jps1P/LbQh7/RB+ZQQfOv/UPG0V4gfCO4+R8H6SAdz6tOWjC/yzP9fcxe2OsYpx8No
	 /4yMqjByt2AiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA5FCF34D5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172799675370.32312.8070223579312633562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c9e6bf3c995cf5bfc98f6edb2a730fa9e2ef6ae8f0fef80dbab889a1936811
Date: Thu, 03 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727996753
