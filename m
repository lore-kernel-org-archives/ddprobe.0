Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C8211CA0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759795794; cv=none; b=Ws0sy2WeAaJymsRTYBb9mT+kwOyamxmtF3qD8SzMWu/DiryRVZiuXG9VjUGVD5XeMw4+O7CsGjwnGmcFmlnKqZ/yQvJ27uf5z948d7gX1u5lP9oIIa6KQKJ/Gp4ArQtD7ZDmKIliDnZSiW2DrMluLH+tAxTGWq8DFnPUsdm5OUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759795794; c=relaxed/simple;
	bh=k6H+I71OD5G7lVxHhIjiq8LFv0iD3oXJe7cdRNPSOV4=;
	h=To:Subject:From:Message-Id:Date; b=MkdKTfnYZff7iV25SzXPU4TSoYEEMx9CiQCgondgJWHZIxEZPX1p1YaX0Uo7SKxtsO4Mc20TVufe93xSdMWZz2jLmflE7s5axdSNIkidNrTnSyHJziDg5EWBGx323LxQQ4ixXGslFHNL4ZMjnhEdOWlpSmRWr7MmH/VlMGWq50g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVLgxLac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVLgxLac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8152C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759795793;
	bh=k6H+I71OD5G7lVxHhIjiq8LFv0iD3oXJe7cdRNPSOV4=;
	h=To:Subject:From:Date:From;
	b=rVLgxLac/g4dEG4awrvym2cT3RiDXi61XXlZ0MjoZSnVpyIqFNIetL98Z3JGYWzpT
	 dVYgm10nTLPVvWYQFvnVmvYaTPTcaRTWqjeNAAQOfYsPxnv2nixeNyRK/+wQ7ZPloR
	 SgsXSt6raj5C2NeG8HHJJNTlkto/ttmhaRuLOTzo5FYPkdWFn+sd/++IYI/HHD5OBh
	 u39eYw90ba7B2SHBydLp5V0Y5D5VbOf+X0T+37woPm7VU3KP7NN1P/UzVfNsLRINWR
	 aAkLJzECuoFx2+mO1yWgp+S59egVh0dHyPE+zN4AK4+gdi55mOMx7JZ8dZ+x5X3/Xh
	 FqMtA858LJtNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9552ACAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979579357.22856.16523372994422060844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85514b3bad7e66aa9bbd79b102a6246efea4acf47e62029cea92e3b62929363
Date: Tue, 07 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759795793
