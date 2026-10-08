Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3ED175A9C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791421234; cv=none; b=YH0tAhELr8xoQGWQwBoXyN2r9Q4tibhD1cs8/+ARVG2MUR5ID+FVSy/Q1uyIVztKQdxzSH5swZKC+CxIPHpAR5pawI2B+D2CO4+zHTNtTcrUoMncpiS6K/8BCg6cwPk8l08s5rv1NledyJ4LkoTqAd8tPuNMHG7XhHsK7LGhAv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791421234; c=relaxed/simple;
	bh=hTwk2kE8iXwrxe3zsuNTYQbgsFr1PxIS9tPg7stHWrU=;
	h=To:Subject:From:Message-Id:Date; b=e6cAqSaNoz4JhbXwBrV2bfoofEhjaowGA7UG+XinAB10SOn3YjrRZ+KVy1OMmFJL+FY4sTggu35G1VyQrNdkwQ+QnV9Ou939yzdGUQIbZ/M7jmg8yHLk3KF0WCoi0QwDdqKaYCfqG3RB8CHf9vMD/oBK2wYgVrDRxafDJQYemQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncQQzaBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncQQzaBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC136C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791421234;
	bh=hTwk2kE8iXwrxe3zsuNTYQbgsFr1PxIS9tPg7stHWrU=;
	h=To:Subject:From:Date:From;
	b=ncQQzaBY8XTNS6tBXTHxq7AfJSC5b+EnawIZThpl3ZCDZcJMrM/G9WSm4u2PxsPj4
	 62DP1UrpMK9S8UEvs40XwOpLy3eTsSf0f27c0qwKnI9UwDKpH/DyniN04r21riaekG
	 o5ASkSgzKptLn3CibHIMoYkpaCrTn9I/IPwgVn9C2Jp/jNA4neAZlKZVcZyDz++Jy5
	 qDxfMSgpaKuMaR7x9GYb4bQ+WqDVczKYqZlxQgqPjCXTn6Vmp40k5adzqH2BIa4JXM
	 mUUT+lpSciif3Dpb0/sI3WR4Rzh85HW3pwM5YdXxjHpcdpXSQOzzR4dHjtHJJwS5zs
	 ekZwtOlQ4hL1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A8BCA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142123369.30341.7176434282195072607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddcb169d545733d374681dc7b42dc6411898fa6ceb45ed845e29ab2bb2ffdc1b
Date: Thu, 08 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791421233
