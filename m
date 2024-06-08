Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48162E57D
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717850843; cv=none; b=R7kItYvbixGVrMayMgOFXb0zg0R08ktViRT0BPHJ4B/40SJxYSlR9SUpGE0tYFOaUGVAoZg2moyumrQ+kQEEvEE8UsKOjyfRXFEBQ0BFrm9tQ26HsTD4zfbM+yZqO5Inal9qM0kwIsexfkc/4TsKgZhWke8TYMTqTmAEHIDyi3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717850843; c=relaxed/simple;
	bh=Clwjs7Z48noWiJusxC8tQNjdbmx7mkGu5zWCvnkJS7Q=;
	h=To:Subject:From:Message-Id:Date; b=jRya7wUzEAoaKYbeekiJl+u5d5Z6GsnJ4XOeWm2DGRMsrJw9aPpKheVvQ20+9Uzwd2RylXDPDdMwYUpa8yHg3KuFbY4wlSXL6nkYlHG6h22TbY3/UIJATeicaXwNwQ881GSciF6p17reXJOVFtUbxoPYjOT2RGjm4gPkzgW+zAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jt1/7OXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jt1/7OXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE47C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717850842;
	bh=Clwjs7Z48noWiJusxC8tQNjdbmx7mkGu5zWCvnkJS7Q=;
	h=To:Subject:From:Date:From;
	b=jt1/7OXl2+vSX8DUdoYqvNuKL5if2w616ieIJRoHR8nvNIfTZolCmWEY2RVhbjBln
	 WQJCB0opA0A4uHwFv6rPIoSxrPZtW7RKkoQ0R8119GW4cKLxXsl38U++fZErlqicSp
	 i/5IzVj+5c3q4H7Cw7AypKNPVwslp+z/gGXJ7M4EoWj3bdSuqOQHnFYprRbYXyh3ov
	 x5ANc+ZZhM+B0+ziZv5OOTsSHDCZVqoUukMsiWx30vo4qyrXplMeCamVOH/txayoyF
	 w9DHyFPH0/Lv3cERZoDzuR9DqajMeoEDm/Kc+PRzi+XNB17aDPC/fwW7/Cqmemu87v
	 JQR7NuTrbOaDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B4CC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785084278.30748.4123331749020963035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7001cf3710ea4fa6cdc1a587a0061085d0b6ee18e2967782b1f97b34c742b517
Date: Sat, 08 Jun 2024 12:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717850842
