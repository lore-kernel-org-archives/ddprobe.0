Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5D42F1FFE
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756738794; cv=none; b=DtSE0Jz3QIFthaP4G0vrQIImuOntQrlxdhkrq3/ZXH+kDx/Fjs7xkxAlW159WJS8ZnNA0qO/52l7KNRhiVbp6WuKutk/+KHL46VgxqG8UNiqw/QNBcPdjE8Wz2P3Uqa2h0D25wJtoALDupcGqcMYOJyEZkXga4U1SfeFnC/eDSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756738794; c=relaxed/simple;
	bh=Isq1WTN7ma0MLYOXpVNcC6poCHaJow9A8qxtM12Zhts=;
	h=To:Subject:From:Message-Id:Date; b=EbO0r6TtL8sT1JjG990gL7zBntt1NXkMTcE7ud0cG6XO/XrVtFVMi8yZ6Fpv9vlyChG+srUsz1s3ObVUnUfpQYAY6Q0eBhL2Nw3HSO9VI6CbFHZBOzG0NimXo4Wpu+OhbqxUGe26ekDnnzQ/LTZoVvEGIf1gckzDgHPR/gaAMwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNPg+1If; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNPg+1If"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47D9C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756738793;
	bh=Isq1WTN7ma0MLYOXpVNcC6poCHaJow9A8qxtM12Zhts=;
	h=To:Subject:From:Date:From;
	b=UNPg+1IfOun5Xzy7ISx7apWeo/GfcuJds/xm29XRLUMPcFXxiZGy65Tb1FG/pXmpX
	 0uJiJppFjHyWOONbHARa9xeLKcr7nWkylWVawxextkvYk0ktrsWgKHS3VFbgBwLrMV
	 z3fVjQutc6mciDPeC0cPSlEzRWkbvHqy60sYYmDSKDDjB6bqSa/1FBStS+2D8sATuV
	 EuBSGpnvIpUX3Hwhek5W8aFwtf2MWA2LQ6Nf+ZvjunnoUMpNwlKq1oM1DifqfdWqnG
	 B43XTOtjpX3vmfQ6psDGG4IB8xXEX6YjmXTJshuIDw1Rd2bmsIbp05elE4jTdWGUDh
	 4V4uZXewvdo6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B7CA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673879357.24848.4666270807601560422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8afa8f74dd7d09f66fa74477b423a7e51b27cccc35d5bd03c30be6d38f71d1
Date: Mon, 01 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756738793
