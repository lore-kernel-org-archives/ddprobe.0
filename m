Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F001E3787
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746607194; cv=none; b=D/k1O03yvas7mFPn6iZu0q9RH0RF0vX0ZL4BwJvZLepoxaKgNpyHAOkRE4hMFyPKo9btK3JV8eSELBIQh7W1LFWep1uivKWIQplno+w46P9OUa4zFO4Qmobx53fOfZJB93e/9DzeVu1D+QtWlJF83QBUsGEGJ67y/VwycHJ1lbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746607194; c=relaxed/simple;
	bh=plj5aBt7vPmxTrfQGZX7F/32qAJXqLMS1KyDQg0io2U=;
	h=To:Subject:From:Message-Id:Date; b=CWjZ7tYcamPYPbcxxlLADrbFU5hORse+fj1ds+1toR77KmbkS1GmFcbZ2p7WbNPWs0+KgVguQGbgPsE3WCKdnFK79xUpJEQrQjLbBpyelTQ9PwYSOTzXojzS1644mg3/5pbdH4xIDTT7cCTL6qKTFnPyzC/Rou9j4v+jaWFt4Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxtKsLB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxtKsLB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B298C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746607193;
	bh=plj5aBt7vPmxTrfQGZX7F/32qAJXqLMS1KyDQg0io2U=;
	h=To:Subject:From:Date:From;
	b=mxtKsLB7bH/6CoO2L2bgr6RXZNqAzewP6EqLOPEiWQ2/nVbmuRpX39o+xpYbxqCGa
	 xMzYreNvD8YVu9hS2aCQVcUbvC3YtW4JV2J6b4m2TGBJsdHnrcVtTb6bFrarmWQmEb
	 JdzpEecma0ZOp32zbpM3IcDE7RMSBCcdjdDdRqyqSLS4ByQpeZyhUdi495Vw4B5Aog
	 b6rSIPhVhxbKcqUFwAF3lDkORp1vuziBWWtGyckGcE/oWf9su50JYt/keeeLVNdeJg
	 smvvFzqoOQtmU/h2OCs/h2ch5eFZITosOtEV4siaWfS6XAufbPiOX0hWFmvat0lfTb
	 5Dvr9kzbrAjKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E251C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660719357.32611.8571921000733092709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7f5e1d8f41a989657c1f7efbb4dee1d66d049a55e1b76aa5e07c7463b8ce18
Date: Wed, 07 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746607193
