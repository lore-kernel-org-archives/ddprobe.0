Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E0C3815D5
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790440234; cv=none; b=IeeDhdxRqQBbXZwNU+WoTlon2QkBmWUnDpdfLRO/lUnnecKhx918D1SL49TqQ9zb8j0k99zqkmEsKzgRWaMSmBPqpHwpjLAigHeu8Z9fwczm3KgjDMC0CypRCJdKl8bXrOUZQoEfo+lUufukPbLWJJjhgtFIa4zouWLZfDwOqNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790440234; c=relaxed/simple;
	bh=SDWX1i55XM6qCI4+T+zDzG65Sv7n2s5BRQQOvZlQvdE=;
	h=To:Subject:From:Message-Id:Date; b=hA89xyIWOgrWapmAYWb8Lx8sy/XA2xVLHOLbd0sUOsxvCoso2Gd9abAp0a654Tz8Rizz1yNP0vCZavSNlO0qfBhlDv9DoraNkvPer8L+PgFmTfReCrcHmarGJiLt51EGKrUKbVsBDT8OZIGPoCu0joB4WUVnd12Ee2yGpCVDYBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7jH2Uay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7jH2Uay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F51C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790440233;
	bh=SDWX1i55XM6qCI4+T+zDzG65Sv7n2s5BRQQOvZlQvdE=;
	h=To:Subject:From:Date:From;
	b=m7jH2Uayh1LuiYHVbSB9RvLGzDv1B1wjTJSvHlwRyafxBGwrUWdSS5upuP46iak4R
	 OnarbJQpCSyNpo6yC2UNci7i4EnC/dofk/iw3MxQLCF2Ej0Xz0xVWDNRmU9DXE8AnE
	 gLJUOIG1ZqXKdTM9tkjqTcsl9OGvEtcn50ORU7ioNk4emVHtVMYRsMdKCelzJ8+/l5
	 bsuFZ8S4b/IztyOZW2/77a1LPBQ1+1/FbbaoEyRxFRiLNPhJmnSr/Y7q1ScYBq8FIA
	 BM+BTgCeYgfA1BaKPdtEcyIT2eMCrdYEMbL0aZ3ajahEsFnXBM1lT0Ri+65x+C8XiO
	 C+A+sakwad1kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD005C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044023368.351.9848978701020700622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46b269272d95deadf072409f5d7900ef85a407ed74cc17267f13ed5341d9cdd
Date: Sat, 26 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790440233
