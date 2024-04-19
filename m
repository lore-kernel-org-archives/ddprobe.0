Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EA8B669
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713500363; cv=none; b=BiIjrEklYgUpHh4Vmcw+D1/KMI/BW+/LxTMdRnOT6PeqPsE/dLYmkVoBx8eJ2uvVpy9yYM8n64lSpLC03exWhphsF7scLmR9YiLeq0vlxBosrSPOL4FU6YFq1QIyHaFGFBKP+PIqFwQx8q37erraClISLEiiy1yYn0db90by7f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713500363; c=relaxed/simple;
	bh=oHx7ktfAChKIz3EGm6IaYEblR/aoLur2gCj4dUDoBPM=;
	h=To:Subject:From:Message-Id:Date; b=LJPNb46gFhFHcn7ZtaU1OB2FfBiSPgDR66GVeb58kMF6fiIvOvxHdXgJfn+m02DqIf19zwvBLHmC5rE6gl/hqf1mK+XGzkVTAeZvhHUZhLzQKnPwnUb52b1SbPvksNo6sMPH0Qclyyxmw95arXTwTSQ/zEFkMd4sF6D4F6xtM74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wsn8JDW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wsn8JDW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3441C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713500362;
	bh=oHx7ktfAChKIz3EGm6IaYEblR/aoLur2gCj4dUDoBPM=;
	h=To:Subject:From:Date:From;
	b=Wsn8JDW+NXTKcKNZ4s0vdQCX66ZzNif3PziECpIGsJce8KOOUpNSiGaoPs2ToVeio
	 dFAJTX52eRMGrI7o3mcMAviKeWPf2ONfHNoqhs9JrSbs5MjR1iCjeHU8yAZ7ssvtbn
	 tMQARKlCFW3MG4Sk/cXpP5A+umYRTM4iIIhQqEsv8mg/FqKzpene0l3annlaXxcIyY
	 Mc6gkSnqK8pfy8nEHhc3IUDVCboblRAwUQs8xPIzrX9rnjuSFnVlCMqIOgZiGocW+T
	 oPLBfBXdW5Jd8PA4pSdLhy5NSymbKotBDLEja/MsDHlz+uvb6+codbl9etUZ7P/agg
	 SAX+EnNSdbAJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1723C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171350036278.5739.12079301259163028580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3ed9f32538ffe0680f3ea2276f302d3a2e4a2ee0462f7d4997314696ac5452
Date: Fri, 19 Apr 2024 04:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713500362
