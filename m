Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE3131281D
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770563034; cv=none; b=kQrnYXcHutYaqZxfKUanQbepaUb5mlk47mrvaWqq7a78j+gex5CAOM8gP8x23vl8tQXZlHW+wgi6em7iLGg5MBfQ/JUWG6o08QJg5VlO+AXAJ1oLekcw1EvTxYno7kDKTfPgZWFCp6Kwqw9nXHTNHEFU3kuG3SyEOiXBMsPBTGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770563034; c=relaxed/simple;
	bh=MTeOcTBTleDasgeGNg931Zy7AFpzZVMyfyPdOwFJ0uU=;
	h=To:Subject:From:Message-Id:Date; b=HIT0ItD0zCIAjc28qNco4uG4VwvV5NInef9uvYRXUuKpfL6+xa5DMWz3ZQTXF3nwYTRhcIO/XvMuHekydS0N7Tc6k7FSnhVjwZYFqyAYpky4dqKTf1gRwwlhGqxsCnYeQk3vshzZlIOzj+GEoMQe9GoFMA2bp2oeY+nUdmum0Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXj7dIhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXj7dIhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2417C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770563033;
	bh=MTeOcTBTleDasgeGNg931Zy7AFpzZVMyfyPdOwFJ0uU=;
	h=To:Subject:From:Date:From;
	b=iXj7dIhv6w/TZLEa9qeuRQfOpHAeFtgBnLibojFID9JS9+8Zs2ERVHeNpaxsrXWro
	 oGq17aFouSGeBDtiYfNgBMc9Q0bh9M0g2DPXmhw4/f0zEAvmtU3eDD3TyE+WWuOhWs
	 Dw3qKZLbRCoEzVRIjOp7zqjQmyUD/+w9kRfsoSIJCaIjQLqG3vSQnrvSU5xCEhxLBb
	 bQCyfOveGhOnGDRQZWM7fFwkQ4BikNfp57HFu6+rDyx5HuTwg8lVm+zXI5FBO8w4GW
	 e/4sYn4NGCq3fotHHJ9/nrvEdN6txeO30AMyoNT+CKEJX7soy16bWQK2qCHsUWEnmA
	 mvDprWH67hGJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B460EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056303359.17746.14502400231670273402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c20f731f080a4803379cc93d99f8a8187662660775e1c8d7c6204e4acabe3fb8
Date: Sun, 08 Feb 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770563033
