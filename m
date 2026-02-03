Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8B47261C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770148434; cv=none; b=DuJKrOTilfQtf2OAQ73uQaNXP5df+zpUUHdTkfRIdn6/cefx8GoszcBcI7uWuI23Qr0u8sfpDjodckIGLLRoPG02mbHoIHSDmauYEj2qO3DQuOK3g8YXzT11UeG0ErZJ7k9H1siMAuSb/imf7j2zR593jW4Btyz+YXf4AcIblcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770148434; c=relaxed/simple;
	bh=uGkyTLXlteP64cc2VFT8Wb+nHTsjuo8DdwgtvY1Gq0U=;
	h=To:Subject:From:Message-Id:Date; b=MgfYwYblEKIeNCp9GkZuQr9ABYi/YTQH0xGkZGPdwzkADZ7VhlbwrMa4zosRpuTBvBsGt6AMymC7fyqUVE3pVQvqtsApoMnvATKiU2sPsfC6Cnrf0JMoA3Ib/5Zj4dtAzDaHdKJ9RkKmoQTz5UQbqPam65JyUYDoomspn1KgjsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8/fVadb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8/fVadb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41AFC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770148433;
	bh=uGkyTLXlteP64cc2VFT8Wb+nHTsjuo8DdwgtvY1Gq0U=;
	h=To:Subject:From:Date:From;
	b=B8/fVadbqWV1SrLiHnRLhHo6kul2lAzblAU/yDoPlH10mJD+AOGzwkSP5m0pavULA
	 ZPAebty6pmuk3E+SR/kgsU1gYP4lZZmHGcn/gdtKWLsJnHdqbCXoCKfhamULI8zFKi
	 mFAFYaZrEgh32eG+lzMFWH/abI1PcuEKIa0xQThZva0pE1scTm6KfFLbkph6+uWnDT
	 DMtt4qKnkmkZrCIq1kk4irKPsJDIGWS65QMllAiKabD5WY+wHVbJIJoJjAepHlH5Vm
	 z8pDBr2So7z+Ny4zkeq1SxMv9V5dSajGpleoZRXF0UIhKuYRjYzWSBE7x/DbHJLbr7
	 xf4EMekOchHKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12C7E87859
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014843362.4310.6620273922144733957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9400198ea8b6c2c188efd2a2426531aa4ac4b9d8e9a1068ada3571c8d729d927
Date: Tue, 03 Feb 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770148433
