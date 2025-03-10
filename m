Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB40635
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 01:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741568934; cv=none; b=eM1lwRcyofnAhdRhgVatMezlHfV3ehR8PRQk3mD+Mh7m71B8wO7PMeF547JYriFx2K/wfcIEwOrAuzg4fdj4Mgx8vkYCldjCigP3y/eiGj/bxUpklw2CqiAkpuvYDYR9IEICvFL/Vr80acAluMIgQCFH5NqIMg3SfP2b4XJt7gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741568934; c=relaxed/simple;
	bh=F9iqiEPL0TLadu271HsCch2HxOYf5DWpQPDtBB9iS7M=;
	h=To:Subject:From:Message-Id:Date; b=c1mzPihv4BS4SaF3q5aWV56tnTFKzxY5LKwdcyI5qCiCXHFy45W7jRIk0la47Q4tWVSTDGTWck17GpwOoz55baW7Dbbx2WJ4e78QgNx10YchGy2h6/lgOZXUm7Z3ZU0VqzZW8BGZP4vNEN/5EK51aFF7esDUAN/1PEBj9RTPrFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfQJCUWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfQJCUWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B9FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 01:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741568933;
	bh=F9iqiEPL0TLadu271HsCch2HxOYf5DWpQPDtBB9iS7M=;
	h=To:Subject:From:Date:From;
	b=kfQJCUWaU09bLe46lq+zfJzcHTVU2J29DCZOQpNkfjDrAyQB7pDqnBXU5dkriiKoZ
	 zYV4+NxDTa3Fv6aQu5YOCjzZd3EeLEJWxRO7bbeDva1WMqnvF0uqN/ZmESXV27c7Hb
	 4sqULFkH2Ftiow6ysBgC6VYwwar5CtiuSlmjVi5IJ+w8W+CghBJMekzESxW5P/GG9e
	 N/+fCu1lHd4r2cKuxZNSv3iAwr5IlAnXcB8BwpfDjQ1BFxHGFbJUZmEClCEozCIcKT
	 wAuu/JfiUmH3C03LCdcm4GBsGD6TWEYI6QCEtQcVLpehq+2GdSQt2zR215brQiFcYV
	 9eYvGyIw7Eafw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA0CC28B28
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 01:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174156893360.21850.12244713148595738504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c947bb66ca07169c5225f278fc72ecfe0660577363734b0a951d6fa6f679f5
Date: Mon, 10 Mar 2025 01:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741568933
