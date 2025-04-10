Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446821EF080
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744257594; cv=none; b=b6BwxsmGk5sFxNTkjpnwONR37vFVDuG3m+85u9C3EPsp4OIPm/aMsRW7fgucK0nnz3FBiMrWWbWTsC7RevpX61TNrenlLdwOzZM6tHzfSsUNC+mCz6t6m2XpamNIU13WHSi+jK+fZ/dRqc1DhkkM2MVkwNsw0W0CoG3AsNuvoUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744257594; c=relaxed/simple;
	bh=pTyPSLLcvvAVh7YMyNksTKlJ3TbRo16YHNJuzFDsX9E=;
	h=To:Subject:From:Message-Id:Date; b=K7pVTDeMw9vS5rt/TZ/DcOU/ddemS03vQaAf5ne6dhp6eXv9Kow9/Nqg+2oTpPQEfk0evw+P6E7jO0Kjy09kkKVJAWFx/s8Jn77Do02bCP5Hdo5Pm2sPSrOoBc+so0iNY+KIACFGMdnm2X4ThPW6R7ZOEHFiG5cB7QVFYp0XMFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofKolBQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofKolBQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1922C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744257593;
	bh=pTyPSLLcvvAVh7YMyNksTKlJ3TbRo16YHNJuzFDsX9E=;
	h=To:Subject:From:Date:From;
	b=ofKolBQywJnvsZbScziDs89qyLlT/RMRLqPvfHG/XMZvltuLmnElmHvafZ67CXG5j
	 8zvdqZeaZJBnkVCRjpJHNuTB015hT8sVz7zoA32se2B+D8P6ojQRR+Z7i9tDMuwGV6
	 +eZf5oW7F9sCOrWvpur7TS4v0rcevxGWl4B15NlRR3ROAlV9hcZPckbDKw9EDtkZAB
	 yJKVSNCRnhSAZYUiY3Ch+yVPIrBkZkoJQHFHJfEEMqwiNGgUCWbFUbET01BXfO8r4C
	 jiHxe3bQ03WKWGLB9IIjByv6FLzTz4rbDot+q7t7jjIJI4vZkqKmLKTYlYQFo5pTXA
	 RbnpO5C8xOEPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC9C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425759358.11441.2752170960107011980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959e2af6f63f0cb3d23874d13ccf4f1000561c5c8e84a654d9d6e82735b7ee0b
Date: Thu, 10 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744257593
