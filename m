Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630557DA7F
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743959394; cv=none; b=iRPvTvasG/O5BhSSR3p+8MmTc4YyqIdPy0lEcnQI9QLJ0X1IseGQ19r5v7Xwex8PEH8IQYv3WNxnHBXp4U1yej1pdXSEgUIm6kNq0K8ALvFIUzXWgvuOQQk5b/i3SOXPWG2tfEHZvnoVLhFtavjJvUWkbFf/WMa5cq5Nu2AYWTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743959394; c=relaxed/simple;
	bh=+CkGGSYuAwuss85Q9F0qnQZqlqehu+EbJnlY+5f69VA=;
	h=To:Subject:From:Message-Id:Date; b=GWZJjP1Pm+sJvEDFxrw5zIC3vVUv2C72RjxRH3Bjz4f7YdEo2Jo1QS5x1VcCVmYsJsv49SAINOHct82+PAuYnFSpiDKuW1KeNe800G7ogF6Ly1pRM3cY46AIuXBJTkLeN6Vg5hdrq0oAQXfQl/7uFU+SRv4Qsm/BbD+DkiK+j1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttLjlTF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttLjlTF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30BFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743959393;
	bh=+CkGGSYuAwuss85Q9F0qnQZqlqehu+EbJnlY+5f69VA=;
	h=To:Subject:From:Date:From;
	b=ttLjlTF+2THR+XVhbCHLy9RHJZjUn5CdlYbq0ny3CHu2sM6gcziwuvE8ph27o7Wi2
	 azJ8anays31Cu97xv101aa2w2Lvx+eBkot98QG2G1paFOLfm5ToZ+ESsaYxmzGcPHc
	 ReK5TquX3rsTjbQD6dordxU4mv6Hx8B30/wZ9/FpytGJh1RRM58kwHohdP6ix73/tQ
	 eKxxqZ+RMcGzpc8FR4qn0CZ54fiF+h5A3cqLhBzatzx2bEYa4Jv2jPi5a1WeWUjdOp
	 Td1Gyc62O2fraTehFK9k3iFTQkjmTDvZyoMSEQjEdB10n8wZjq3asZSYDRcWBs5RnU
	 1hQ4bmzsuJBBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AB2C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395939364.14447.1981108970446507772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3223fe8f1e4f03b5e0d53d58041e0a2e407f0ab015109d087e7a5962120b1956
Date: Sun, 06 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743959393
