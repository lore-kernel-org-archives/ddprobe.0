Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAE71DD0C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742296195; cv=none; b=B97w5kXbpVvtLH9BLEAiF5y0nVOPPHJd+6rzUuhoIE3JxfaiR24RApVhHGhcFX2zrO2Xw9BWJqUud8YRkh2ioa0F8hrm2R4+GpuBM6jHZGs8YxEkhHo3xRpxFMUQivqdwfJTC59g94fHmp0RiFOYdHD4ZSpTkS0GHyU34nZfE2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742296195; c=relaxed/simple;
	bh=bTOlD57ZPVKUoGFlpLvVME8BN8s8PJ8oW1SESx1xSRI=;
	h=To:Subject:From:Message-Id:Date; b=tkBrbzLYx01JaUjfni27gvASbVScc4x388XmfU/JOPWY/a8Vsmx46usWI9Ub75bZGFXZuwOy7hZ9QDlgAC/kFBnr2kgvms1+iX3f2Vwa1OFJdpnjeRLh1XuDwb8URlUAD+KfOjFPE0rHQVzgDPyhf7fh5DQir4Nnad3Kc1T3kew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Th7Ss1Tp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Th7Ss1Tp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6D2C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742296193;
	bh=bTOlD57ZPVKUoGFlpLvVME8BN8s8PJ8oW1SESx1xSRI=;
	h=To:Subject:From:Date:From;
	b=Th7Ss1TpSzC1H4NlwqtwEx1sMCrLGyzJKpiYfnizgQW+4Q46rhevhXjYY2hyLFF+O
	 sXVQPIBimCZyhPthwfobytbh3MzeRhvnzOv6WZTbv24ND2JkhXLHhSs1yFKNSktQpb
	 mgL81HGtP+YGgh8Vr7rV6M5yG0dY747xXzuQAuXTkRGcuTR8GOyoShNhUngkoxFkhQ
	 Gi3Uhn7jXLeQDzj7ZYMeCA5NgYUwopg2B98OEWrcd0JjPdOmC2Ty84xab3vJ28eB/x
	 4DboVxZzIJMz8Cg8iUh5r7HOleKkOit8yItbBZpJ2eDnvAWIRJlIGOJEXYHpah+N/Y
	 QTmjiOOKcA8kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12DCC28B28
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174229619364.19707.11462774929470890060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1426c1de0837a2d585dbba1fd9366f08bc1c6851a109e8a363db5f7e9589a49
Date: Tue, 18 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742296193
