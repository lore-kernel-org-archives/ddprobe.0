Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8DA28EA
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740818935; cv=none; b=SBJiasPlZENGG4xeJn+cwgIM4qA55GhM11ZpqIivK/7MkChrTb3hrblQUDq468xhyBwY7X98Vc1cp0peZqZqerM37PN+UJJS6BTR7wYzGC4ORaIlwZP/qwwuZq1sgA1qku9ShcWCx9JbIGZCoFSrS5d9ZXFoENsJLowjqbQQNG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740818935; c=relaxed/simple;
	bh=ujVxiPGcQfIusSSzJRImSfieBMc2/XtyTnQ1f98jYRE=;
	h=To:Subject:From:Message-Id:Date; b=kKrtE0FdJ1HJu345beb8Fn/ghykOSAJb0GZlhQTbwMr4rtdCR2HSO+6EO7mOsPbfmQY9F+vb37r9SP2D3qZV683WOur/gyd7UqQ6eqstSriFvaWI4IA1LpHWAmvuSmnflj1r9W6axlXjude+rGx/OL93DOKH3DOlEs108GwqLdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPyDNSIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPyDNSIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0906C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740818933;
	bh=ujVxiPGcQfIusSSzJRImSfieBMc2/XtyTnQ1f98jYRE=;
	h=To:Subject:From:Date:From;
	b=cPyDNSIGlPFe281HSYbPgWr4bc5N687a6nEuEzotJIjznHVLYsEmHx1/oobCxOVm9
	 A5NJ2fSoYh6x1aJI1VcSZBN3W5t5i6frLMyf80tDdapbDfJH5qubsdLfR/Xzkrf2VP
	 KMgAeR/rqJZC+HTSNTdPY1+6t95u3GopVPuQIDV9WwiuNXj4jHfuzxB3z1SS/bTN8P
	 27HStOObqhMVecm49RAElurh2FqBwaWoKzvuBggT1re2FiAQmCWygq7ALXaEh+sgl4
	 8XaEwchqIHrDfKEXC1kKFkh4WpW0AXqZtKfDjL1Eusmb3qMsq7KK8/EADLAdHm4eI1
	 XtcTuLe6TwZMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B900C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 08:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174081893359.8261.4499846361433649412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb890f1aaa654aca5d9fc264df600abdf28b5b6b0832a2a66c4140f0b840b52b
Date: Sat, 01 Mar 2025 08:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740818933
