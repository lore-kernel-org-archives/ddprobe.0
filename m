Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4DA222587
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763149794; cv=none; b=sjD+GM5L8NGb3sQfreDKrvjPmPWYOTjZqM/eLKWVFDD/QbMFJyXwqAk+B4yq7SRSoSBl8lrzbvlZuQIA6PVYb4qMuQO1+4/wOmLwo7tKgu9WZWEafliRro6+ptiZGO7l7vFr9qJkBtYSkDtXstRc6fw5gjgESxaS4nvhTPZQQ+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763149794; c=relaxed/simple;
	bh=eTShShBJd/MApj4qm2MX6DRbuBBZe/HeBVdGxIGdo5I=;
	h=To:Subject:From:Message-Id:Date; b=rv05NLAtdObw/+b89EQ851HFJ/BfpoPapOuOjR+fY4Tk3zdUCV8DXNBtf0saXnaqbj9vg02XFPOT9BH9H/fLnTx6Q7RRjgUrdBKytcMg2scB91bxJpNXOpqv8AvAQx5IjlEJ5wvkhPblpoB6a3tXV40JFFD98RbESQEoosGywpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeHWQMtF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeHWQMtF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E099C19422
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763149793;
	bh=eTShShBJd/MApj4qm2MX6DRbuBBZe/HeBVdGxIGdo5I=;
	h=To:Subject:From:Date:From;
	b=NeHWQMtF2Qa4cdiNQDBp9j0xJ/5UC7xoahCl99LocMf4a89Lbjx4QuTMWgdNRFK79
	 xSJLMOnqNeUVcJHd5uWJTUeJ32q8hDAPg0Jg+6Y8Tua8cRDViviDFolTBKewjpgUTb
	 ZBY29BWYStV0HsuUaz4DGODZtxmSZyzeNYkUvZdSeeFHSQrwqJaRfTWTkXRnRbtskg
	 iGJcEa7Juezkq+qfWJIFUB02WEWE+gTbl2DKrkI8Je1y03oAUCS2I0Ki8qU9/NJtPj
	 6oAxzBKJo7SbX3lmuhJscA5uI9rTPOLGxxrW3bysGu5SmfsN6dFpGGcHUsWttqLPTz
	 JH1ht3a7f12DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90723CEACC6
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314979358.6838.6657198642650675742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea90613bd5e082d31e819ef094f68cffcf0e837e2a68a4704e434983f49d414
Date: Fri, 14 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763149793
