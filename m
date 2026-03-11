Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0F2279DCA
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773237894; cv=none; b=k1Xoy8e/Qx+A/3m33NcUExh8RhBSp/dkArAYXxfsOFL/w45x4p+tW/beb8D89cGE9ZUMJRYesy7ADewpk0zAadWca8/OmMw16M1WFlP41T22840aa+ez1IZrRTHgdcZO4B1UYTY48rjAFqATe51wgV1Xzy0zmYajtQAHOdLBERU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773237894; c=relaxed/simple;
	bh=jY8+i5SNyjBZlRfQ3rUDGLKcJFkkTNEmBl8QnGd9eiU=;
	h=To:Subject:From:Message-Id:Date; b=rnXUR79gxhzPdZviVnWJAMw8ArOIkdOdQdbJLhNxETsdi0cYPUfRZSOGoFFBrOTGCVNosKR1lpDeUN/7/XZxem5TD29t8VaXAdlubxB6Oa2EDwSo6cisWpFqXDJTkmyuVFLh8BxOKiTLYH7OP1u9uVXSklX3zsx/iMJ8NL8rR08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmmIA/dp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmmIA/dp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7712C19421
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773237893;
	bh=jY8+i5SNyjBZlRfQ3rUDGLKcJFkkTNEmBl8QnGd9eiU=;
	h=To:Subject:From:Date:From;
	b=hmmIA/dp/e+YacG/VWdId21tGH2oEbDtBci6W62R7ss39oVcB/IJc5+lSlWsFA4T7
	 VyuWQz6X6G39jpeldjL8baMWlYETjTWoajyQFWA2Xj/4qBdPb/fegALrEU3qspgxpH
	 VTIuDGJs0gCDaqbF12gz2Nax4G9L+5ZsdLe5IGb/Iezx7vIwj44xvpbTgtBG4tj1lh
	 OuK4nuTHa1pqHK4648dUygkJXjeVgrFT34clIuXVBUAtfepFuAW2OAVH+z7Z4jRdR7
	 mC/5RAJBtPQiEJiNSsd9dJOn3wu0siN/SK/M+lr7n80e/zmcjz082nIo7/gCoUzMiQ
	 eQ5shzyUqSP+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DCB1125825
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323789360.21826.14747567375497234317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3190130fd202df7b3209042ce136ae4cc086cefaea725b88abb71da9fad6206c
Date: Wed, 11 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773237893
