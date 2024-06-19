Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C5E1400A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718762963; cv=none; b=Z0OB9iKAKgfjiQLWVotzgp5XMOg3uk3CroY+mRZI5KlwO4s5nsaNWEYsiYXtPpun4nrgfyKtPSj4V2o0BPVTqFjg/JYn3eZjAhmgz8kD9o3v4ToMmKhNcwwWMJ2Bhs7QpqEtrsMNliOihDef4C3ZFiN0FQ5TxXbSRN51aZcDpBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718762963; c=relaxed/simple;
	bh=vil8t1AZtfDsG7VBPlH9boGcfPVmeHudS2Qrpjm7AAk=;
	h=To:Subject:From:Message-Id:Date; b=CNZwwGe/fuiaAJ7MYWVDqy4q6uR+pOCWlLH5z1/tctwaLgIJl/uVxDnkfeGnTrtzfhqkasAeM/y5fUDibDb1Y50k8tS4ss0Uwp+azCV+ccUd+7csu/hIqOj6EMJ9JGWUvOfRzb5va6yCVq+u1EUeVslP6/gJ2Ln/UZyxvSBAl80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQFf4hME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQFf4hME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52F2C3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718762962;
	bh=vil8t1AZtfDsG7VBPlH9boGcfPVmeHudS2Qrpjm7AAk=;
	h=To:Subject:From:Date:From;
	b=eQFf4hMEk8FUgPNeDSXS2alndNOr1066qlJ0wkCGW5yfgU/bNm+BLXmBEH5K2HOXo
	 zllMTCTkGgBhQxr4Q++Fabnq5kGPmFSkXYjS5AoXFK02B193pQanjzqMEecn0OUv83
	 fMjrEDivaXNIg7SVkLtW1h97IWQCzFZmN6AP9w7I3qAGo605IyLz+PECDeMVgv09tT
	 bq1yOPevROQcrzwO0Z705Uxh6au6bWjKTp6i34XW+XSnp4/FwmQzP1bj8VC6dTV2iI
	 V3w/H5/mR89GtOVAKmUBAK8/awUSOognKf2Kryk67hNZM/mBpCWMRV9raXaAfmjV/r
	 XfZOrutsYzCxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A56C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876296276.25745.15181989263349155495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b9d0038faaef01515f0d3fef496bbde9b1a59d3a506e54ca42eddc59d6d98d
Date: Wed, 19 Jun 2024 02:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718762962
