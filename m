Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CC627B35F
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756855794; cv=none; b=bn7roPZzyobgZK9Vvq4RC620cYAlPc4tHu2LPOkxGyqVFNP23tTPAm8WCp2R5aGrvhN3NaIfn1G7+6D8Gl3P+nUi+RejkdZ+AFZbl1lFPXTtDEX4P5eScWo5RMbW1RdmDH1FLXnikThAoOP3tpbQ5eoIVmfwu3VGEmrGHiNeQm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756855794; c=relaxed/simple;
	bh=YEBEDQyRN13P2cqtOGIx1/fQJ19Pr1A9RwNk/zL5E+A=;
	h=To:Subject:From:Message-Id:Date; b=mxr/f5cG+wUwDnzOcKiTDSwWbuOoM1TGddZee9Db6ltP9pCBC/mmRYxgwSXk0FdqAGb6yK9upkUpSCKufOtWgwHASdiJ9xdRWAaQOlBsMaL2TS4U1hpmesZV4yLGXoNg1dgxB7qAaPyrq1kkihv1ZM79Ak5zqJ8KhxaVzbseuOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUOsOX10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUOsOX10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FDBC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756855793;
	bh=YEBEDQyRN13P2cqtOGIx1/fQJ19Pr1A9RwNk/zL5E+A=;
	h=To:Subject:From:Date:From;
	b=IUOsOX10ISCF1LyogoF7F4DjsqALlDoCj7rCH/7s6m+rN4SSwb8CX5Tfa09pk2atL
	 jzkCf796mqYHzny4osAK4dfGRdUIcCV7yQS/kARPR9KWL7RGphVP5ooxqsVpaLF2iU
	 qn6U5GFiwrEtJDJhDiG+wUFAeir2mNNvU5C2wL/Nzvh2cr58FwgxvSgNgSpYOtO2+K
	 YbQmK+H4SvrmShNHwDjkdrwEgblUV6OUbeMUCZZGzwq31ExitNVp7le3B2M38xLPcH
	 V+azUjDSwQhA7NQs1E9c8B7gddiG00NrL/vb0A2OImPRx3+UTCJC7pqX/eazCd00m4
	 j6TUuwNGfaM8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B8ACA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685579357.4038.1997967921665200397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2418cdd38bb506faa32df8dbcd0624536e3a839b6ee7428b219354065f2267b7
Date: Tue, 02 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756855793
