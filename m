Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D551A9FB0
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759726194; cv=none; b=qUzc7BcRW+cty1zXF51viGXE8vis+DPE2bmvkvTNw6DdpRy7lHwDoofTP8GFRvP6jN8WOuG017d71q67yNCNYu1wSG6mma72gXDOUSOn9HFtBpdi40nFLwYr6M11mcdjoU0Gqmt1248ACHJBC+dehdTB5OlfmupUhfw6nJKHqjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759726194; c=relaxed/simple;
	bh=+MHJA/kotY+SciLkm+LJWf3uw0YFN9+LRL++zW5TpWc=;
	h=To:Subject:From:Message-Id:Date; b=MJmFMCB0hL8i+vw/XLxZjYbClU72JLxJRvPR8zYKprWOLrGXFzV/Se5c5TAH+z86wMl+EVCv1P11cAha/m/IppaOa8WI4s89EBi2mV3dZgitWJ9idc6ijgSDtpWUJDLCEglVSuzbVgrgiYZdxgynUC1p3b7vFq37hLqnbUa3jps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdxHTCd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdxHTCd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F12C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759726193;
	bh=+MHJA/kotY+SciLkm+LJWf3uw0YFN9+LRL++zW5TpWc=;
	h=To:Subject:From:Date:From;
	b=HdxHTCd0/KHJOuusQvfIl1s4rfs6eCF2btidITqrQfZk6PRmnIWyR5jmhk5/1m4KZ
	 vcyZVOPhy+eIkuzE4+LBt1GeKce7OYaKLDGQkfbuiVWrVkms0HbnubcQ4cf5+RG9tq
	 3/XQeLZIJ8L8xYUgDCvXj2I1JOJEfvoUxBUSwH5opycCCrUbE3FHIiqpueqaOH8Oz1
	 gVC4rz4FFbouB3aNZJUKUHzZBDh0xt0iz75OF1Uxca+0oCNBnwvxnJQSekj3yTkihO
	 fDfcSOqrWAgAG5XS3yd/RVdbwmjezWDhMuDeloOuL13GsMtTPd0CHc3Bwis2tDbpkd
	 w1cM/K4YTwivw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FBCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972619357.15339.15350965804963271278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59c16e69a4900e64a3879740a770b6cbf088a51e5a3c5961cb82cc973eb6568
Date: Mon, 06 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759726193
