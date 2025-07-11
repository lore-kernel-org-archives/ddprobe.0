Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4294B1FFC55
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752257394; cv=none; b=Y52Vo0Typnc0IAeEIvFnX7ZuG0uXn+WvYnkipVFnUFi3OXDoHJBk29wcWnZq3LPOA7Aq7SjCOpClX61viFc4hGDRPBe9Iytnwpl7GE4h8swlug0ECRUFW8r+mENL3+i9c+Kd9TH+JJ+umsxXWxmja+Z/0xzBXuahGY5bXVZ4vcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752257394; c=relaxed/simple;
	bh=e52W8au3qLDwqAUnZx0pGiBQSNMgkiNHemVUkrclCp8=;
	h=To:Subject:From:Message-Id:Date; b=PKB7h03en/UQ+N9Q7eU6C/cUTT9KSJxIMvJlTcnjFI74DIs+EX7/AsN2i9QJFEJiFl5Wz4fO7O9my4PVl6z6Yw4FsRC9HMs2h1ithoflXkoZkWqCkX0CAvLqVBF0OwLnCJJ/U79Nc6wMrD8+WsJsBXWyYwPR9j0vVMPjMdpW2FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arPQ45rG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arPQ45rG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D42C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752257393;
	bh=e52W8au3qLDwqAUnZx0pGiBQSNMgkiNHemVUkrclCp8=;
	h=To:Subject:From:Date:From;
	b=arPQ45rG8KEoEhl5ze3K5enOT2FqIRnOQJ00hhfyQSoh3GW9wri1pL0jFosbndlum
	 3BlWBGKA/8hgvFVuNUc9AMqCtWTAXlGZn7CdJZsL6JvXZku9IU8V1MbCiEr1AfRl4K
	 Os7Tdp7nbSp00cJ5P00pKSoOZRVPr7CjHcBGNam+hFYqie0hp/JAwrJP95TV6lf86h
	 CazB+G+MU+F59Dd32QnTPDjFRNY+gFwORgxgBVaCS2J/RPGou8fuzUOBPcqW9HP/TB
	 Y3r8Anp9bl/zoq7AGuway+PPUxuPnorZiTm/Fc3YG2sVWBaTaZ21+KPu1dsMln9RJr
	 fPIUXFXnHlg+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EFBC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225739357.23565.7144911357998950408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed05c3e3d5548b045d9f761ad5b36d7979dd1840c6ca5d217865b6e8e1d74c1e
Date: Fri, 11 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752257393
