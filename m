Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D361586CF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737521754; cv=none; b=Xs7CHYd8CrdxVj2V+IIXRFr2XOYzGJ5SEZB2sqUIkZfvW5rFTfFgYSnhDNqcoZZ2Hy3V2W/EdIRvXWohxQvusjl9U5AGlce7dBYe3FkdJtdiBYHJpmvDo4MPv+3JMOItoEAJTPU0ItAUpgnn1boX7q/8DzYlXm5bOGdnzJiWroM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737521754; c=relaxed/simple;
	bh=UcIuX5nzDFAy/DXEk1Grjn992Rp68L6XPa7nnpcoHC4=;
	h=To:Subject:From:Message-Id:Date; b=BFRCGLxrYVCe+wNj0AcrNfzvjoVSOMQ4fPswJoBIGg02otIR/+T2He91pZ6U7Vbp1mr1w9ZH/V3aJRsHID2Pv21UBhng60d2FerFBsDAZ4cEPumohm21tfGQZRRH5BXtpppjlJJXo0lSGRAgGtDlk1ESNZEeOHdSYXFhmcz/0iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rrl2hZjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rrl2hZjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE8FC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737521753;
	bh=UcIuX5nzDFAy/DXEk1Grjn992Rp68L6XPa7nnpcoHC4=;
	h=To:Subject:From:Date:From;
	b=Rrl2hZjnQc1ZhJWgYpUkQfewp1u8/YPVQHSHwQiuUaW5vlUEluO9+iGicUYF2BBCP
	 62GQf7hYAjYAB4jaOVNnvKqEv0HK0qsV1+rbG5vnSY8hUyj03dmLgdoxhATC6uNOBs
	 68NNqCUALxoEw114fESQEjh7WQI/Xo9FEL5cSLL6mLIBkQG3vDgZ0WIIOsswpFZyUg
	 mA4fYCcWlpUrh5TKvYg5fvW/KB1N0qmxefjbAPyrNEOxRzew9djNxrmGx3uX4Wm+Ej
	 i91gRw9ItR+IQDVd9+KjEU14WsKJZk7iPPGz/I3iAULPQ7gRfqnutzaSeiXLpVvXMZ
	 LTYvWgYC5sezg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E37CC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173752175360.27026.10722655048539286030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a755dc330db792bf54ea94894736761916b503faf9ced703920b607a6d119bc9
Date: Wed, 22 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737521753
