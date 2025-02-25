Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473221A3142
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740517134; cv=none; b=aDOfzulPzJWVSnFJx6j+lo0e/XidGazj/BF9erZte8nigD4VX07OSVzE1UkM42x2MxEM1JMjppubQAsKTDTqfSHL5yIIKR3K1SlG1PTpaLbKGnP/XMC4oZICt2EtpnmmfSXp/qla8ILyNNeXbGRpBqMTI0inUve7KKB1ltDxRy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740517134; c=relaxed/simple;
	bh=p8sUAg4mmjmWRH0ImM2jjb1yC11bPy84oPABmrieCDw=;
	h=To:Subject:From:Message-Id:Date; b=js3nKaY9xubDCzI8oleUr04JF8zJvXDP3YfY7Zl7MFKgC1SZrAo13T5Zv9fE+UUZr2zrypcnBqCfy8+odmiQEagDhrFWFI0+iARWZA9oqmjM11HCPKcyo+/7D+1alYA8PBsnnmwEtL04Rd3uc9rbx/6ALrcJLqyObI5EY2AZBXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D909NYp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D909NYp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12BCC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740517133;
	bh=p8sUAg4mmjmWRH0ImM2jjb1yC11bPy84oPABmrieCDw=;
	h=To:Subject:From:Date:From;
	b=D909NYp5BXfpScC1WgiX9majyPqYcKCN6YkXXx09TU1VCGd8HoW+Wl4ORex/XZD/H
	 Nt0glvkgJuja8KWNX4NRNt4n2v+lNV6oinzixnkTbruD+VtCxJ6q+DPWii4gnUS8Jh
	 NEoRIG7trwu2egMA3d3tCiUQOukoXkE4lg0knswo27ZeblXdHP5mAbSSKbeFwdHZHh
	 KFkpiGpaDHx9g6Yy570Ng1FAT7xQdZDFJHhU81c/7AUOdn/Vcn9c5idq8T+2wfCsIt
	 49WIxE3BuqNYpGUyBExaOG5l8pq16K7+68h7U2SBwBXZHjMwM75nnclCiu5/MMiSlA
	 SQsP3IT5V1Kyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A898C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174051713362.27593.18268173442834432592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f1bf504f989c14bdd80263ab803e39a6b5236962f5d22d263f2af1bc7ef24b
Date: Tue, 25 Feb 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740517133
