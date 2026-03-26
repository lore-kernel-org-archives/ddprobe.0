Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B6623B612
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774555493; cv=none; b=KJOOdbqZBKtZygsiXghhPGwVqP9+G2J8eFTQ4LIumxMTnhS/7Y4d4iLwAsOzP84Oixz3p+I3rz1vYaFbKGwQKi63DY5EOI0/imYJKJwr5nxNs2sZ/281EvLZlILhsNENPpSAglqLz0liVkTSXd+G5WTOL6MvMvlT11APPPgEP60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774555493; c=relaxed/simple;
	bh=ZA+R+gKS4A5295RogqLT3WT6HRTr2Dd2t6ICxrmOiMg=;
	h=To:Subject:From:Message-Id:Date; b=bhsbK6kFtR2mPu9neWnceqk5qQRXPFJ7l1l5cADR5eYxC4k1iS7jHjrtVVv1/nBeA7lSIC/Leo2qYHk1RT4pXp7zwLb4UPyFEbJ0jhG61XkiSvhrosncrpJKQLSQIFw0CvUk+ONY7lFcad3eV5ES/sPjwRvmP3BlG8AcCbEbYnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7EiZzgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7EiZzgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECEDC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774555493;
	bh=ZA+R+gKS4A5295RogqLT3WT6HRTr2Dd2t6ICxrmOiMg=;
	h=To:Subject:From:Date:From;
	b=j7EiZzginXDx93CMvsmzKOp8ahx0J035Df5uzRHyNAVYaX5wt4w/86faU+ooB4CHF
	 0jzTXRSw028W666/FxhniX0R+PCck20B0D3m7t94bCRKtYHKVdNALo2J2IR9tfILeb
	 oU/18H0TGDBhgTLyVZyexLA5aWbPF2S34LAxsYdKz6x01txV2BOxwG2b+cR0gsLa7m
	 oEayUqMQhqBnVKk/pVCH1l6TZWSbwN9O1hL0NqWxV+fwRO00ZYdjJknAgUBtmZNp5R
	 oZnw4DXgStAAXW7jJq2o3IDfblVUTJ/XAxfKS/QkO7u7XN1l1dC2ddvniH5Ywwypnr
	 fYfTP8NNj5sbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D32A10AB81D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455549363.31137.12554530711389676234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1db37be31d1f9d7df8eec8857c62662b9fc30921c0d5f53188cf9bd4e1f624
Date: Thu, 26 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774555493
