Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB442528FD
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769273634; cv=none; b=YJ+Y9sjiTZre3+M6DLcgUV36d9mIiJe2cVZOzTKcYS2I/8CEMFRWGH6W3SgHLfLcXFQbSms1AA6zEOPaACJbDTI35QyQUiVDClX+IcyQ4HO4NydR5C+k+RCgxllJJFgzty+lUbj+lwE1vNr4dnj1l6Wad/KgDAL8GwT4mvxRRUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769273634; c=relaxed/simple;
	bh=h21JgArYlrXH/hoy48kvBiP3bDKegziHWzraN0/QVWA=;
	h=To:Subject:From:Message-Id:Date; b=kcIEB0039DgakQ1mcSd8QGJvm8TUn7Zlm7O92K9tp5RDgITXi6jcJj6BsrdkazFgn+FXba+3tspFlzlB2UAEZWQizjrfQ7r10/NSdt2l6vA4KS7nvjy/1NRvIKZiM5pY0Cy/Cbgt5yJOVM0DY/gYRv00pdvJG3uZHN2zNKybTbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3xvV5Ov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3xvV5Ov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E14C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769273633;
	bh=h21JgArYlrXH/hoy48kvBiP3bDKegziHWzraN0/QVWA=;
	h=To:Subject:From:Date:From;
	b=k3xvV5Ov1Fdg3ISUDOmyn4oWoynBW8b5MZEepT7hfq9uSirKQ+fvy28QZqfcqLWJl
	 dvY6Zjx7jXJDNi8lqF0ygU1dLcV7lOILneBWtf+A7fjVp5si/wV93u5rZlQY54+YtR
	 puMhu20e35JMzwULdWW/n0vmgxUblV1Rd27U2B9vwJCo3vieEMMgTlERJXgtazi0d5
	 rq+G0EsqzdGyphVGXqoQfeIIqlAo0T1u54iWVO0TD5QCloDLkCN6Ytr+0H5r5enz9a
	 xq6KxRqnzmQ6epwF+Px5Slkya3ojixRb/gcijLIDWAiW80LO/drb8MlcrB/jQnb3mx
	 8NBJghFxqz/wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1FD715EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927363358.26270.6954313448110173011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5201fb358d626a1a18d113e8b33987605ed926d73a3ecb37271c6a3ebf4d1074
Date: Sat, 24 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769273633
