Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CBA3ACF02
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788512434; cv=none; b=TXKHJeZd/9r2N6RMEU6mEqSw47qHQnJdzi2ZmXWfZkGwGHg9d8Jyuhn39GzOo7Mg1p4U/2cHMAXPzAnPjm24Hsqwvy0OoKhmeU8qiF+iNrrpX0qCZqJwr4BgDdHLxSKuAmVMS8MszYWPGVrBlGqVnWhrvJ6OcaEJAJUfPuQtPwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788512434; c=relaxed/simple;
	bh=DAqZgRR+5FDjoaQwQosTFW8ZPD1DFoRXzE38G/cWdF0=;
	h=To:Subject:From:Message-Id:Date; b=Qh9R+HvrmYfZa9p712plGoypF+3CrNW2andQk79imCSNJ0Dx31G71PxEZ8VTVE7zA9GYTHwecwa0ils9EvVrR/PbmrToKSEPMpcPLNDIGBBay3ipsEFWn16knqTj0n2vNyMu+2ljidoEG2I+cyQXiIxlbr7HHTWoD2KrcykVmTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EO/i+LJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EO/i+LJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BDBC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788512433;
	bh=DAqZgRR+5FDjoaQwQosTFW8ZPD1DFoRXzE38G/cWdF0=;
	h=To:Subject:From:Date:From;
	b=EO/i+LJGe9VyCgXRUB8tuaugzAV9w2DznRNdkqqnd9ds8MgwdGWz/BgrnvvXc2Mwd
	 gfHRuRM26IntHgyhhiWEzU3Zi2OoTrm2hjcgispPdXU+yQDjy8652UPUQYsw9By2Of
	 aUDJJTXdkDpgpN8niL2nzyQvbCSw95zAUeH5IChVfWpR//f/tZUATSqRk6SvHVKb9e
	 w8hUtK1hvJVwqna20l47F3sAYmPHcvImFsk0ctMby308lGSUZ5xk9OgYYnnC3kBIfb
	 bZlIKVyO5CgTUUkbJSrRuDqjVXbXoxtZIMpY3t+6peZtN3Ckgpl1nO6BeUlSqJtMLC
	 Qkkdqd4bX2FkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE29C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851243370.12078.12072730243378193043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce5a8f1450bb3f52a74559e794fd03b8c2a7d1cc69e7d3d02a4f33c303dc1bc
Date: Fri, 04 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788512433
