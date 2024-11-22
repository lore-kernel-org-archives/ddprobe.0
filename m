Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE40EC4
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732248354; cv=none; b=aj8Tp4AdELXr+n1XrDR2quuweIFwotGaQBB44Ece0XnS7Qoa7LfRt/S3SuhPLJxcpJIgd3lUQCXyueZiUHvjKcRy9NZGLnJLBxOPNN5PN6TmVGmXFcZ5nYs0K9W0EJt5u4ZH/sA6ik79DXE8i4ctQ51tMVTWeacpTuej/FVMzd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732248354; c=relaxed/simple;
	bh=JbvI0P6UPzqWFupd+JVo9MMNihbSnzeag2+LXIMiUhw=;
	h=To:Subject:From:Message-Id:Date; b=pIEtPgOxyDjC44D+/W6LlyvdHaa9qoWFSE/djLj4SrAf9eo4JeGdIdKWt/Bg0d6sxadngHIuoV9DXxvD2+rwxIGu4rOFOSjih+NIOFFQ7Ivg8fCazUMD/axv+5XCkIjKtIf2amfz5xZMeFypUa0x49a/6eAZmygPgN4704DyQes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwlLo3li; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwlLo3li"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C52C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732248353;
	bh=JbvI0P6UPzqWFupd+JVo9MMNihbSnzeag2+LXIMiUhw=;
	h=To:Subject:From:Date:From;
	b=NwlLo3liDs5zHlpUHsLCKPzoftRTOSiWX+cY3itW0QR883JJ1CvY9T4c0sAHAG3Cx
	 4R4FXAABe9c0+khjEChflSDh96H4vaEJzLi1PshzWSvdeOvrSar+CuQzRmqTn2M/bx
	 blrl7j1UbKjk5b/xr4ppEvsDohUp53q29X5o8+ucSwb7fhL64YzvQdHFM7xYPEyTy7
	 zK2j5uy+8HPP9dwO9CgYhbi+2LahezXULmGovoClmpR+clKgvk+1l+UHRFwm3tMp2R
	 r2bwu/KZsLtkWMwQSMauoDpeqszSZe7wCKcPU8y1JQ8X/9FzRfKbebo25+Oq5hp04H
	 TFKxKYBVy7dnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C20E65D1D
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173224835358.12848.8348329973242101151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160e96ada1a5a00546c2a54524372e12eb928a6b8b25c877f603b95f5bedccc5
Date: Fri, 22 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732248353
