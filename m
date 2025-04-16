Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EFC219A97
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744787994; cv=none; b=L20NcfiU40ruVsptyuqaqYIMnU+j8ocbldjzIjeMJFnrmBdejEL+tv8xcjxp8FF5OhSozOjZCCnzeXdWBw7rQdT1f6blDFdy0/Nl+gfh9eZWY+15XcoWSucDSPtiMnpPCY8Z+NtFyhaYJY8vo8RSKP0brz9kRltfHj6TVHYK+rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744787994; c=relaxed/simple;
	bh=V8CIy1VQafa+hEwQUWmijf3l9YyEpgGWn4vtZDNt2es=;
	h=To:Subject:From:Message-Id:Date; b=DcL8Nc4tNEYBk05ygGNjiGW/L/Os5F3yg8BzcQsoeE0jaaG9qTrgj0EVxtgFOCIkKubGXA5SjmVgDEnNII/m9d4hktYLbRsoK/qgDewSRjrbpRYIlbgVpCVKDE7uHCxem99wudNdRVN0xjRvZUeQtjcGsNDlzYHve//RNucL8BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpiYXFfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpiYXFfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F8FC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744787993;
	bh=V8CIy1VQafa+hEwQUWmijf3l9YyEpgGWn4vtZDNt2es=;
	h=To:Subject:From:Date:From;
	b=qpiYXFfxX0BdZoWivJUzomu4/44KpKEelStKzfAvTjJ0LYoWaCKYpS7U+sce4w/5L
	 f7aI4Nr5guYDVmN3vdZl5cCrdzA3RGTFuU5SOjJXPsj7EfgjD/TIOzwBENkjneJZGS
	 GQr1HanLFTC4nUy9ZC9clln3kE82oz8obI2QZ5ed0K+bs6dl9LKw1ZgxD6CCB2pDSZ
	 8Y29n8w0Ju8EA21QTRd675+PWKBaMUJXbZkNilvNm4nds4y0VUrDEeG/m+djgRIzme
	 SsGLQgmPNmWW2qAf6U7wvZnqFFUNz5incAF6WKPRztoBX2PbMGxDsN1rEUXZj4ZT+q
	 8n6pwox80KIXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94359C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478799359.30264.6283483600450505935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67231586632b7fefc39feea3947258eb56b9d470031ceffa83e2939ad13c59ac
Date: Wed, 16 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744787993
