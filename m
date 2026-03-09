Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8DF155326
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773027894; cv=none; b=ppxhU2uwfUKmkAXbSo2iAi1FENNLGZ3q+bM7cUucRvSCyUqwXllwipblFhVXq35evhCKsh7VNXEtPOPL1iDSB/7XgrDZm4/CgFqHVNH1hGvLrqgdInTS70U0yyZwTOg2PpN2yN5HyiGx+VfnWiDfOYhTFWZ0PPuNLGnq/IR8Fdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773027894; c=relaxed/simple;
	bh=PCJ8fsRs/aniCSkMRqhbhIjxK4YyYWfXXyZOsjVEFlk=;
	h=To:Subject:From:Message-Id:Date; b=MJrmE1FinN4Xjds4AWdEf4pgvLGZ6TPjaYyLU03HvZv5mbW8rEWkukx3B+4/DR8nx4xA3vNX5wEQcVd6krZBX0s0mwEoSUpl1IzOCvOQPoOP/E152Cm7s27uKlSBJFRa9/gjvTZQHZ/FXDWHvtT3UesUaqc4yO4p9iTs2BXsTL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgF9GzN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgF9GzN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59C9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773027893;
	bh=PCJ8fsRs/aniCSkMRqhbhIjxK4YyYWfXXyZOsjVEFlk=;
	h=To:Subject:From:Date:From;
	b=qgF9GzN2F9ArESP84dTVWo8Ic3pS11lUdECTYsfac6NNJkufpqUxki/+dSn62Ijlo
	 DIQ5wcz4vctEUb/8RuErTMkKtQxHCga4sq+9KExGyonuiL+NsWqPBo+2VVl35VyoOP
	 wTheGjAY7Ixjyk9I7USUBL94XTPIXXKvp/kKGLiYui8E0JfoMCr2dk/kcm2Y6/w+XU
	 b1b+kHOUbFmuPJ/rTxbISdmZk2DpuUX7o1cdpugHozoVnu9RaJaOdvbA55peVapiU1
	 hiAtwybhN1NDxKyedniRDc627f/pn8ijMiuc2CzoGZ0upm7g++TIyeqdDEgg/t1Zpj
	 BkltZhyt6GidA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96150EA8525
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302789359.17003.6022743259646663326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76819c47f59da47d6cba057bcd9a6537117346cbbfbe83a2819a45e045181f4
Date: Mon, 09 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773027893
