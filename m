Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BC546B5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727107554; cv=none; b=roqfEUArw8Ac1VTwRlbxM/5B83cVvMpgll5PYdcWbVrM3G54CrMHZytPfhe2a+lPvvx/S+xgJ1o8pKjutC/3Z1Ew5ElBJW89WHLtuNSfFmviTTBbZnfYqDshk3MOx32ZZ2uCH1g0MI0VCiDsRTSI/tcttB0JGecqLoCN4WF4BaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727107554; c=relaxed/simple;
	bh=qxb9gdbbxB1P+uzEIiDfW6K6B7C47U0om72NFrpS7Po=;
	h=To:Subject:From:Message-Id:Date; b=E3WZiLEe2NgzKAPD13rtK1pF9wVg6VysKTnVpxj2LYVYTMTnpVxUPrt1ufbJg5ak6NKFe76i38z92REzL9J0tgmovRNbXkkkXx8uwSVP5ZQdamheu48Z029SdhSUOOB6h3BFVQZNyg//XHa/tcdEBxufjHw67zeUNI+CG4oAi+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9xd0kbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9xd0kbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F325C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727107553;
	bh=qxb9gdbbxB1P+uzEIiDfW6K6B7C47U0om72NFrpS7Po=;
	h=To:Subject:From:Date:From;
	b=c9xd0kbNwFoCS6KgMW+E/cbCNBFrQMxdt3z01n5CpTJ2VSj2yYsUD40skdzq6Spbr
	 YPxas2AFnGpppx+hIKnb47fAnEjXYOvnbYYw0LPyNFMdmANusA9QP+IOBiSx3CwsYf
	 Iro8VlqqYThVd00Wg/kFU6ai89l6DdvmiFrBPIPYTuf3wuv1+BQbieJzeQ6JP7CfDC
	 CGflO3hlvSzLTJQzv3+T6QCAnB1Un0z3CtlBdPg+LGe49SFq952kdptEsd/dxUr7Cs
	 CfKZqVeU9CPkUDh73zHN383N0kz0iCkV//ITidrKH7hZyqWwO8OgXsslUWBUVoDNLU
	 qYjIdRLUyv74Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E473CF9C72
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172710755357.18224.7154128994780247133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a13c12f7a928d52767b60ac1295d45c615e623b3cf0e1789222af17f562f96
Date: Mon, 23 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727107553
