Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB8E2EAB6E
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755170994; cv=none; b=B5w/23Y7hVPKIQrVRcZvZst1MdftpVvCfjJ77UzwodDjp0yVlmh8HtSMgn2l3GN+h7q9xq566sfeePFf5oKaFUABvesQjFhAWEupJt6RTT7uLnAMUfJEhRAyZxZADZyRNQBX2XTIv2m+jYnvaGWdLoe64B/MES6uXLAmdmcIA7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755170994; c=relaxed/simple;
	bh=yGRnRaO1H5EUH2hvVSnGfhe5CFvW5zy1XEktKJ5vSjk=;
	h=To:Subject:From:Message-Id:Date; b=JAkPcc559SKegS/xRjy5u8sfSkIv4oiSD0o+Z7lioy5xewvtDfyUerCRrxl6AP0qL8n6hl+lMEakV2GkmmFdybhCBVipEB18Yqnhe0q6kNgTnijjpML616hjrVHwFQA9t+j2cRPnK9YyghLTwiS0rYhpkiRMGTEaF8HFb0+cQ68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMEtS2tl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMEtS2tl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC56C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755170993;
	bh=yGRnRaO1H5EUH2hvVSnGfhe5CFvW5zy1XEktKJ5vSjk=;
	h=To:Subject:From:Date:From;
	b=mMEtS2tlwsf2D6qFpODxifSMUnscweULjouVeK3k/07wDkTUaTatejBhumOFWjTqU
	 drl8GquG8FSkB48tIgIykpnHfR9XdEgNHUAMjSG0fA5d7j9OFfLsfoTQm0bwNyLDDE
	 GCciKdJXSUYqY4L6IxdYywNadhobk7dN/MVupmiVDyL0+33t8lVczeLBUy7gHCYzHV
	 jr/uChWIMD1gultJ0j4K6K8nxduAfXv2VD4+Ow4k+Ob3U2JG6o53Gmk6+eHINoUFPK
	 a0DIEjiMSQyzyVya4Ud/l/uLFEiQRJAvPCkg2KGUqcTjOSKaULmNXH1hg+JVIwr1ZW
	 e4kmAzcrcaknQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92093CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517099357.20280.14647565047258963284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0441de43ea411dbeb9de19741ef8fd492bcb7df105b8d52d376668a204451d
Date: Thu, 14 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755170993
