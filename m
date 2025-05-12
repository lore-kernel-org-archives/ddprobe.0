Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9D0171CD
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747084194; cv=none; b=OdakZeA2c7PoPGPh4IR/azIr2t5evryv1l2i44k4D7t5gE9s5XBNS+zpuDrC49Hihj2TYwEhLHK2UPEiP/D7ioHp/UcpK41QClVlh8GVcJ7DHeWIuPPux6eNXFGzSji3B+9OiN+3rZv9xBm7jQEINXQwFr3Vjzl7IdTup8GoNNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747084194; c=relaxed/simple;
	bh=0CWSbEpX+nfsavpTQeCYwJbmD+JXj5C5YqLy1inDAYM=;
	h=To:Subject:From:Message-Id:Date; b=hJrJi0Yb7awF8AWLUjVw5klSKBFkZucICafit6maY+0QaWnxGsNxEiS/fkEMSjWwFRjMAB2M7J78s2CnLVFMSZajWdL6BtLxtSA4hsSLh6LoG1j4bh7X5DCW7oqLL+JHEOYQMMLXEBqmna+yjzj8MquYdoNr7xlA1aOjXhMeRlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWF0sY1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWF0sY1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8320C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747084193;
	bh=0CWSbEpX+nfsavpTQeCYwJbmD+JXj5C5YqLy1inDAYM=;
	h=To:Subject:From:Date:From;
	b=GWF0sY1EiUn+8jFwYn16leDaL1UlblfhBss61jpSnyT8Odhsj0vUVBiS1fcloMURC
	 QpiUDNwOIdhRloe44H5lgvUX0bu8fTZ+JvmLkMAE0WAyCtdxvGFCuUkqXfTqdnfxLo
	 1hvg3/aNLsIO/sceF0MtGaFFmz9r8G5D0gKwZaLQsR85PsBFSzQNMBj8aq4Th03NMn
	 R8Zg2gz2aDtF/gKJZt3BQrsWoLG04fQnubATjx/jgEidLVvcmTgQBecGDLdPbLxYca
	 L2GwnW1icSt6RdWRPCRLu2DDFQKE0vp5WMAgFF5nkplLKDz6vSmkisztyqvgGq7jHU
	 ee9q2LO5FJiBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97160C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708419358.19553.4726601378234860464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e4dcd68b705e3fd7b7d2ff59e73f1833640992eb83500fd245aeb8db66d830
Date: Mon, 12 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747084193
