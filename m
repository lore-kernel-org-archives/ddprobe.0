Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FEA328277
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762868394; cv=none; b=XId4PJTGb3l+PcQSnEKEdC8r46lpyPWL/z0qRdLOGyXfu1fEdsvSmsTVqQKij/X6OqelX3amoFapxX2dnkMdoUaq0NuD43zndGLRfRnlnEzIQkL4qfEj2deea+9/I3X5ANVvlBWocEoaoJ4n9zqJMZckWTELPMWkcbM7a0bXvUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762868394; c=relaxed/simple;
	bh=f7+x9sgecXh6Y4A773U7k5a4cP9Hfu/gKSa7nKixqu4=;
	h=To:Subject:From:Message-Id:Date; b=BBTFxR1kUyLeCRtBWHzGve1hmkiNYe76F8aC6mq5IHXUqD/qwbFPgPdr97EwaoHHIBuWQnICkYRht7c0UcAU8iH72UDvHBc7AOy6IvOyjYvF4BEllFozNmQbD3HDhEjG73edXohsEdjXRHZmOwkSVRRZeC0KvvyKZicdKFSuCBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBmVvk97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBmVvk97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99CB3C113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762868393;
	bh=f7+x9sgecXh6Y4A773U7k5a4cP9Hfu/gKSa7nKixqu4=;
	h=To:Subject:From:Date:From;
	b=pBmVvk97SqWa7Mme2saGMVuPM4ur3rWTRXKJ+esOLDlwll401F4KHLrA9veJ4cuoz
	 +3x8tqqr8N+C0GnWtNUS933lqCDwrvAeq8WhvgeicKfIneWFNa/DnRl0vlvMfZL9Tm
	 dIfOvoIdV93k4xcWXFRRR6VQ5fad07zcXvGM/wtsI0SuTR4tjUUPjSNHXvTLDS25oJ
	 1CyL21ZF5WTcBq9hAoXoxXBXnSMlpirLzTP0VbVMzXB9A5pZvAHhhV5K4GIMpnc0sd
	 MHrtqlGB2dw0TlPDSEq0pqnWkp18sQ+RZnILH2gYdycb2bKU+Xpq003VGyEj7h4D1x
	 pRBuCEqB83fxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A7CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286839357.2509.281458481399842684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83256b96c696999111d5fc1d5f9a38f2b3c0b1b00722c637dc9329cb03d6ece
Date: Tue, 11 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762868393
