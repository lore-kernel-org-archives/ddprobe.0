Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381378F6F
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745758194; cv=none; b=R8fRI8hB51XZeb+n8dm7pB/BpeOE28QwWXrdi9yFoDt3zFxd/icBnVjMYdbv13r4ePUS1Gk1awjlXKkWSyy24LbHJBM5cx9BfV9ugZeyNAqSTPXODGGTaReqMPqlRKPPVmbhtWqeAKBoXTKbab31I1ZZt2o7HtUS53G9UcvoXqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745758194; c=relaxed/simple;
	bh=nbGZsh1j1BYPx68cwcWmvm+outQtjhI66RTWhUEWauI=;
	h=To:Subject:From:Message-Id:Date; b=t9PbwN5UgJWRFsVI2ei7hA2CNt/5Tkdozmr7mc2unUPBO1dRE5wgJwXatd0vsk29MkFfxlB0sNILpJ4/6/2Ls5nuVbxVLI/ZppdNfiovQwFf7GwcWq8nxKOeKXSEatVnOS23x1DVI3+lXbzNEzSfgIqKYPKD6XEu9UW0ovwPcmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/dvcXTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/dvcXTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58A8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745758193;
	bh=nbGZsh1j1BYPx68cwcWmvm+outQtjhI66RTWhUEWauI=;
	h=To:Subject:From:Date:From;
	b=S/dvcXTb0+2225ht3RztTdsAe4D5NobrrIN77Us/66fB4Yies1QIrSZsdX+Grr+wA
	 ACqBTXtGElVCytkV7o75uToiYCsdx7cLENCbbVk2tqv8VzVnL7PdLd1TIx20F+wOgS
	 LxppU7k/gNXWLZJmDGbVGFoligzBNTBWWBIHWUBYOttrMegUP2fb+yuhcCbkPHVAkm
	 cMzO/AMuzUIVhDz9a6yq13A3b1RoWzj9pv1niLE1ffURH0K6tmiCo/HDM4ZwmuZG22
	 yfIQ4i8EKWAHU0IOGrZvdRsldv3hhMWVn312dfDEROFHiWtlhyiWohEPCMLQfeKYUF
	 CN/sbifY/73JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A87C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575819359.31247.4320390386347337733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86fdc4ea6af2d9665cc362a6c0ab02a0e988088c70f941908b0581942e2138be
Date: Sun, 27 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745758193
