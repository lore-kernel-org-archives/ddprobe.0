Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B802609EE
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746041395; cv=none; b=SUbbu9MKdQWurpWcXL+NRENmWknWPpSMYA8eaKFSNINGAF2arYNCz9KAhR57TbIWnfcn1OqWf62iUonAJ5PqrquM/fN80S1ui51fdb6Qr/WAcr814ggRuHDI2iLBrV4cXXsbe5yRZ54/UUnCZfKUWROAmoCZteyhIx/hVhicwHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746041395; c=relaxed/simple;
	bh=BhK9tgOG7HtHQ4v73ddLCHflvrzJp861dkZk3jdF6PU=;
	h=To:Subject:From:Message-Id:Date; b=sQWjYQe3hzSmTVESLlDQaj4+Q7yGdjLW9O+JBCx5Zm6GJ5xsH1daKx2wVSU6C0HvRr0lK91uWGWnC5coS7il85QLPQBdKzn93TDcR4xNwpXOVCfZNuhuiKm3lg52tkDkp9S6/f7v6erWd06pNvqveGQyLLHJGnKCtprpXPGpyBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J53dbWXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J53dbWXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B4FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746041393;
	bh=BhK9tgOG7HtHQ4v73ddLCHflvrzJp861dkZk3jdF6PU=;
	h=To:Subject:From:Date:From;
	b=J53dbWXrjA5FWh2Y34JJuHMdrrdEKU6iDVjlE1yRXNJzDjcBnpz92npDRSouLSiat
	 vIm2AcB6kx/OEU/noVvQHq236lRyKnlqpEmtHYXsx5fGpfP5vF/vJaoMe4TI1EZhGh
	 ebGTrsINViBGxOiztx5NiTmZ534HgtduP205J/CelprCZB9qx69Tt1iZSPHDvBZqxC
	 odp3WWETd9oby+u8Vmgz9odVz02SRmYZfj8zqs9oARIiSaQxqnRF98eufgq//fetSr
	 kqGU/LWVA+mf/2eAVcmHOq7yHxSN+FQpJpUlZOqiourN3ObwwE5qLRpC3HZsX5qZb/
	 ka2S+OUiXrAwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C6C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604139357.3727.6812423007030275519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78817ca3496137571af14a81c88522cc387be4f03fcc1e2ae36c6aa2c28b3094
Date: Wed, 30 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746041393
