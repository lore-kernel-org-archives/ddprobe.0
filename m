Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1781E2606
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782146794; cv=none; b=IHSSAJNfM3UxhUx8eF/7cLBRz5bVHU8j6/+HDST8iM1KCMHn83Z93DNkjvAmteGieZSOAWcknSz4gfRZiRkN49wnC25uD8mBRVYN83zCuhgFqx1uU67kdtvbMgN+7C1CJz5kQfDuXRoBtgOJTBAeNcvtoZUU2erVmEdLrK8olFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782146794; c=relaxed/simple;
	bh=xqa6SRXsmlqlMNaE64G/fzcY1ZVWL/iHuS03JNyMeo0=;
	h=To:Subject:From:Message-Id:Date; b=Dwh/X7A2LotMd/YAYUVyHow/qRYAhruGAJhEEcaGsNynJv5v/JBjTxDMc/ulO+TlgMFUWcNjH70lpJZeyy+aZ0M4EVF/Zt9XdEOk5wjGDqcdKxY2hm7oKo1yiElBBgeCQqK2edPCZLaEsZdC1ODJiTQ2PufBOI9jmiajHa9wl/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mA6asSrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mA6asSrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8444C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782146793;
	bh=xqa6SRXsmlqlMNaE64G/fzcY1ZVWL/iHuS03JNyMeo0=;
	h=To:Subject:From:Date:From;
	b=mA6asSrd801gWrk/V4gQSh4dvCCUEe5cN5gj+DRUNXkYXiZ7F7SJJkON9brxisUoB
	 ctVvZKWohcbh1VFG5sOHj3oN6tv3WGkH0IrOA8qe4+9iu4GLDOo8e2wwf9iyAW5dKG
	 290/a0kGTNi/dvJ6gaj2GSbHQPcXRcMhCK4aEzDp/NLbC7lpnr62jgPgHEUHB+5D0X
	 VIGS1BvxEP1TFeSHsq3eOgP305rB/rv1IMtVKgFR8e48sEF7y6vT+urUtn2IohR/wa
	 jknyzY2bSdd374yiwZN6PE6WpDJr8OztY4ASM8TVvX6zx1PCRFE8mPSL7pxve1G37F
	 WosU2Ybvhs+Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE393CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214679369.26187.7204351747372595714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84ba5c4647404709ed8c3697d61177b17d424caf6bdd7ebc40abfa65adb180b
Date: Mon, 22 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782146793
