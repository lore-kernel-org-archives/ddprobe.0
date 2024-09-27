Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4A313BAE2
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727466954; cv=none; b=M/LHnwPUfKfUa3jvwuRxwTaZhYTDnxi6carf11WS0djQBCDHXaLbJebPs5uDaM5uKXHwUkb7JPBqN+k3/+lJWsTjGY5jiFmNA9mnFBJXoyF9iW6iamENRQkas2epyMdqzqrRrCGR0eJP/60MLHQuQRVkUTX9ov85CtKnt3QeErA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727466954; c=relaxed/simple;
	bh=CUBbpFODnK9lrYRPv7TPgY4Jb3XbBEDTlzInDaObJuA=;
	h=To:Subject:From:Message-Id:Date; b=WAjcXfp1hUbGI/3nq/OSOQ4ymxxFunWImSQL1/l9Z5l3rcKcZYoJ6eHU+asEt0iynUXwH0/x0u3qYj3Pex4tezu1B2b3yas6CMLRxRdPpuFpkdegTOT7H5GFrsb4f9b6PMy+KG3/I9/KgUfTNJPg+dR+pF/HLK6Haxk3hRDNuwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGsD+tNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGsD+tNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB185C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727466953;
	bh=CUBbpFODnK9lrYRPv7TPgY4Jb3XbBEDTlzInDaObJuA=;
	h=To:Subject:From:Date:From;
	b=YGsD+tNwMwJmQms/ALykUIkTE2JzrZtqLGDEKQpV2xGVRANmtK/77Smdz6kgTr5/O
	 wMbYOePNloVBN9PNtk7PLJoZkWKquu3Haxba5Qdjlt8KsJxVK9UxktgBg+FPVgN3mG
	 hGf79GGxCmf1JYpc5I0ZEHGtJL+doXgcXz6Ydhz70v6WM9UveztmgK/VNZMWuTpX/2
	 m3bSsa9r84TLvAUMoYY8ETOrmVhzv8LjhNmWC+KOv7Mku1kxTMahd73DsZOnuPmSSO
	 RZcA1vBqDM5ZxdENfUhpdmdvUGqYoXt7xf/9ccUls/wZZgEIfVef/owlK9IexCPi6U
	 xNmAOOKaFn6XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A81CDD1D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746695360.26879.4298424314451252916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856ca7d2036f380f7d401dc23298346d9cc109ab2b3e579b44298bca9a369484
Date: Fri, 27 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727466953
