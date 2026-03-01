Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233641F91D6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772331894; cv=none; b=gZSuFJsgbEn4yKmNxl924S5t9hxDTVO47Dt9cMGhLm+amokxLvtdNCQyLgG9P5pLxuzSfdiro8d+K7v0iH1maMSW7k5Q+VCeKgtYcTgsiZ7gbG3HpcfgedcgfYe4MbNlabcsSqrtA44XV5JNG6be1OTT1XtgY5prq46XUTNkle0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772331894; c=relaxed/simple;
	bh=U82zm0oPxPkvyI2zCA3aRWXF9t1wyWEIwBzDPU6lPdw=;
	h=To:Subject:From:Message-Id:Date; b=Na8HTZHQhFZN+WQYv+/zUGjX32X66pnLOvXlPFoOTodHvbKCsqq2aMEoeH1/tPyCocWNarCkV6VJB4IvekNG0ydvuHsm1RBxCinBjG5fxlcc+JXBWr6L7OzEpUqfqCyZdQgstHOK4nZl3wn04B3jsH2OMLIUCukIrFJYWQkr9fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8spTy85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8spTy85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FAFC19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772331893;
	bh=U82zm0oPxPkvyI2zCA3aRWXF9t1wyWEIwBzDPU6lPdw=;
	h=To:Subject:From:Date:From;
	b=K8spTy85ljFJcTW7fL0rSmbxQbkU6Vg0tZtXXSGdR8GHw8pRn2zXueofC8DRtZwJL
	 vieKuoEZfhXaBkba+i8ln5gBL3MbROHFOSD+veJ5krKe6usY/YcX8xUXtO5fp+fsqz
	 4obA9NL3et2PfieGQuziqVVApd66goqal0F0/MhyhT6BgOhe5XftMHWqsC1Fhq3cyK
	 p7XW2WzA3sNXcFQ5ji5TUUcTEC0iRHblTOT9kXrUibuz2lzAzrB4NVBrQvyar9mf/8
	 ZkEOA/YTBN0qTXBhufOBnZhgVd/JYybdczeL8Nm9eMf06wMC7WuZsYS8TwWb5EXYRv
	 ej869RwKAwYpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B9EFD0045
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233189358.27376.1505658938222924395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c16e8609cb6755685f8f6884d5f3d0bdd2d72202094916e07b2c87b5206e27
Date: Sun, 01 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772331893
