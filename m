Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E1A352C28
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775195734; cv=none; b=Cya/vOSg6GsEJOWKVMoO65YRCZKHi0eHss2cLchNC+KTOA7HJLLxOZxEndi0or/vKfif86RKH4qY73s3xVPa9HdPtF0EZzySsaM9D9eUK4IC5sH69n5DWPFt9hk92S1wyhs4VGIpkoSuh0Pr+UfUDpSEo8FVqAMF7N2lbLv5gvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775195734; c=relaxed/simple;
	bh=sO/U0QhCzSjnUHd0c0AlWzEcv4M6R64+zGjkvYYG/Dw=;
	h=To:Subject:From:Message-Id:Date; b=QCGHi7VOffFgzgE6bFQyXxNFcvTTyTmyL0yKInWEuQg0agTfuDUOsKnf1Lg3bu1TOTqwJund4qpQYYEjQseFaBzcItVkzfF386n37dg3RLcIKSwgQJlkWs2KoRbLsOksQ+4O1hbk3OszhTNxHEvSTHxmo9HUqPcaEBIn5qXitVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRwaMcbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRwaMcbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE458C2BCAF
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775195733;
	bh=sO/U0QhCzSjnUHd0c0AlWzEcv4M6R64+zGjkvYYG/Dw=;
	h=To:Subject:From:Date:From;
	b=iRwaMcbCO62hKhk0zk1kuxEPZhXY9T1E44TlP+9yNz34H4S0Ird/3mqmvIX1j2Lvh
	 IDElRr97DHvrB0veuOs4Hfvc9OKWBCt88BywVhr6cUN5XeGOoBwEN2naQ26Mm0FWAC
	 Z3ZmpQYV7BT3guF3XEXR3sfkfzvqnfBlEHgDesHd3qwkRdEbb7L3MCsm2jRXHrvyDk
	 RlAXowWIEgn8w6N6Qo2g6esDoSC9XUkdzigYSiKVzABKybmgse9OeCZWdLtoUaLHH8
	 18kw2oe0HKO/zHTDNHHne/8nTOyu8MYWFnfG+T2QRhEtyoR1Mu714ebQri9fKPh62w
	 rxJQjBwfETxig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00DBD730A2
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519573368.1345.7696180302222897388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba265ca4a93b07e76a0a28cc90eb7de4d4e50da166ae2485e73e3a3809b4dd5
Date: Fri, 03 Apr 2026 05:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775195733
