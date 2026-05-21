Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391E634F48F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779352234; cv=none; b=X/NFvXlY7skeuK+p517Q1TDdSZRgNTvgUGwvt6KLkbEjbvtGTHmeONCS6uGLl0myJVRETEmUao05kqcRXMIxjKAzhKcMCREeQO5eHBUJPWhOL6HjBUxEOBZrgg+hwfnfQclRgQMQQbMYdMFNmiChK/BERXSUrIZjUnDJ4mNQf48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779352234; c=relaxed/simple;
	bh=28E/tu34hnTAFlc3FPr/G9bA+0EzW0psohuOHQNys8Y=;
	h=To:Subject:From:Message-Id:Date; b=pqm1+zrPKbefi5tQm9foM13I+aUU6L2N6wzv5KnfCQ/Sz/PzanO6J2HyyqIjkALl/u6eF69kZyc4bjSOvjpY1GKFf3Rejar8rPW91vktJiN5HzLh8WHGAEILPYgZfh7BoCxAOczAamST8I1ip+KCLLPYfYyvCIn2n+ZiXimL2Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIiaNPOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIiaNPOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D358AC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779352233;
	bh=28E/tu34hnTAFlc3FPr/G9bA+0EzW0psohuOHQNys8Y=;
	h=To:Subject:From:Date:From;
	b=EIiaNPOK0dOX8B1dcdd3XMcH+iCjJHxJkPnBaa8YjROnJPHPqPKA3t8ecEkzXwoCc
	 5WJ5goqKLksowHspb1Tb/NP7UOZ65i7iF2ACxqMHWxzPo8TOfgitUGwGlfx8M6IFWg
	 qJmbEk0P9UayaFZRmLBc+SOvPPxkgG58jJ3fH9PYOwzkx6E/iYiF/cQ8Yj5gHZ2wXR
	 2RPH/0f1LshLKbuXnjnqCfrznu5Zb/Rsfo9STM/lMwtR9u4N0RsV7AeG7U19IL4syp
	 vAVICIG6SXSujXOHR6rWbPSxi7faX/dWretmtGbGJaz3mxz9JeCUEeUMpjBu4Drxov
	 y9YmwZQNi0E3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4586CD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935223372.25172.17356652013326572657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898bc5304f883792f958fa6709663f87ef795c10ed16307065db1347af98b33c
Date: Thu, 21 May 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779352233
