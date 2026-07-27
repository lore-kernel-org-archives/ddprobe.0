Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C4D42FCDC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785173435; cv=none; b=HiMrfZ0OnXw106vbuY24RT61Q6or9DQ4fsebFd7oIrLc18SkfFoJagbn8aO3vePHPCnBbYrnvCP/njpf9FS0sokKZ/hu2uA9EM1wGE5c4VjgZAd1Yx4i+Bnz29T7tOvMP3bSwx5Na+SpfgZ4BbZ9uoTC54c40td3qQVMf4ztNmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785173435; c=relaxed/simple;
	bh=nTeX51MPgg1N/BszF28hX67+5VQzkHY0Bw42n+WSva0=;
	h=To:Subject:From:Message-Id:Date; b=jqmPVf//j3kUtgNYLaGILXTP/TnRyQf6Mz0T1eV8YmB2OhJlPo1UMcmRVxQ7zo/cV9dwE/GVpmQuhVZqTHgtGe0RaNMsM0Cf/2y2iSQletewPQ03yMibx7HffKmUlLi+AeSdOlC07d9nZJ6kmG1LHcl3pXApf0uQlq00psGEGtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxFoAGeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxFoAGeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD61FC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785173433;
	bh=nTeX51MPgg1N/BszF28hX67+5VQzkHY0Bw42n+WSva0=;
	h=To:Subject:From:Date:From;
	b=kxFoAGeECqgnCZ/DoWAd8ooiXA3JZ5ydErI8YnCgoORNDig0NnG2le4/mdg4+PQ31
	 GQSgNEpPtuc+kmBiuIXeic7jbwtFPZgQBLtwusB2od9M/gryzgIRGm79eORawzbAv1
	 I1FqdzIH/vOR1dkEw/ZF1st/reonQMgf3TnOpW25L7Wio8lQopEDZPLYw7dhoukYtv
	 QWSwalhfXFEu1zF4yLxl5h/G1i3JJyBlqv8XuQHOzD1foqaFHdOtbRttbaGBJfEIJI
	 3FEHo9WaI/iP+yEikJwjlH5O3PHfF+9SARIKyPEA09OkU+f2jBnQb9OslvVvayhfCF
	 9BoO2heJ0vkmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1ADC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517343368.29444.4937592174494831001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09e24ffd1079ba5374427665b8d62e73f53d0844e742333e5488558637ca8b9
Date: Mon, 27 Jul 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785173433
