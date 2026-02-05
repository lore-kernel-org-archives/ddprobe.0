Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2981C35DCFB
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770277434; cv=none; b=u7kQaumU/W1Vr+T3B5HD4+SiXRK4VeefyiQDUtbTdvOuU2J9+hJr8jqWOxi117c27SlOF29JJngVZiaNVwCT5wtIS5lcpkIo+JgnIXrsGvgOf5AAWTQzv7kZYujnNRyFq0JwuzfDHnPB6ofiOQ5ICHl6SGPfOX/u1EDSR+ydjgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770277434; c=relaxed/simple;
	bh=xZ2cN8FGsNAkI/jtpdGEeXblstdxjeVY+UpZ/7q5ty4=;
	h=To:Subject:From:Message-Id:Date; b=md8q8H0DxIJ7tv4UxCr4JQ8VeUkAeqG3R2T1PGmrMIVusM3var9hIK0qeDnfmJQz4dhHSz12c4VDCIC4n64xbehxegTpvoVxyF4FrMjJsiwhrUnc4ihbMJ/vZ8hrepdMAZwiDxZvBbzV8UVPdsbrkB7tt2O/0bEWmk3zBGuAJNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmgdrM8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmgdrM8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0305C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770277433;
	bh=xZ2cN8FGsNAkI/jtpdGEeXblstdxjeVY+UpZ/7q5ty4=;
	h=To:Subject:From:Date:From;
	b=UmgdrM8NfdLNRMeSCxsuMXjQGSSf1tskXbpVrv4GnZFbYJ3ed4MFrNh51XQmexEqo
	 uiayDba8nxLDH6p8Greyd1qCL+r45eTxwioG6wXEBq92x+3Lbt6xAv68JmM+jdpjUw
	 q1KfTxw288ROa0u/eemaj36R/3hTZcSGL1LxoDor615e0wHHnApCpNa/cgOom2Ya5u
	 UA0i4LhpqXUZ+9c6Te8azQVwBlnKme94rXiJun/9ylejFQ/XlEbSg/ui35NKPgjCGp
	 sLeraLJMFbLlan+QYsWPRg2M+jbDmuLEMGGNPAk8vPfKdotmNTyrGe5ad8sZeXozrj
	 p7E6FWHTa+1ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB4BE9128C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027743363.7872.8102908752332785157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee271d335026de83d9a6f64484695f1eec8e9958a72e416138590d8bed91023
Date: Thu, 05 Feb 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770277433
