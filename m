Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFA4335A7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718023043; cv=none; b=fYRvUxylt7lps/17CqJFVWTXqiSML3NS2EVBU83s/xfcotkblxPK9LTYRHPkm64WvjJ5MDY3vIPnuYEhBhL2+OSLsxpsAThk/iTTFxYgSWuRnx7Qpy8xLoFSlHNmcxuJm4fMA1kjHBhlKegJ99MOGNXmdF0Gxbdjoov2pBAh1Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718023043; c=relaxed/simple;
	bh=nbBTlBe2sWNqHfrOMYCuKzbgMrCUOrYtoxPivWf50V8=;
	h=To:Subject:From:Message-Id:Date; b=R9rqYRawqL+7IV1r1WDvDTELvPsZikA+gUPexKgXsBa2wXtraoeioBFOQFqWipPe2F/dLFQSbdxmbE05z1gV48nCWMpUUFr/YUmrqGhZ7I5ocdwKboARkC73meHXik4pFAjpKeMcjrmtezuVk6UTP8IIkTqAtWhgNxgEhclEtN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/MpYhy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/MpYhy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1436C4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718023042;
	bh=nbBTlBe2sWNqHfrOMYCuKzbgMrCUOrYtoxPivWf50V8=;
	h=To:Subject:From:Date:From;
	b=K/MpYhy+kk/7InphdcKOiQ//Lear0YunLliZM9ZCLm24dbHCR6qHmOLZpMxX7uqfk
	 kqGaSRiHQg1cxgeCfYR+XkOk2uND/daMut7vTl3AbKZpyCDPcutW4qVRllb8jGA3Pg
	 Stn+XX1d3ODGpvuoiRdqvsk02F/W7R1WifLFmsfr+8MoIb5syH+NiYP/x/HVT/ynRY
	 zF1KlCv6aKb4J7NWC2LoDjC9Dw4cCAnk7chTg3vZfN9GnyQR/RaoJV91E1URDcjMkU
	 8xwlHx+3EAH29E8KiAsZVNq3rCL1YPW110xb2YJ7ZufRHmcf4arjVhopYXvZyA67ue
	 cV9sy2IdLhR2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EECC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802304277.18941.12216960591710908163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3fcc49d573a0d017b6a2eb78e38e15485394c0ac3c6b396f03dfa0eb6c8c66
Date: Mon, 10 Jun 2024 12:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718023042
