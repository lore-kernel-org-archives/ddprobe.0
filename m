Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4428025C80E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783450714; cv=none; b=cDchf3loRimSZbZyz8qAcwMCLCBDocHkwL32w7e7T3a+EZr2qr6N4WMZlSp2EkSsM4nnfynyuuWaaD8eJJPAjaXso3yJ0TlmEsN1BVeiBmWxThE9B/SNnBQC1UpQI83m9YPnSJBwovcUuK13qqjkvNtaUABh4748XZnd3aGIcvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783450714; c=relaxed/simple;
	bh=CGOLuIQgccLhK5J7oWiDFIzAx/0xC2BtvkZdKFm6y+U=;
	h=To:Subject:From:Message-Id:Date; b=LPvjyOC/7DWVPLt5UP14z19PFmzVNetbfujToAs+RA+NxMAs5a5HacQp/NRXX6JyGDHUeHLRiMczFCXOZlPJlobtDPBO4aqS7nTKWAD5QUQ2x/b0LbLFwGpRfqub1UOGu67KPEr6C5J/CKKQfvaGT4yyvW0qVmErW1Hnw6YDsrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfZkKene; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfZkKene"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEA6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783450713;
	bh=CGOLuIQgccLhK5J7oWiDFIzAx/0xC2BtvkZdKFm6y+U=;
	h=To:Subject:From:Date:From;
	b=SfZkKeneCqcayf+LisALlDQFalLi/XEryoigM3h/yk4nVaJw2txrxW8fYvcKRoXc4
	 mS6KriMMKFMeSiwj7rDyLUUbjv8CWhdA4TdPS5GhsB62A/U2tXVL6Gd0Ul8NNT6QjE
	 5Mu+GYEDgp6QpxEXBirMMpCz7EkL4Geo2M/hIBiaSVdMy+5ui2evh+EK688jtKxv4u
	 iHD8a0V9EVrFDBnFxC6DCzkNkI5wEuE7Ef8FlDBaV6I/Bf+5Imy3gTsVxDVkt4L07k
	 28YMV+pTD1qKhbnGOHNeJPPcFzXt43GLonyTLlGOFDQUVVBztjLA3qArWLWikeS/f7
	 ogOhcDBuUMFsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9843C44501
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345071368.16802.9471600708716008112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe777925ed44e3157fc1d48c0cc173f90e6fe598c9f4f3c658abb69aae6dd8fe
Date: Tue, 07 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783450713
