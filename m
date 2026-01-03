Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F9C1BD035
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767438834; cv=none; b=Ywo3QNQFK3cZwMcwZaoAoYX9J8L4nIWr0Q18CzVUIHyuYSCICyI6X6A84vYfAENjrkDuZZSiZt443XGr4gYGQ3c21SfDuvAgq/CWCp9ZfjWN5XFfHcAalo+2fCDdXks2lYiejbVl0zAppbdGT9urIniXQrMH5EyYChGz43jvGsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767438834; c=relaxed/simple;
	bh=IwtZRFvWik0ahC9hZOVja4xWpX0FqYKQFzGNuWvxiAM=;
	h=To:Subject:From:Message-Id:Date; b=fcPqdlUkBMzaHqq1Wd3c1R7A7ka+JnfTFtDd9YSg7e4A+djAPKhszvrMzXKdFJR71C1lTcy6Lc3IUaBiPembXuFwVStmaBcJekup8TRk+N8U1C/jtVh9wQumszLkazRKMWTc5mQJ9Go2eJLqFMML5tTmPUVA/7KjZ7H2AdmKO30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elpUeM08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elpUeM08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA32BC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767438833;
	bh=IwtZRFvWik0ahC9hZOVja4xWpX0FqYKQFzGNuWvxiAM=;
	h=To:Subject:From:Date:From;
	b=elpUeM08S9ZJHP0F/crwM6huSgh3uA2Pu6uK/TEfaiRi0iqLGS2Z/q6y380aHRqT1
	 AZcs4i/nJBbml9gFr5xuEPjz6Uf66VJbggsDoARxtWhRcH52iLmQfJTnT0J31K8Z0z
	 B0zGUMjdcIzXr54St4Mo2Y73FlUbP3r53aj4643h+6wKwTw0wrl/Bm8byN2itGF2pz
	 zodipad0EWY+YVYptPVTFifzM3UNOW0Q8ZGR1ZFfy3D9bPfieDeb8v4BobdT19Zjav
	 PqNsmXpwTUOxqWuxm6C8diqAxop2qGHdpQvG1CBo4Plm5Zhn3fsyTxmC5bBoWbezdV
	 Nvvy1L1o+uiMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9980EFC6179
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743883357.31326.8616585286548892991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d0b8aa1bf767fb8a785fe5cd945305efa5eae292d9f7f8b8c7173dda087285
Date: Sat, 03 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767438833
