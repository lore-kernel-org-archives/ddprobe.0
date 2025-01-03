Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE0B1FBE8D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735923354; cv=none; b=sCyH6jYjpxlmcXzD5wKzILoj38SrpH0cXek+pBdTQ9Q3TNpCPEvq1VRBOwzdWg6CkXMWoPXi0DLVq0FPUEozbPBhAM5OyzPs0cTaH8O73fOoiGI8eYPbUf/+VU4ekfbQTfnj34rZn9ZsdMTyMg37SgjAQpN2sYFHZWu0CfB6w0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735923354; c=relaxed/simple;
	bh=wFyfp1GhRQOFFT/nUi2vapdoMYRI/8rYWfCe8gizmWs=;
	h=To:Subject:From:Message-Id:Date; b=Hr5EHFA9nSzdoo/xO6FwgyYpLzaUm+VEto9e3jfwjtWB7J9DcZelYDoSjWVvgmPl+MjUBJNNAHhrJGtnVlg38t2qcqve8mA+2t10ch4xlPPXHlNIR4iHyruE6CYevx2nYzS2iw7YSue9XPihzDNTsvCWpcZf3a3ie7NnNv1kHws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQ4JTsT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQ4JTsT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CFDC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735923353;
	bh=wFyfp1GhRQOFFT/nUi2vapdoMYRI/8rYWfCe8gizmWs=;
	h=To:Subject:From:Date:From;
	b=JQ4JTsT8sKhbcBaHhCGoAYPTV0IaFGYhtSeS/6hgfGfuGkV547UMyyQQn4tAuSj1P
	 Mit/sXl8c4Bequ8k8t2o7x2dwY6sL+KFLsG+u40njrGf1u0H1wt9IafJK6ks53UIsB
	 jn3M5HoKaXWKBM6U3NXr2y+c5jfh+uvY0thVAlCMP3d12u6bXNOz83h7CT4xmzhGTo
	 ScT2tmGl9cnv4vVOrERVG+m3lCVMGpghPI0vnPDvrmexqEp3sNUi+3BAWzMrTmZ2EH
	 JM1nIEc0RNIu0W/EpTr8IiYom3Vx1XGUAVsLrMswMXX3pPQGFW3tK2waNlD1EHYa75
	 Fcifp0u6RUV3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1A1E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592335361.28469.9488337123483254496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e214c7d73cfabc3f60d4604662a7deb081873d22025e5612863fa697097ebde
Date: Fri, 03 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735923353
