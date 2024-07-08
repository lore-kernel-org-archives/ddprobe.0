Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4311A13DBAC
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720448783; cv=none; b=dVuLGP1cbT8Dmb7t/1kNhv2y1hywuUN0O6GQeBq85QhKupKUgsfp7tQXLakDXjTelpwzzMZSNCsOtKhmA4D2KZW20bHNc0lPu4/bWR+NVa5z2tgQVUm2QqfI0G2s0kmwm5LLzcYR0zmwf6MYWn5l3gI7TzmqIO8Tx057w32K6XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720448783; c=relaxed/simple;
	bh=u06GxNWED5Y9uQMmBrYt56gQBo6EqHKDc32QdPagZe8=;
	h=To:Subject:From:Message-Id:Date; b=qKdUZxWk3uCOjpiqmP+nLNDVeqM09c4v8C0EZNDE8/556+vHkNSa3H+W/gNheOvZ3PsiLcr3nT6N955yA9B55zjLuIyo+baTY+2KK6TsVstrR3I7AfWrFOYr+2SVNrBlDsmZcjr3AyBm845j1VFFtIQxj86wf3h0WDkkMYU5Sss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMeBYQuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMeBYQuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29EDC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720448782;
	bh=u06GxNWED5Y9uQMmBrYt56gQBo6EqHKDc32QdPagZe8=;
	h=To:Subject:From:Date:From;
	b=gMeBYQuon6h+8QWpUi22c4x0nZgtWfTrmstfw7CvsBAQ+hb2qo+jYJ0dqsaUvv/Re
	 9JrsHWEYPsV6OKv6J14czXZOurZP4ZOtSa8qp4Imz40dcVYFPuv37DSeOLikWPqaEh
	 8g4MeLe3+m+v+uOGyEDb/vEJQL89u4qCrKiHaUVF2Kig9KYkpF0+WGSlWl5aJFI+Sn
	 p8+O1Nh+bvqL89tX+MtdX+mvNTFjC08rGSHCskHw5eMYjbzEip59ENN5U8lSiZG5D2
	 L8E9T0EeUjBspTQXb5iHWaeA3WeMT6rB6AnhD6dr/8ygEcNdCLqLn4mL5LhxUPd7DE
	 ywFoG4P8i9tQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE815C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044878277.6113.7980023336275575051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6dd5dc136d344f66d6aeab89176a132b712faee1158fab6de17fcc19f453a9
Date: Mon, 08 Jul 2024 14:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720448782
