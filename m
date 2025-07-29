Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE851E3DF2
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753790994; cv=none; b=U5bHQhTtd4GLlwbxeE73Ob7K64g7LB8OBVWpIKf/7Ad5Vrc6CyE7tmbLmRqaexPholYEnlxEuKaCGqyAPRLQJWOoHvaPclcbBwtitvqMvzIEn6yprpYj8dpxKnFCPWVc/+GTaUl9z3tAIDpM9WGK0z5D/DvPhzs/1JO1aHleP8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753790994; c=relaxed/simple;
	bh=ajZ8vG9WYsU0OMaYN4QuPUHgq1OVRq3CrDFb6wMibwE=;
	h=To:Subject:From:Message-Id:Date; b=Mu1+uZUB35gOX6DVenQJMnHQKgmyU5diMjy6RIoRCIR2vdVKeQtFqqpZA8HfOBM4sPDlM9htU32PeRNe3+nGEjwzMGoSu57c7KzSgCHuaRFykQm2sGwpx8S1EVmXfNDp/FAawDs2rtr03md0Xd9mWbMSqSWDm3A6sSOkHhgeQRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8wzm/HN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8wzm/HN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05D7C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753790993;
	bh=ajZ8vG9WYsU0OMaYN4QuPUHgq1OVRq3CrDFb6wMibwE=;
	h=To:Subject:From:Date:From;
	b=l8wzm/HNZR5hHa0DSkrQ87LddwvmbvfXav4U5zmWUO0xXlJwTWG4inximG8o8+kax
	 Mh6NPvWMld51tWAcK8S3SShKn80RbisJyLX89E9RFO1sVx/Dlgv4gyzGY7ZBvD5gHx
	 e8+vyvigqraTAtowD5dj1HPb9n6rSnKDiOwHs9ah8r3JwBVuDGzhgfRAo4hrUKOWv4
	 Y5kYQz0xirPTQwDOtx3ZkpPPRh4VltFDuBzrmyK8vvnATF3cgC1CtI14CY8XBA3sCu
	 1HUgxu6mfnkUm/10H/lpSdNVKtkiusw/pTNGnJDcVS4u8xmuw4+aSy8TbdKgiiObO9
	 9SPv9Q00FRrPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E249C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379099357.22662.1114488132188341068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b79bb6081316810ab7ea04c3a9e53df66f65ea336b99b882834b24be89088ced
Date: Tue, 29 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753790993
