Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AECF346AC1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769024034; cv=none; b=Aog/6DfdpVPmHYmbHcKx9PLCpVMPE63vCwDe/PkHufal1+kPo6+O6GQB/CtZbkXAZ0HBcrGfHaNzh8+WYsjwkgamd0R0GZitosjfvrzRcBd63/KORoJovGNl4IzNP44pkl6vPuDMe67Rm4WdFkflCRLEdDEtkZzJsD4GXEl0LeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769024034; c=relaxed/simple;
	bh=vEvFmspgBPF/3Huak8jMAUFDadZyIDcGkQAGgZBsasI=;
	h=To:Subject:From:Message-Id:Date; b=Vm7sH7DJEF7ZM+6JobFbzui+ll0enrHkxfmYwuU20bzP3PQelrQlCoe+/Y0XeG/99uj5OrkDUmxSxa4R46TfGgV3fImslHT1KHq6t4U4bhv0P9HX5J3VQfG/If3bmVSuD4zHqu6Ep7j/KtxPPWvmPLjzbg1XqPopgDx6LsQOyHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEhTanLs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEhTanLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8278C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769024033;
	bh=vEvFmspgBPF/3Huak8jMAUFDadZyIDcGkQAGgZBsasI=;
	h=To:Subject:From:Date:From;
	b=qEhTanLs5kSxhARrZbk1kdHu1Y2eGKQgMbBZYsgKRpLFhCOJwD4wGsDqFcochXm2U
	 HUIY9kFyoPmZ81LpEcSggvZy9VddgUkUAO7MXRLsOCIfqEyXBiTZatS/znzJIVMAnT
	 jIh0qYKs+k5LWFN4PdJ0MujG5efZc01xuioj4DsAt+2x2BuKxy9MvvLCe32tGFMx1s
	 itiyf/vAOs7DqK0EYLPRm6OyvnzC3983P7j1whVOMTBhshIFWpA1nl/MF9mqBVZQbA
	 Y4LPnQfjQC+AQHquJX552aNKHmYLCFqwytgJukAzkwzqVkR9RxOpmwTqnOm/8gPAZO
	 cqctn9mlp1SMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F80C44506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902403358.19009.3146420149830021495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c462cffd0fd3e253fa1161cf7ba0998aea13b777ef601650a854c52ba13f2cd
Date: Wed, 21 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769024033
