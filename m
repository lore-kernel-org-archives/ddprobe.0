Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570733CAE68
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779083434; cv=none; b=kcfTi2Vj4Cq+YGMEHH5P7TUg51zrswIQ0ulry8L1xCOPFTNA7aZkp1YZjXmAgMf9ClhOn/S8NTzf4v2mi+X4jK1mlhmR0NmJCp1noVcrt02RHBqkQ9wwJWupgP309paSUCxRN73H8x+8JXG058KoGofr5GTmnECkQRag8DJ8/g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779083434; c=relaxed/simple;
	bh=CbGY244VAG42dNpIx6K72R+vF1OGblhchMs6PdeSP3M=;
	h=To:Subject:From:Message-Id:Date; b=avVZ5qLDBlaHnp/lkTKkopwaU6ySI0DpLCigAFpte2eTkepfl3NNdWSRWF7hEurmmDYCzyon9trrxvLdeXpn9v7s/Q/ZjfLMINI7UVy54OVN/Z6Jnycu9HBKmA4lBFZZtwO1Nh8MWMVnLz2PxWL7ohSbGKMn+s2d8TuHdwG+qgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEkVQYSr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEkVQYSr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12A3C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779083433;
	bh=CbGY244VAG42dNpIx6K72R+vF1OGblhchMs6PdeSP3M=;
	h=To:Subject:From:Date:From;
	b=jEkVQYSrSEcMDc1oRHO1svQurjCEmV6zPymLD1Sn8RMb/wQ/0/ubv+mJwjo5E3jyo
	 v3JcejxBgu+sog/go9hKc5ajXsy5hg3RW/ZKS1MN+5/iniZ7pfQnjLlzNcD0BuzVvB
	 yMAR/ZrIfNcljRQdHe2ysagj+kcXM6UnkJkDGMfRJV/MlTrVgF809W0CvzgnMMW2xX
	 KCjNv+b9x1gO3LAQyb7NRqPhTcjWfHgg3IFGN/+BFF+c0N8AX0ydBj2mEKhNwGBlC5
	 EC5ZADNg/ckJTldAnZEw66yhblTfnuGzMQrkF/oi+wWoU0ezVPXgd/HT5YsYukeHe0
	 y5H3B8cr/b3ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE93CCD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908343369.22399.5204716602095593810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719795a25c2a5171db5db021a5d2e75d6731572e680bf3cd4e212e6784af8333
Date: Mon, 18 May 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779083433
