Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6153921CC51
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764983574; cv=none; b=sfUhNB/ejLNQb0dBd/KcgcIFxF3PEtvE0Ohxl8o8EP/MRCTXVBvWektgizll05qDfm5rVXdCQwS8XqEzydqyflW/Ul2ynppJCUdKE8iCd/UdlcPH9pWgwH2xzOyILUpghcbyN5q42Yk3t+txsJ+oroPmGVXNYR+YuJYxm4CvU14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764983574; c=relaxed/simple;
	bh=Ia/16imK4uMxCvRUDfpOq6Ts/KSFri4zezFTNSYhDz4=;
	h=To:Subject:From:Message-Id:Date; b=DlZSriXucOWwyIZH0LcxDfTKAsPeIvSffNp8BzAv+CWPfxcM6mB1Q5psLK7QIn6y96oz6HJjDUDHWb5ukuQnRLL24Qp1KPSL9DbxTheMZqo4FtcB+vcIJDo+lfJgrVVgG1znAZii0hbOms8zyNrj/V9BDGeyqV3fMLsuqUqDB/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2coGKk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2coGKk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BD1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764983573;
	bh=Ia/16imK4uMxCvRUDfpOq6Ts/KSFri4zezFTNSYhDz4=;
	h=To:Subject:From:Date:From;
	b=L2coGKk0GuruKY1lpluPEoyAyWSx/Uz+ITvN67YLRpmgC60AihaAGM/E0l0NWBkIB
	 MlCBMqLXqF0sOa2yMgXYWFVivrq6/LfoWcj2sUvCd6CAnebda9nFMYsFU07oWcSeZF
	 UCqmqHAm8LtumhYjgqtlDOvaMikPO01w+0x7tl5zW4o7b64wDLVnnFadNdoHa6REEn
	 byCD6wrwDH/y9aR34VhiTPsCjwy1lu3BTW1xfHQc2D8+haV37uk3k+23Sfo67/F22B
	 c97dFY5irPLTb5PDgJQkp2qRv/tKHS6oV5+oVLLedqMzONZD0kjyBS+I9gzTZDSYVE
	 OQwzRad/oSiJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE1D3ABD6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498357360.22489.8894952579699591521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27e307e0f626d1b4c7cc7c0d1594f56f4b70c323a2ebab420267ac49b368947
Date: Sat, 06 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764983573
