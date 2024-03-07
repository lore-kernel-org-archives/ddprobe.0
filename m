Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8F25672
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709778497; cv=none; b=Po12AMG48LNS6WYehrz1DmefR1jrmDQzCMEAinCCZaqOVcUpzWu/IvseLZTcK1b0xERSzgrQ3CPWX+1cKoXd1kxJvBwahzCtGTeNxmxPDul1PWMfH4x24rsCyKylVAuT98SMu0S5vSCYJjEkTxlQs8nyPcDLSj6ltbBjv16ulME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709778497; c=relaxed/simple;
	bh=bEWG+p1Exon/1CUUfJQrm+Z40Gu7iSLV5yhg7Qt/c0c=;
	h=To:Subject:From:Message-Id:Date; b=gfb4ky3Nw8zQfd3aTQw+McQY92Si0Idu+X2M9O4NFAnTQ7otJ2ygTNS/k/iAICHkGPVJ+am8vpHNqiwOGaa007rskzaFP5GNkNsopE8EGdKKy2Z9XKJ3VqxkDBELcIzsuKBs9FuNOT4YazE8pMVxtdrvU4FAOqN4q3VvBvayXKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQ6INXLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQ6INXLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A2EBC433F1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709778496;
	bh=bEWG+p1Exon/1CUUfJQrm+Z40Gu7iSLV5yhg7Qt/c0c=;
	h=To:Subject:From:Date:From;
	b=tQ6INXLdYuA24JpNMZH8bSCfI54b0+FiRIcJMXGK1S+x9dgPgHL5qXeH509lFlSZm
	 5e5ZaM34ADufXn6JHt2W+J0Ril4eQ76Xc3ZqLQKDGSswEbPiso3k/ge51KTMvqPjsK
	 K9oA2EFBiUOF8hiJ+mCjGFVi6w3c4Ukn1AVFOWU+7sdfAhh92ZoIv2Vw2ARyuERtcn
	 VKJosu4o05pRu2gBGgPKOYtZTKmG66gJ2ZNbAa3fLtHr0ti6t5IrnCmLvCFL0mwn+m
	 wQehuOTNkUDRTHFC4OPQPVyyxTjqM1gQ4o7EaxTKe6podLeAeDcZ09KJul7gqp072R
	 YzSOS2dH3vTsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D3AC54E41
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170977849641.27857.6977971020838080476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f70336507e8549d50654fcc99d4444218d2478fc4763b017e1140a074e52c4
Date: Thu, 07 Mar 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709778496
