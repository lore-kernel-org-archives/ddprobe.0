Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD8319D899
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731940554; cv=none; b=PcXfDsvMU5cAEfSAgCpLm6mU29t4wSIlNvyRLjF4ZCdQk/f3kSVHWcogpRCGll7FwQlXT89hGAAaj+iCsaHBjVAqBGetFJdDMmE0P8XbewFxFBBnEGwWlfQI52b6h5LnyDN97LDbPENb5tBByHCpS14WeguBm/yo6vlwKHZ3te0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731940554; c=relaxed/simple;
	bh=rzRJkKGVRI58A4JlnX7HN58v2DQR2xKE7Ze50+iRvkI=;
	h=To:Subject:From:Message-Id:Date; b=cSIbwv5ENm4TUfxVUpcKy1CN4wRoHFc7zkF8S/4bR9sEDIWOZ8AXtTaBrPy1VCdhkhj8XXWMf8CJIe7x72mQPgth2Zw0An9xYLmKPhreKG90++J4CcueDVd7SRjOWXg7RtQ7i+BbtTJ6aPDveB66ZU97+Cg4FSn1/9EAOaXdNJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cq0qwdDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cq0qwdDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59EFC4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731940553;
	bh=rzRJkKGVRI58A4JlnX7HN58v2DQR2xKE7Ze50+iRvkI=;
	h=To:Subject:From:Date:From;
	b=cq0qwdDrXkjHK/tlbK4DCOsTuzSo1kccyijFpW03nSF0EMzV31Hs96/nQVRA8ugp6
	 AtrYfUc603+kWBAtc4VTbt2XVLc+jvTvWX/JmYe0XEONC7oBe667OcR7reNgmSp/hF
	 9HSWOKq8S9k9HI2ABIIRr8wQE3M9R97LzKu2a25Y3BUTb+chOijWghKmuRPD0lkmhO
	 rjie+MnxjzOZWbDjaPtiy4rGaPtHLAFvmlz5Zb/D0DNR5HxH93vWHXpCc/hTMsw62V
	 9DfjN4pHiu/qX4WUagXjdygfWbAzLPlmRQRfsWfQDCIOYixq6RGq69+u/xxa1FMstO
	 j5k66hS/LCyUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EBDD4922A
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173194055360.16945.3388678420850945812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968c4e764ab41d72e768022f75e8d45e3ea02e113712804ddc726b856d4e8491
Date: Mon, 18 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731940553
