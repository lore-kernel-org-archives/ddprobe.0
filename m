Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2BC2AE78
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763098794; cv=none; b=fVCJjKcd4PvzI3jabuAecmq4fXQSmhy6cFLqXl+cQAjr9ms9/bVGvTdXBM9Ex+zLKHodnK/jSKwMNlQhr//qylhNo9T8Oog1BCrddXH38fWOLPSlouevJV1vbtLl0H22mSo9Fq3CIF4iZE75DOoINGvn4AepqKJTkDpzAlPMQwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763098794; c=relaxed/simple;
	bh=9R7zqvXQaF6jQq4ZpGe290T7DIBB6CyLAe7RVb6bVHg=;
	h=To:Subject:From:Message-Id:Date; b=mEoPrpJsOXhgW32GL/A8ocaJQoe1x/dTBRkD6JPuaIEdW6+H2e3GDZMVgSlpFnTcrAN9p69qTPuAwMgmd/yiVgqFIMLNuKam5FdEbYwgR36Ves6EdEz0HH5SDdpO1YvuQHr7OlofRYJ4sf/9/XsjR9t4R6NAWDbvYn1NP2B/CIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UG46z2EP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UG46z2EP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE19AC19421
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763098793;
	bh=9R7zqvXQaF6jQq4ZpGe290T7DIBB6CyLAe7RVb6bVHg=;
	h=To:Subject:From:Date:From;
	b=UG46z2EP2+J76A+cNtTLx/Rprds3/CB5086JVdM6+7AfBDIvjWEZpKe8525p38iGv
	 D4pw73G0UD4Inh+gGn1jswgIj7VYKxtpHbgrTHqwxUmhLmrOylAnkkMZvoaQRfOS+g
	 JgzMoQZVojYRZ+3OMnYvtz+wsb2DX4bsuDef5kOjvP6EGCRNqJL758P0CocIqPCm7C
	 YVNhWEtoi2im/014mUaR8h+aOMU/tFMbxQK9/msqWk3eYnFHEZKKODyZtpwb4X7PvP
	 83F1tDrVwk4c3Ns074aTOk+Ra7wi6e/4BCbgtK/lwvghoFvEeDc8nPHZYzvgYJ74Sh
	 B4L83dT88SbOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7E8CDE008
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309879360.32366.1783399417581695929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e1d2fe78b5e0387b843b0fc56818d06618eb6b951b1e49a39b23f3d912b7bd6
Date: Fri, 14 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763098793
