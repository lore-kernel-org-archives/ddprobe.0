Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9901C8600
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744666794; cv=none; b=SKt41VR4VnDmI7mw9PecmlAN3IAd33LjFvB3sn7TV2RtCzDqHInx8qQksjF5Ko3CeJLBmbRcYCCJUUgXA4V+RenIsK6FkNpuVPEsiBpe81vq2Hw5nz9uQH1q2mWn80kfAYr7Uhefgz5cudi0V7guCspOu+vdO/ciE/V712fZtu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744666794; c=relaxed/simple;
	bh=JyFQMbgCDa7eQMCcD2ChWhIdZdsA+kxb2rBX7A1MaWY=;
	h=To:Subject:From:Message-Id:Date; b=txdZfWdnpzFqYrCv4PKRHfA53lqENuMByVwT6xBjlRTlk4yFAxoQcSXGL2wss3e0SK+TPiddLOQeKE8E6qgkxwI4luZ7nN3c0n5xsa2mtVz8mLc1Gax+y0wNjKdZK9HBtaAf8iz+R3yfEN5PWxSfgwrkE/fMZMtoAIgo6VflxfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBLby3aK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBLby3aK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4860C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744666793;
	bh=JyFQMbgCDa7eQMCcD2ChWhIdZdsA+kxb2rBX7A1MaWY=;
	h=To:Subject:From:Date:From;
	b=SBLby3aKe9Ff3qehOnZw5ZpNMgOaB/apZ61+LBYJ4l+0mwyfyUmwZLUB6BWZX+bKK
	 UgQSKbV3orw3ibCrq96iBYaV6Y6v1S+Sb4jy+l3S/A8NhHaBfhq3DCYkQbzWANBhtO
	 Nt0cc8GvpNuUTE263QUX1i4zQ/p6HBT4gxurr2i6KqwWc3kVUNe61Q4HiVhel5qD0y
	 m+iPpdixIkruUXk5k1593x8lTxNCxCSo2ETAKiJ56Ub6F2aqgIAAA5t9qIdr6bFzlD
	 SoD2FsaVbEicKdBm+oKhbGicImZ1hqG3TGyl3rcMfO3HocMfWzHwv0urJPPJwHdbmK
	 Pu2UmIK1IMnrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92362C369B5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174466679359.11679.338319133021653151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb731f12774b052ad8fdd9995493ed5d4b86d72f76b8887bbe1ddec0cf0ed53
Date: Mon, 14 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744666793
