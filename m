Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A3E18DB2E
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740591534; cv=none; b=aaXUZcgT3D2H2kgwVx/KxaY0AIsXOGQTVpS6+16PqFb7UDgtM8l/SRCs3t19yvIbNhYWFiAPaOQTuoo68M1RafDupO4MNx3KK0g0VOZwSyF/VNrjDgQK11CWoDy4uidHIyicBoEso0l0w1CJAMvkfjF/BLycBn7e/EpprdFAgUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740591534; c=relaxed/simple;
	bh=ytpRUT34mImY2Nvs4p+VstrltcM/CRRlR2AhvuaFL7w=;
	h=To:Subject:From:Message-Id:Date; b=jr+nOrV3OoL3HuidQSuUXskpHRfQ3wxEIdr67L33dXyvWZTbgQ/tykmeFIeKLIFUH4PF+DwwHNaHI3lQfW0BpP9pjdCF33otSVbzbUQOwWyjddXgNMwe22bOb2zooqjbD18wAUGHRbbS6VZ+I6Q1TpHygjjBxs3cm+VN5+J+/9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLr1oDug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLr1oDug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B72C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740591533;
	bh=ytpRUT34mImY2Nvs4p+VstrltcM/CRRlR2AhvuaFL7w=;
	h=To:Subject:From:Date:From;
	b=kLr1oDugszqycJTFRGj09ZZVrpjwRM2XBqaf3AK70Vp5rRKKfkJHX80O1xiYsSgfY
	 zqZjYSd1Ykmj5/fzF2CnAtyOVQ3H1WhcDv0IPBnlmxuBBZMQzyPCHz4giGvSnaaC91
	 gxxsjssL5/VZYjjJ781E1QGDRprcSSy3PI6DmIDQ2zfKEz+1/2wLkByeL4fTbMRstA
	 bDn32wIqZvGpHhbg23kqdX0HElzWBn9mYViz4ZkrqMSPdtmNO0f8d/75NPXfKI/7Ea
	 QA24A3CxtplViRmsgN7MVF6Y/M+2VebKEFPiunTj8r9K/Q6SE9/oUlLVs8TSa02Y8v
	 KPuPMdFZkdmjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D94C021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 17:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174059153365.13111.14833535507045926428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8df64a65b9eae645719f910252854865a89e27e030af92044afad3c9a3933c7
Date: Wed, 26 Feb 2025 17:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740591533
