Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444C7372060
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780386874; cv=none; b=EIWuyMaWOTB0akYkqOQlXcUa3W7THnVMrjh9IgQd3x3lyZoBzveJBfNHrO1J3cxsn4F3X9vOpExmN1VYBsPDxpf7QtGTMQOy/Qhy8VfJp7CweMBnUkWtE6JzGBYnD5hUPLEFLqFkXWq8OzB9Pw5NvtQCKtVhZh4DgbOAigwwwDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780386874; c=relaxed/simple;
	bh=9A9go0mBhxKdYeYe6HfbpGrgtYiZDb24mxgVqht2fuc=;
	h=To:Subject:From:Message-Id:Date; b=vEVd/y6q6zia9GL7NxDyYsmJfqexCybIoiKsjSF5tOQdGKLoeG9HnsC5/zl8zKVxvdOnRv7kflCDzuGnNs3D4TPlesI9GeoMBD4NfZ6l7v4gv8vSPumTDsURW44esTEA3tSvnObtKZCMSKr246K+tI5/LAWJ8OJRykA75LoFnuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POYZQVEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POYZQVEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5FAC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780386873;
	bh=9A9go0mBhxKdYeYe6HfbpGrgtYiZDb24mxgVqht2fuc=;
	h=To:Subject:From:Date:From;
	b=POYZQVEszO4ffWXR6+bLz1jNpxSU4TMKXVELiGXu2nko9q9lYbuONxt9GefHwz+VN
	 wIWk8Pf9OnQ+uAFJnREp53IXB2N6CM7w2g/mTnuXVi7i/5VaVrhjQSUNlhkUXpkkbd
	 LZNt58Kw0xhc88QhEFobG2YK/4FDITe/7MhXH109o+1lEZfbhWlHZfUXQdFT0P4uLa
	 VLSwLopTC1Ha0Lcbs6H9LN7oPCGgNRcix2djpNchlOhdm8DGg6qo5AXYb3D/JHfVok
	 HBmZ5EK0mpXcDovCZpiWjapFvOCReAZvmrPoYC8kadn5cxcoJBRjNE0zkKtakMTKgt
	 9z0ZFTb+V0Saw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18DBCD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038687371.6019.18321233012584041066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c6efa53f309e20b5e8a449343981649ceb40e53d7e11240eeffe3885c8c5a2
Date: Tue, 02 Jun 2026 07:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780386873
