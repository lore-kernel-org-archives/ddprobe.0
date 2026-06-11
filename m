Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36524351C06
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781166994; cv=none; b=EVnHEUwbYZiPS4Uf886l6VCsYYv2BW5a049AOLBqbTxz9CWWkKhILCeD4E2MqsyxVg5lw+jiCZSYjqte454kAEQI20+W/PZHQb8fM18JRIctwfc5qH1Rz5I7hOFAmMU32+2jRoRItuyoCWrCdK5OfaT30LH2XiJa4zEebOPBmLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781166994; c=relaxed/simple;
	bh=/zgrWpON7N5MUenSoEZYjY85AAZPEjyftAZvdu7CF9Y=;
	h=To:Subject:From:Message-Id:Date; b=WnoY4FdwURv0Lhob3DuF73uTlc4IhVe0sCnSWbtTcImwBEcDaiiaHe0Hdcgh6E+tzU7dxQPhZRTOv+QbcztoHi1Gc+x3Bz4vT8LkKFkSOTXzgc9BMf63MPE7YRgiXJqrmeGmeEmDg6mprj5GCvfxk9Y5/VgzrbSo1frwaJOHkr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeW1YxRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeW1YxRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB50AC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781166993;
	bh=/zgrWpON7N5MUenSoEZYjY85AAZPEjyftAZvdu7CF9Y=;
	h=To:Subject:From:Date:From;
	b=BeW1YxRRjOe/mmbR+AxummeRO+cY1TuVxgTFGmm+FK9pD74TecsBCorgYHHcGbawK
	 5epa+FlNZZXs7MRyAiL0mGc2KfLa3Cqob+Oh5AGwACqzAC7cNzuwPoFb71mDqfHQSy
	 o4LZhQICO9ChrHfEvysNrN5uOCf5I51mYJMGeI+iD1CbS+O05WUlqZ27qx2dQOrvjt
	 wy3QaG9bqQObJyF06rlSk7fKOoHQs5Ta5bsKdMCeZ1qHpsmdFimjRz2xYopmHxdZ3N
	 qC5/XY8X0EVLuEbwk4VYzrPOvaPd/uUOWg3ogYox9+9l/IUMfiIt5D3jRnUNGBg9/m
	 EMiD7AcA/uweA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFD2CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116699369.24916.5600443943446261182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1ac6e3b44ae59f070bdc3daaee961afb407b57f9e6355229603c703ee17b74
Date: Thu, 11 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781166993
