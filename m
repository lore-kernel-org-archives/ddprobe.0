Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5877728EC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719533063; cv=none; b=r41QQKSOzVrtbznpOXsOQrrMKCDAklI1z729qxNJq1l0qjWeRsoVxhxus8ACxo4lMLX+UKm/Dkk2iokGcyRO13dx0AmiUp0mOh+ubKeqkUanshiBEFTvI/ftHNhC91F8tFwk3i1aJRDM0tfN915RZTeEvoj7togS4LrNV2u8Nww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719533063; c=relaxed/simple;
	bh=tLU0M0KyEQ5JtIrjCGpNJbAXVkjgcjKWYF1jaWv1xz8=;
	h=To:Subject:From:Message-Id:Date; b=KSu+M8UahWAfrcNF6iJaLYThKGOvB+MaFd6h0lTbSKO9YDduwxIU9oxYdPLVbQo8Nrt/GA+mh4uwrAcKT3DnGl7Zs1RRlI2DrKJ2sttk0nb39SYjp9S/hzB3djxrVhSyllTp7f8W9yhKVoSNmGNCnur5yMuZfIAY2xk2tyqev0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6eOOWaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6eOOWaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD80CC4AF07
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719533062;
	bh=tLU0M0KyEQ5JtIrjCGpNJbAXVkjgcjKWYF1jaWv1xz8=;
	h=To:Subject:From:Date:From;
	b=L6eOOWaM7vXfZEuo9Plf0n+BR1j+wbJlr7YXRnfz8lNYK8/ldFcLFgEGs9IDNhJ7/
	 1bt+CcOV2gIZ9pZWjN7eiwrWVYF45agnNWNMpp6vCzmz8OO7Ls5njjziweLh/FBC+C
	 iE0M5jQGjASi8YLKRDML1bNzhinpZFpj89A0X+Wpmj6qurhbZM+4hEbbNlss0oSgLf
	 DT/FXM5cnXCzgLyNIAP13RdLafRPRpxs8H4JNCC9KBdzLJFvtAnIH6KFIagCNBbFvU
	 TnVR49FX6RRScaCRupMXtmwoKgDaRge3gHoZjOiDWSmmndYuN8XzopXDU6HVBWvZh2
	 zTDuubHuQSUJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E38C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953306279.32618.5965636643799023514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4c938d909369973b0cf93f0e6dde1c851b819d691989986ab6de2c60a31314
Date: Fri, 28 Jun 2024 00:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719533062
