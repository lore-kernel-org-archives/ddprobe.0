Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21901101E6
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732754754; cv=none; b=UpICogUeqv23I5xaJXS4JFwer05xjvef4lWNkzj7gU26DDZgWMeHbH9I1+XabMQEZt/wuWMVSrisKgSl6BoHo5DwQbplfrqsu5/awKGyTtCL+u6cAjIDOzUqnfSW6Ph86E+nPSi70DPZQt0middU3XrBUPMRdap2sPBtov4/ez0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732754754; c=relaxed/simple;
	bh=ljPfxvEoAc6kqMdG47Hf+LWxZ1LUthLmuVFSyFsenfg=;
	h=To:Subject:From:Message-Id:Date; b=t75IZRNX8TnQjoSGMw7O54ZXhQnWwGgfFbutnYAf4EEUl/DELKBpALk8zLEzgbINlDNII46q0Xa4Wb7tFKOVX0hGMspFf3KwdUBlrbpp7fT5yhkcksmrr71TinJ83Dn908XAhdVdKxD1U8euGLgdEzKT5zwjvznqVzOPxDFvN7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmDcGElo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmDcGElo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D27C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732754753;
	bh=ljPfxvEoAc6kqMdG47Hf+LWxZ1LUthLmuVFSyFsenfg=;
	h=To:Subject:From:Date:From;
	b=HmDcGElo1JS0H8NFPM9IvWECRCBB4eLOtrsXe9K/TFq/qHS6WKbWHw026pcWl4hQf
	 JMozJRe8Pc4jV5bg1r8FUS3kSlKZ2zSG6Y2axD0OLcM3P63S8xfclptT3kQPgb6xBP
	 QiNcMCuitEMkO68sOvOl7TBGvjrIvtwug7XUKglyfrmPKVs7WaTafAh5JiqlN5g4CS
	 KDySHg5e9aqF7MrLhePNcR2chh5/zpfgXlDt1ty53LxvTkFbmB8SZZadwavl5q17+W
	 ZkpEx7ecU5yR9VV9z+6P3TyW8eAv9hIaW9ilX+HvvMRl6WGOBZvmk4w9mM3Ml4ZhjX
	 TPWPqIWRtXxsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944EFD6D24E
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173275475359.8347.15050464336800453136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d9f6b7cc7fdf191bd10b10e1cae5fce3d01b9bc69126b9c9f9228d9fe9aad9
Date: Thu, 28 Nov 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732754753
