Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F0F310644
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761584994; cv=none; b=tJbMht7Q1QBxksTfM/d4ZVqLf/BOpCchMeDGYClgOJHaoZ7r2lvQZS+WgaNg38z4ur0OUu/dkyNT3Y/VGFZ9QpnxivwGbVAoPEtdQNjdSc4b0fARX+WcbvGmwP/xVba/szq+1isUpzq8K1qSm/7NXBUWzWzocQwyX8MjykyLtj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761584994; c=relaxed/simple;
	bh=TlHofCfMZvrZHZAm0R0jCLFfIGhwCu+fwEOomwumWFw=;
	h=To:Subject:From:Message-Id:Date; b=sesYJvxoZofP59uFtuZC6h6/bT84MdsueGkUyCu52SbLi4g/I0syQ1fNal9mLVvX62EVOpA7uykQ+Hw6ibo5ItudeeoLInKhfDY0mtQoHx3rtrB3CHHW9GR7YnCtfAAOCrsZso2g4YSwlYkLK8VA/eZJpcMBIHVK2ZpU8YfP46I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boXjVpXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boXjVpXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2BAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761584993;
	bh=TlHofCfMZvrZHZAm0R0jCLFfIGhwCu+fwEOomwumWFw=;
	h=To:Subject:From:Date:From;
	b=boXjVpXpzneiXDrXkqXCkoM0cRlf8R/4H9S/EnNhvnCPtMOtzS5uC9cJj8YKB6oUH
	 tsmz2/XeFJzyVyYrwC/2hkNqRz0snCukRFVYEId+Yge7k8/5/fLFbRN/xdUoua1FLN
	 tkNdQe9a7oLy82YEmCk49G5AXNNekmVCgiqFwbWNjSpsQjaGWRxd3XyhP92Vz50AKy
	 b7MUH1sKMh7mglIXNAcjD0DJjRMejmFbW9OH04NC4EUAjgqlRgwA0YAaUiVz2JSli0
	 b7aucQKUAOBZo7hlx+qhmGj0SR9vWPtMi7rVcSTqTwr1BBscK2bkLXG1CUw0Fhkry6
	 JarXEVC1BQi1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95678CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158499360.4667.12018171932234877065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb677dc1f5f54e7d8850f1cbf2087b4fe32a007191259552c4d4023ea6b4954
Date: Mon, 27 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761584993
