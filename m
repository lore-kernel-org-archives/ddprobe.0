Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CFBB11712
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715662343; cv=none; b=CagDtAM/GYVXNfNLKUO9t77I0RL4v8HEcRXDR4SlkfFNXnVOCUjlU7GOI2M8h3cBiL90rvbXeJXHtkADblprHihmKkEwo8G3dvDJfIFkXDTOk8DCRk443vReO1pmX9UlTZ7Vzx0dBW9vKPjUnhDyU43wadAZKSpejvF8nHsTKjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715662343; c=relaxed/simple;
	bh=ozHWrrGbS5WgnIphv8C06/1mGWwZ23Zqhq4nI4ejq70=;
	h=To:Subject:From:Message-Id:Date; b=VurZtqJTtwhMmG04BoJG+Oiv7OF8cEGOCOO6od9x+bzFcEGV8ba+kB9gA8fI+1deTbBBJHcY2ay6+tu4kXnPCJxqjpoowrDAK/iGofkG9Bmoz0111sGL4ZURcuDOp5Ac1lVGiL5va4OhMcCDzuxzo+ol6N0pbd2IVPDyBs7VI8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grzAu+ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grzAu+ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC330C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715662343;
	bh=ozHWrrGbS5WgnIphv8C06/1mGWwZ23Zqhq4nI4ejq70=;
	h=To:Subject:From:Date:From;
	b=grzAu+ubREPqafcGUB9JLHMcwdhVA574HtuUvbX8C4MFzXccpucLdN5SB+nDtHUMC
	 Ldb/KB3cf2pBrPIpKIcZX057jfTojVLK+yg1Z+aqKbrjQoOK0ycc6lHq8ZWaWOISle
	 tgzkFoL5P1Muq4lWkTK4qAzuxVjv+tZ1pqMZDYZ4Rx8Pb/knpXCw421zsIEFqEPRF0
	 ge7LsJ/JpKd0T70atFsPbXCGFJ9EP3lLfz1nMmtcxEhMFoByrwee4cIQ6Ypr41qmFH
	 RdH+gdI4x7Vhc6dlWsl+S3lD1gtUmjR1roN+Bpue6fEUJ9W4raMWrYgQ7oz6n5s1B8
	 RIcoLZjP0a/tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE75C25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171566234279.22788.15622592184948136718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb08364852aa17664a21971bb4332e8baad91b42ffd9d35cd68aa48217d43e2
Date: Tue, 14 May 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715662342
