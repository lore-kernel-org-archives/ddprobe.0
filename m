Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FCD379C2B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782257794; cv=none; b=uxyjg2skZieagDs0BQluTGRhyRkyaOVFJh6RPwrEsMDH3eOCIPUtu9/Q8XJM5fmdduATROjBs1Ve2AZrna8dWtZuxilUV0ybNefiI8N1KAkyAr4tDDW9ZhkwMcSSVk1MvzfhxiM3Yh/UprpNQgGp9Pgk2e1S55euQ66fEzVVs5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782257794; c=relaxed/simple;
	bh=lRlWQ/2X2A13XzGSv6vJ3wgm5YZDmHQF2Yz0YCmfau4=;
	h=To:Subject:From:Message-Id:Date; b=llbVqIcY3vcAuFOWm5CruPgsH4d57f/UIU92A3taGLPoC8CKNmBYYxzJo5dEetxt3r+o3Vtnnoa2s8Dq/TvSrSZ+AITCJs07tCdR4bMk2XVM09iM353CE9nw0whXXiZHqpdqvn0au/qKo9yJmH9q10l5xLwx8JFnTrpk//Ns4A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSj4O3fE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSj4O3fE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14C9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782257793;
	bh=lRlWQ/2X2A13XzGSv6vJ3wgm5YZDmHQF2Yz0YCmfau4=;
	h=To:Subject:From:Date:From;
	b=jSj4O3fE2r9VwCpa8QcDVWsJ3KYmJoBDMCYBTKDY5CjP0g+j7NRFbmgGf+7OuIMDN
	 nQ0TZPCRnNX4BbsraEFarXODaWc+14VlaUOiSet0UM9rpte7iCYdNTBOKPXsO8a93x
	 zRGoo4J8bHXv+BkIy5/CIuj24UFAn/uvxX76h5ZpbxYMkSJuqPSS1uW9MKCcGRvVmq
	 yHJdRW9FI/Ydw9H60e8R5vBN0DT7eXyvWIbb3x1hAAkfjm6SusUDjRVmDEckOFsHi9
	 qkhsonxuQgfA4wWVN2yVPTuXLpbrwybU6XzpRaCI5NcZ4mT2y8XenXiZGGYuX1lMZO
	 Iq5TL+MvWGsGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC26BCD4F26
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225779374.16330.7089820311678648085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93331eeb07cda69d74e98c82a29e87a5ca26482e7cafe8e7e7aff33e73e39cfa
Date: Tue, 23 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782257793
