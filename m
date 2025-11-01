Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268B6266EFC
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761969594; cv=none; b=jwEeBF2NgeSyo8/IyHcl3JW4Cg9Ba/ri4KU+mXsXLtEoDOWKrKQgGL1TFgHQMAKQtm0Em7LzV+mn88SNEHH9v4jbi0gT/mBQwlEboe26ez5iafK6D2Lq7pqChUoZB6FicAjt5VSlj5J8T3e7MPEMoD17fDZpyb8q54YMCF3DO7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761969594; c=relaxed/simple;
	bh=zQaA5cITqiv2l5pRQM2/Kr6WXdOJPCeJzvcRtjbLIFQ=;
	h=To:Subject:From:Message-Id:Date; b=nPL9tvmSWI75SpQvJ8g0W67rkPEKeU872mKt5KAgG/Ie4sjtboeViWnp9yG8hpSXd5BpUNcZpFjn/1ssxflS+NYZykdY0E3bhQXrzALs9rpcCzoGNT3V8N+dISEZxNMl4ZI4My0YuadpvFbA2cjBOqI/LBXR/qEo6lCvhAynl5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhY+lu11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhY+lu11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A16C113D0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761969593;
	bh=zQaA5cITqiv2l5pRQM2/Kr6WXdOJPCeJzvcRtjbLIFQ=;
	h=To:Subject:From:Date:From;
	b=ZhY+lu113axN1ctFdtspvqARCNAVR0VaMZBX6I9zYdfXjEkM02FuIpWUaqgfbrNOG
	 xrEa/D5SOwcIFkwanwNjLiLG5N73rOizEeMkjvW5Z+Ueh0cGPcMNmGXKZqPr4WSbzZ
	 NLajSiV0gpB4wwyNjKRq9j8Nwr9jAXhf/5+YOZs2F2BDlOpgYvOYeTC9yUfdXSuflf
	 87jueYOj+dHDuAInIKLPO9rM2k0mOAxpc/DPNPlVkn+axftUz+umLEFIanz4moohSU
	 YNhLZbJCBMh4A1LuiceqK1D75RBa1TnjGF2s31gE8VX+JyqOaCI9/QW5mhzujkotiD
	 /9FSIEEKH8wig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9043CCCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196959358.11562.11462849994655480661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55f32693bfa727297ebd1c70fb103ae8b27f145a6c45c6e5eba2c3de3531eeb
Date: Sat, 01 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761969593
