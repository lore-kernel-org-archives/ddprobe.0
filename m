Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA5F101F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758076794; cv=none; b=SBhXMqRBMKzyO0sMR45hTk0VKbWeuPk4sg3oQ60lCuVRCgEbLkX2JW20I/DQIfdZMIZxM3Fqfh7Rv5buLLmmdoJFwYHyiN/fvOkkBgyV0vVAQXY3mF92XYR+v3q+wOZIxb6+IdOSRh2rHkxVe+z4AUcmsKneQrNgvBFX5yB8tKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758076794; c=relaxed/simple;
	bh=Cb4uBAC11gRwkz5eudLowNK2rF9bzb6YWjFGRHV6MV0=;
	h=To:Subject:From:Message-Id:Date; b=qAAst5Yd5jEFUOytVi+snzQVRY6UqrzLZWpuaxec9yD3Qp+/nimxsz/zrgbYSW7GlRhFuhwFQFTT37V5j6FZxMsflfzgsko25Ah/KH3uo1SSJfiHM20/hpR24uwdwFerpZJPdPo8x//WCYH22Y4L6hWovqYMIajZYd33M7o1G/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJUl3MMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJUl3MMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E62C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758076793;
	bh=Cb4uBAC11gRwkz5eudLowNK2rF9bzb6YWjFGRHV6MV0=;
	h=To:Subject:From:Date:From;
	b=PJUl3MMcCaBQfUYYnY47540qDts+oA17XPusdO1Gcr/VKUjsWkDVirnMJNWAOIfEL
	 DEYeQsdxKn6N2wQH1zV4P+af8CdLzyUCVSeuRFFpv9qH2zPpt7cuJF2AjagilQuqCY
	 KCPlzxpMxejpy+ik8NgNSZG2yFFuQ1NvRjznIaRiiysmVmRIewjv5QzfzQB3A0I+A1
	 V8jsHNfF0eQoCCHzZas94WWFL7UWnNABpz3JGNuCUFcV/AdQ5/rXlG2tqEs+vW0gJU
	 kIsSHsf1mq3lBfAycOEUDWYodiHyPyf2ddeOJ0VsShbXk5OGn8DvoL8BSsmOI95O5N
	 rp1bED58vUUxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A1CAC592
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807679357.24381.14842414093772883453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c3824b9367a53ad93d231db554a3e620acb283c821a315b681f7d4ddf024be
Date: Wed, 17 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758076793
