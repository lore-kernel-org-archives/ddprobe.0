Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD5F3B298
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728116154; cv=none; b=aZyGmns6CEpgWCkBZKB8oBWrFPz7q7JZb0R223syII+mOYIOa2QuMDFdMz4e4xQ7oclqRhCKUVltt2laVan8zZTgdrav+mNMHyd770e4Ow4xMyNkiOLTG2VEX8nOOh59xGyZoup9bjqx9LVUkOI+rWBroje9h3Y/DC2+VIF4DnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728116154; c=relaxed/simple;
	bh=HlZj5J0SvWZQbmMRLF1cX68Wg9u7XTKkiDXr1otwRYQ=;
	h=To:Subject:From:Message-Id:Date; b=uSRtAEKWRtCh355g3nx5CGEIrOmLnRjhm7YZ9n+wYOUk17LUebi8sJnrpX/DzQaQCmpHDpWDDq83wSVLKEFeqNBTiyFix7haozEWkjtcxYQLnPwM7bzi5BT0KDq6LbAXYq2u+IgcMRLLBwZD9oFf1HG+FhJw60yd+9bdnWBE0mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFRV+dxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFRV+dxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EB6C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728116153;
	bh=HlZj5J0SvWZQbmMRLF1cX68Wg9u7XTKkiDXr1otwRYQ=;
	h=To:Subject:From:Date:From;
	b=GFRV+dxJRBaLOmBQnnSzMNWHBKwMGBR2ggWOF1yVanbvwHWZRsSs9KfLQVy5S8h/A
	 oQsUAMkyFgRJndeWOUtYS7GARUNoT4Q32vAblpqtal2j0OVjluBmdwGFSGXQrf00bM
	 vBquhSX3MJrzXAVTkrJjJ06F1751JwhX3uekVEIDvMACIPAmX9oMLmSiR37Eel+enm
	 cYpzu9fCh+QmOHxwTkaSMbRD32B5HlquDQjqjtbH7ZgGE3szoC7BfWiayTi4BAXD3U
	 L3EH185A2F/7VSGWppnjuTsaXH3WimvQZ17lBqmw3FZaGAiKKOrc3rkEyGMvHg5chq
	 Wgwpic+nvsejg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9313CCF8873
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172811615359.31069.3470052430871276229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7569d1ffe6582138b32a23a814bfd8710b3875192fcd49041fe4191a7362ec
Date: Sat, 05 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728116153
