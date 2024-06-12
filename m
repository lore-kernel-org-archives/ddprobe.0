Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410C4A21
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718154503; cv=none; b=KaoJFfLtwcvnUryoDnm2u8r9jVpJrPE7PmHALwuecjI2qxGZrV0DuO66Sn2lnEbpFAneqOf0c1uZNcQj93W12qtqAk3t00ovBEowZkeJ4TXFMSyD2F32OGiKwPkLyWaQ5oFLKqqw24RLeX9fGoy8iY6qlE72v7y1NU9Fw658qCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718154503; c=relaxed/simple;
	bh=bJzSEeBtWvwt6akoPbg3+w0dKyp81t8NG5UlN+4xUvg=;
	h=To:Subject:From:Message-Id:Date; b=fwmeg+ziP8QgueYeR7cEEqw0ekJc77tyLTCnp7lrlEPTeA0oPUx5+8BbwOWlWRTrF3FObStV2P522eMBQrQfk9o3dDS5AxET2HUeLu7f4Q5AZe+ve2syAPwvnksrkVer5AWKey/T6w6QeqfQVCk5HbHhhaMNbB1Z5Kfw68j+B8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHbXGyKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHbXGyKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D990EC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718154502;
	bh=bJzSEeBtWvwt6akoPbg3+w0dKyp81t8NG5UlN+4xUvg=;
	h=To:Subject:From:Date:From;
	b=IHbXGyKLn7diShTtSp/HzFeKj/qL0wrxyLCtiEXadxhOYGMMfUqISS2FFlZKfsrFi
	 gZQ7amJnCOv0V7nrQiRz54CoPLGWs5C07j6a4Iv9pP+V0FxO9tnpUl5Tv7XlZuv+Ey
	 AWTlUVmXfHehiGpxY/jffmLga490SY+KSbvD8a+DXenSFQ7JThpnHxhtCkp2qJPgkX
	 uNoldhaTPaQ7RulqQMyELugCxWtTU4+obwzp0eR/Apq6xafQiGNsXq+vn71/Sfrz46
	 Vo7X+MBw+YrwiffSLMY7nrIpKupczPcXViWbIi7mF//u4w0Sx/rnTqtspiwPRMfF+R
	 Nqf/vPxC8cJFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EFCC27C78
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171815450277.4855.13846345671932005267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76251cc47d23083727cd17c18c5f788d47de595309837c8b21b08020cd576b71
Date: Wed, 12 Jun 2024 01:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718154502
