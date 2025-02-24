Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8E81C6FF3
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740378534; cv=none; b=GCUaYCYhNlijEP4Ue5fSzt1boOFydetgrG/1wtMjeC9Up0d3Z3Q/X0cPK+SqBG/qyVQtRc7z613wM8lhGWDW6zDKT1PhElKQ8+Hl4aZs1wZtEunSZCQ4btBlrPg6FNAnS3KSK6NoXrQAs3VVKSXQ7TwOKi/2V8RMJcKfbfVAh8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740378534; c=relaxed/simple;
	bh=lqnDoOC5tasjSBacYTmzuzamBCRutcFPMeF0retznRI=;
	h=To:Subject:From:Message-Id:Date; b=ct84V+3GMNKKRDcQto9wmLh/UxsAHzFERYppbkjbSKFecrkaa+DusQ4lNQIBu6er23HK+8WX5tdH9DC+UTFqVZZAfknqp5RJtN5JWkEP7RKeHLzD/4RsiA5/U0jZrQQwQSGMaymIxbnmMlIuEAS1SZe/4zUtWDGoVbY+N/mVYl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIn1BaJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIn1BaJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CA5C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740378533;
	bh=lqnDoOC5tasjSBacYTmzuzamBCRutcFPMeF0retznRI=;
	h=To:Subject:From:Date:From;
	b=DIn1BaJ3CqnQFVLRQ/efqS39KuxsfRbjw8AB1iHemnitM8umZ5PnTeCg4U+50AGjb
	 puKA7iUDxEKvy1SAFrnOE38oiwek/sBGLNGxu6qHXE/eD+FE6gmmwCS/OyShuxt0Qb
	 x38q0WTO9jyl1vms3d2j53s5f5n70P0kIbG58GDZ8AhnK+RIsatsi3CMUNwrjU9VHC
	 1Ssv/qP2XJzRGx0DLZ6Ou7Z9dZVevpjRVvLAMSABNpzusu8ror1RVYMrwFcrbMrpBV
	 Ra2M3WuDulrhuu2ByVjCBclVxjPQtNbi5ZdKaVNBaKnlma7vC1glV4aL5sysNm4gXb
	 LmQWB9i9oRl3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EADAC021B3
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174037853357.15700.11729735677706877247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f00c29c0a1bf52308380d5f727466970254aea1957c6e956b963d86ee8425b
Date: Mon, 24 Feb 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740378533
