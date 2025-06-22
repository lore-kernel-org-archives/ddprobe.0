Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA6F30E859
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750571393; cv=none; b=cMSGbTPRlXMXFY3KSC7trgIM93zKjRGPQQyuX+Hzbvy+MWpac0DMqUITvWOj7Y3unNc+20/SDS6LW57R+M6unoEthkKYAQUipahNaLnSmgh/rZENWlFtJjRFRCuEgfe+Fmo2hKtOA2SXlKQzNurJtpR3oGWYeNMZUvdqp3FdwF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750571393; c=relaxed/simple;
	bh=pc9Qzb9znr5wZue7G3btdLPk1g1fm7+fFoZYDPE8bx8=;
	h=To:Subject:From:Message-Id:Date; b=GSlVpbof9PJjekNOq7JzHonBOGePOIg2LIgav5F2xckTX7QePGazTvKgcXDKJ07wgPhJdeYuM+b4mJYAvlOak3OpDFcui01uuq5tnqBkwBj0uD+wYr5EikcFj1xv4SUMvvjKHncJjJ7E3iaN/9qIS1BVLQzrPhD8jvviPZ4Gmvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3oMRnH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3oMRnH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85FDC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750571393;
	bh=pc9Qzb9znr5wZue7G3btdLPk1g1fm7+fFoZYDPE8bx8=;
	h=To:Subject:From:Date:From;
	b=P3oMRnH3gHOmJiKrKQl8eCnPh95NgrKEFfA9KO1SaerGnmhKSqm/xvA1oUrcWO5qD
	 cIVo2XZPY544AlpVPDR5vw5NlnerrKrJo/I0MPAzc99Wtb7S1ik945lSimxd0MTaPt
	 KMBB+5k+L5GcbuhbFDFAQdwiUHUdGt2xOGq/IutpzjNOI1MNV2Llsx7FliECe0v9IU
	 Yh5D2icx0hLOEAIOlkRhGyqkYvvDIsjjAkd/+ZVz8EVoJo6yBUGcjnFp3uHB2qksgc
	 GB5Q6PTFF96B6YwvAfE32NvQTqNrucw6U1/tPN98rKLy1Sk8pUqu1rqkxaNY9qCBag
	 DZi2e0lir12gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927EFC7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057139358.22409.12639452210183236234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccea1c5ba220be879381362c4a2442ac50fba61bb6867fc23097c1f915c9a4d0
Date: Sun, 22 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750571393
