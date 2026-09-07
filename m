Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D02F4A0143
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788780634; cv=none; b=hNBgGjaYm5EwGH0bhyxws3zS4iO9ByNHAqxBgiHklC+y7khQtFiQH6HSmV6JWHOU34KewHA3JlwLnm4GlViE8NWQjiWjgclee/3T8POj83KNm5xewbSabGMRC533xtBqBrJNyeUvEXxKp4c1kRUAWE9DIOLOmFxGS8ObuR+mNUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788780634; c=relaxed/simple;
	bh=7tyT1LguvuG2j7MtDSemjnQsmbSOcfKeEVYRFVXhUao=;
	h=To:Subject:From:Message-Id:Date; b=qOY2gxNP1dv7bTJF0xrZCxyFdMXp0BleV9LPCf6VA00Hem8zRazZgRH4LuIfHhQtKVmxzHBmvyjjjYBP4jXAjKCtxVbReUePDOzTAoLfR0P+0njZXL3ZwZTIAim/gLsffbwrFRmY5qseX9r0sgckFL5RBHtGSA7Basj/Jh9n6jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGCWcyij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGCWcyij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D011EC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788780633;
	bh=7tyT1LguvuG2j7MtDSemjnQsmbSOcfKeEVYRFVXhUao=;
	h=To:Subject:From:Date:From;
	b=pGCWcyij2XsiYyur+ckqObo+Y7wd6WJ7V8DuV6F/Ni/LueCVIie6B5T3S9pesnCzK
	 R4Tl9tXHD81zO2Q13pZPoLtNZnOF2Dt/cmG6BL0ERBJo1msG5mD7u2vkaDICFiYLfV
	 PwK1tWYdonbkpKkkzqw0HrftTXcA0KTCkRJAefuQcifgAIBEzm+0VN3OQZXrw4siiK
	 pF9vT8QePhVas5IP5f9PGAa1MzrjtYLApEGN6H2xksCHLog2VcGWQv8o/addN/CMTS
	 qyJsVLCMI9OXQdbzCPh6RqQ8iwPo5/pb2U9ZDzEqXt9AcVJ19wD9n/exCeLyug4sm0
	 xIrXc0SvYvl/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD346C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878063370.3287.13335618573708401079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f4821a8a6b3aa354d00b9be1dab73d88464298487f4d27a79ad5bd2759ccc1
Date: Mon, 07 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788780633
