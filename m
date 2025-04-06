Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338D91A5BA6
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743941394; cv=none; b=pgNnC7FjmgUFvCjj1BPuIMFhbDpi0Ay8XJiijPJZNKrPzL2k4qQwSQ69TcsBnffnAbC+SsRP7Z8pYOcrhqkDLJwDOk2DLglIvIsDmFSPimPgUiJRdZu1X2boDq1eMRQaoH7Yjvv5HM6FDOAvc05X1T1v3QNZciM420zLvfmhzbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743941394; c=relaxed/simple;
	bh=OLPE+N49mbJKAZFIlJFiWdG7yOJ+ImiZARXOGe/dNVg=;
	h=To:Subject:From:Message-Id:Date; b=QizpoTtPdbzmwT38568sFSCfEVCVGvNQ7GcNQUM3WF4jmPcDlTiaKVSx9IVuoT2JEVzzKgpETP0j8xjvmU4LItzcmKznAUj79lLlJCPSpkMthMaXhym60l9EkQXRJNag4T9haTtWrwCBzsHpS0nYMn/9GTiGmXA4fM5kNA3dqtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwF01Nwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwF01Nwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40CEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743941393;
	bh=OLPE+N49mbJKAZFIlJFiWdG7yOJ+ImiZARXOGe/dNVg=;
	h=To:Subject:From:Date:From;
	b=cwF01NwqIxpBjyKgk57/CxB+V+6y3LgysKn7FgypJ+7lHsnxjXI0ZzCpD393G/onA
	 Bun9sEvrGnE2l895oyRDi5yfNwOe0RM78n1MdSyMPXrv0cxSeGifQsS6LBxb6QdLGO
	 s4ssOHPo593iGfjBMR1SgAMO75kfHza2+e1zThnEuGA73hfGxfDvsT+dHlOz7aM+vf
	 rghlV5NMDaXN1j/Nk/KwhOedeaMofQ/NDYNJEScwLINkwbGcWIpcZjK78wBJq+BvvU
	 09IgK6CvMaJyGr8CYC2KUondgigF8OqQczqqSV/YPRSMRSs2bLtNU58Ovfmf9pBnJi
	 K7+fjcPf+DRCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC6C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394139357.1994.3386194476006779934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72cd46d213741e412096de34524821df9d491fc69181794220b952ffb42ad4dc
Date: Sun, 06 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743941393
