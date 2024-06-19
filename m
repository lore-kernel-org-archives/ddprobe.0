Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06025745E4
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718780963; cv=none; b=Vh+EkXI6V9Jg9DohJOmLIeQiwVQ2nOKwDAybGaqT04fd0w5KLwUnkrvyhzAknQWlAAZqg07zEULq6lbMD8XgZR/eu+fDb8puFDdpf62cGpGwKzjPJpcFN3pZM9uVmiWL/Bs5MtbpIXDjpLII5iqz+/fCBrFdyqtC/g5goAdzDHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718780963; c=relaxed/simple;
	bh=SyrwMcmVj8I5db8wbOy8Jqm89nB2n3CqttxI55zRwIg=;
	h=To:Subject:From:Message-Id:Date; b=XJNg/TAc43ogFNfwL+avqPL7Y6cdzE953wEMP4lG/2PIA5FsczqfPOoksMRAz2ZuhWLvFH/Z2o89N0M79N7Y9dArRp0zErC7kGX/ycWNaAjvQrwfwS2G+oYOTnw762PxF8kmv2Zdh7aiy7w32V9sW6TeyjiZDfp7Ppg2jnJcc7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEzRjGM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEzRjGM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBF8C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718780962;
	bh=SyrwMcmVj8I5db8wbOy8Jqm89nB2n3CqttxI55zRwIg=;
	h=To:Subject:From:Date:From;
	b=GEzRjGM9qbHFd5cQop6d6BwTgI5qPsNdTraHu1i/1Hnd7q9ZJXp08b6dlHFX4UxU6
	 /J/a7LlyPaxSnuRfeaLeGz6NnizrLOketE7STMOEMlGUoPjN6U8MEsbLHG/nPUeXrL
	 yxnd1vRwOAlH1koOi7EyFefpIaLm6+B7TMNgeumKPZKEokHNqNxhw254lOwqEbpL4Y
	 FsW7fDIPz4H0zFlWv8fpjrMiZgnsvtRphQmGGeO6hsKsI91Uow1XM6tPf7Nrmh/U1/
	 RcJIlR8hB/wmhXeF5Vcy3pXGWrWJezlp/dQ6P1E1z+jL9sUhl070CiBDRodU7tfQau
	 sv55FVmo+dalQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB77AC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878096275.31596.6198319351058231124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880a4cc2abf28236b39de4656e2f2c5f008ab33089dbc489f3fd499c68bf2cf0
Date: Wed, 19 Jun 2024 07:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718780962
