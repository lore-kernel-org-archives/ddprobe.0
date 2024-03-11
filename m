Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3072E40E
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710196696; cv=none; b=QOGgpLs1K6vzdjg7L3wa53UhSpC7k4lNrpXXajGEe5AlglY1agIfCcDu5H/JqfJKjBBoRNHyMGE/ibItUTn6X9pxFVBhCI0B7lMrmXoVDf25ixpi/cLq0Qz2QteyUz9Sq4iBMvwrAVb9GCHaaCKF4iUSXkP9AMGMN14uLycaoAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710196696; c=relaxed/simple;
	bh=ZLzL/fMl/4irfhHsNvtFXX5w76nvbkYN6fAI1ZvAOTM=;
	h=To:Subject:From:Message-Id:Date; b=WbzGy5gkqEda/+jO/TfvesXnkeG/DPU/VLazFXIFMgm26DAoGqKCyj+qk0d83F6veRIdXsoyjMvyzsh9yukLBkXWAz6jE9S1h9RX3frPFtf2tzpv/NzhvkPJNX2ojfZiRk535FIcBa4QCjikDBz5tA4MkhI4wzDxz8sxqa7QamQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XonOShxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XonOShxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78B29C433F1
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710196696;
	bh=ZLzL/fMl/4irfhHsNvtFXX5w76nvbkYN6fAI1ZvAOTM=;
	h=To:Subject:From:Date:From;
	b=XonOShxs2v6tatKdSQSOL4Agkdy7I2O9g2fx4CXv1LiC4ii6XDjH1fpUUl8PwHpAb
	 /4WFj3IKXLCiQVMrofeZEqcWwdoAk+chWaBI4PwYu8RAZVimP1pA9zA4G2npJHtwJh
	 kM2ElDA3Ya00lgCBP3Dqmgv/84tjqPJp4Cq9aPTMdf2smBh9YEJvG2zc6DUmSFpKUq
	 lI9s8gVTl48ka+MqVLLHkWBueRopj/Fkh0DXyyeu8FQWKZv10TOfTkC1/cp8PZC6cG
	 cVHmfz23W7jBWzQZtKSs+T6ACwNxR0CY1kwPCFY3u5kfmvFFXIr/yPMy7J/wdE8sDT
	 2Diswku5/4n2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C522C5475B
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171019669637.2644.16995408718451964555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed1a3aa5b4a0432f952f5c4ca2f408d883fd7d167a22ff1abfa2b1261cb0939
Date: Mon, 11 Mar 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710196696
