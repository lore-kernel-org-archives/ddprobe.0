Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337E917736
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746439794; cv=none; b=PN0ulu5ece7ff6x+/MFAA5wdyozQyKI74Ab+xFjaH2hRAgm9XIOTcjF6Hp+tmMo67EhgG1aA3t+a71/h5vAZyYMWla0HUCXY0XCyAIMH47PdDdO0yd0zZKFvkJeO8+XxXOAEUhGbkiwI0bRNxgz0dqmk+aHFmaBth2cvMQMx5do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746439794; c=relaxed/simple;
	bh=lqH2+JmazXMyLXC7d8BPn97uZtgtPcnsMunc9lYUMXY=;
	h=To:Subject:From:Message-Id:Date; b=lkBRuBlv4o5RYEG8aFMStjCAKeWM2AnCEePBz5uFWGyONkI+jDjsXdMrsV1KTsgdjlVRTmLYr3IxupRnBcCMiDEVvhTBP93TKW/6De/Vux/YiHcAKP/rFqYWdFUkK9P41pNegNJoewJNn5jG6GM4ospdyvsoX+imJTsrTKk7FKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAJY1Kt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAJY1Kt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB3BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746439793;
	bh=lqH2+JmazXMyLXC7d8BPn97uZtgtPcnsMunc9lYUMXY=;
	h=To:Subject:From:Date:From;
	b=BAJY1Kt8tO6hOCeDfrdI+aUyFy58S70IlUhT9Mizk0r5EWt2YGpP0Zv2nQOqbX3wH
	 EjRxlWJgMmWjS7JV4VF/Ps1wgugIJJgVakC1R5FqD3n2kX7FMd/awGdYZBfSAcWbxz
	 oHoMaQH/AatXx0AJhRA2FJ1sqADWtxNNOYOTtFXpIAwcr578VLu25GVAia6zsGVHPX
	 h5dHlkU116Xrzp91pxh5Ox+F/V61q9yQyLnySYAl8zZJA7ZHlWjIMmdXJhwQawtmRk
	 9VQjVPbBI6zi37rDOPsyrCwUB7FbIghJUriQA65WHAkz15CikMc+ji14DgL7QMbqfo
	 fxsSB73Rn1c4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E2C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643979357.18335.6975992847566458854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa426a35b51cb6b07fe28a8c0095d675daec35970acf5d40517ac9c3e770e5a
Date: Mon, 05 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746439793
