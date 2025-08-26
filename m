Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD0C4D599
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756171794; cv=none; b=SWTUL58i+DUuKsuZ1+nLrhSp80uWN37+BbZS1QqSnsf9LOA7zhvlvvXzWTEo18iAUwZeT+mOWNP/SUGhLMoWYR4hULrJJoUyx80iNNu3CUD/bwfbwDlksL5YALGwXnss0hteETY1ZxIDVfp4yIJ+mYuPTwzx98bugTOEbB8REN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756171794; c=relaxed/simple;
	bh=CGzzkc97euWGJsiORm25XCrPe52rPg2Lrpzj75iUG7E=;
	h=To:Subject:From:Message-Id:Date; b=MIE5ShzUPErVcZfa8+BkDZ4lLce2q3t4DKPlJ6SLmY05A5VB3r0CNulv+ycgl5LrJN58YkRLJ/m4eqqePgr1oTo+yj0KkM0bGXyUUbdfKw+gx5aqYSaKp+Pxt/nCwkdbWmJWEP1PwkUfOhyB8oLFLBqWxB9rqA8tFJQHA3dc/n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPVp7ETr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPVp7ETr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FDAC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756171793;
	bh=CGzzkc97euWGJsiORm25XCrPe52rPg2Lrpzj75iUG7E=;
	h=To:Subject:From:Date:From;
	b=tPVp7ETrF1cjH5Bycwu+fUjLmUU21BVNDz7ePf4yC6Vgw6CKTmFQD69tFLa70Lfsl
	 RW7Fg0rkS+gFINMuoDIKhcOXLHCNbPw8bX89vp3i9EiOOzdpUelAYBTNz2XnHIhVxf
	 m6CBC9IK4nlfy2tQOhanNElO1GRdXZFnSGJw6gJAiC2svgof6o84RUGzFd3Q0Q3hjw
	 luqi4TatjAOLalwywvY3qP9U2++ZWxnrHLMOkGV8R6qDYRBHxb7oEq6v8Fp5pc/4pr
	 wVHAoKUuzPQqmJif57SX/qq4au/wY35xOA+XaItloVlf0en95Gxoov7R0q2TrUaVl1
	 JjjG4lRgxP+4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E734CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617179357.8956.15464472367639228041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066a4ccdeb97521fc79716911556149dc21959122b38e0c0e31add8271c6e4b5
Date: Tue, 26 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756171793
