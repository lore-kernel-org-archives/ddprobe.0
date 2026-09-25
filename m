Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B477499F1F
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790332834; cv=none; b=Acno7MixdTaZa52JfEzT3wXBQZ8KLJ/Kg2ASl2vhgCU36XUp1lEu0ZtmwaI2woqzQ9WuKJkojLvDBohXVqMBYT9i5H3/NSAxffrRXEljOHNUkaPB8/R0rDzYDdgMTNPkHII08nqtNWpWwCuoqgjmURhScZq4LdPO+gI8NRKMClI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790332834; c=relaxed/simple;
	bh=MrPVmL/ajFWXwsAzCuRpFJZ8dCTEbfGw/i7z9al4fHM=;
	h=To:Subject:From:Message-Id:Date; b=Y287mMMoy4Al8bWe5qwEFdi+mA+kovRsJIrDLhS+xIyzSkjDK2mVkxdZ8KWsXr/KF8fasvNCBOCMQodsf2V/3Gs+UrIpfZmH9CMuh1efm2f6KhmrUM6EVLhOABgjYMc6LWU87e95iAhTMP+ttgBNRmDo9+7DrCMNBjmm6mAI058=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5G8Km3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5G8Km3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE35C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790332833;
	bh=MrPVmL/ajFWXwsAzCuRpFJZ8dCTEbfGw/i7z9al4fHM=;
	h=To:Subject:From:Date:From;
	b=m5G8Km3Vgv8yc6P/vbOa6jdKzQgpFp2J5rleiBZAQIPDlf7FQdVkGxmAAsPyPNaSO
	 IywIbPckONViUI0QPV/yW+ykctn/jbm1Q6EflfXGe3JClmT99U+QeM3jwKOkwnjwg2
	 I3CDDzx+pkPbK+7JbV3oalfKTAEQLShi4bEbR7MeVQJIzmI7mw8txIMIvp6B5zbN79
	 4letU5shoarJQ2EAOgdWcioz0lrM1cMxEcH3wKPEzEDYEvnmfCOqYVqtYRPx7c1xJo
	 dZGWDLg3ovECreg6PLQL3VQnrMXTqHlBhPTZ25JIo3IOG0gNx8xtkP/9TJwqiNSnmg
	 Xm+Ds5fG95xhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B5AC9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033283374.16743.6215899980338333627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823ae176a93f5595e3f2daed4c4e6210361a7be7f20d44dc564e453ec2f00d34
Date: Fri, 25 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790332833
