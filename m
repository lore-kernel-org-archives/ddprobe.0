Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304A325D521
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750879794; cv=none; b=qkJrlzEvmL5SIwt81RS9m4RPUOB/a5Mi4x+R2p30fLwg/ozUXc2/9fHeO+Z52Po6DWiJHx/A/2Qrd1W1ap7YppnORYoZ2Q9zWtkm9yuncezIkh8zX4xqdN7d2BvNAjW7BbpB6aeFJnh54t33ygP+56RRZk8cOcfE2aGsVGbPoog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750879794; c=relaxed/simple;
	bh=s+EHHY6/6Pk9HjWeHtmzXXFfsOeufy/hnYRIlhqC71A=;
	h=To:Subject:From:Message-Id:Date; b=A28G6Pr5MUnCwyUCcG2at+0/tu+wDurCCBg1gWOoRlqao94l1hq2lX0ZEp8kB3NOoxjGd/s/UvnsjyG4h7gJ/oMhusbgAdYfCjeHr0VTUHf1F2Yquys9ya9dXXfnSpHO3F0Yh+co/raUQyjm1KZjjWBThIwQr7n5oJyjsgslafc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCY1uOYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCY1uOYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3E0C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750879793;
	bh=s+EHHY6/6Pk9HjWeHtmzXXFfsOeufy/hnYRIlhqC71A=;
	h=To:Subject:From:Date:From;
	b=jCY1uOYjOkfi8rTQr5zuiRCTNgTM0G0KBR6zvR1VJG0FhxTcfZpEVGdTb9Ms0KV7b
	 6e3eW7EB1iXvFmNd2Z328POzG/DsTR67vt8TzlN1raUHf+ruEcL/3lLd2NSg1ZrrqR
	 zw/0H2EmgRB3nrWxsoOj7vRMG5YfDik2kPsiU+ZFez0JxLYe9CRuF9HGzlDHcX6DVO
	 muiteN75R7GJBXhmCgBSMj4Z6BtPlaTK7lsrJke2n8geNNNHyYtUflVWoSnJpp4DqL
	 A14oFoDSGoEONZlaPzQZwx10+w67RDT3l2+zOXmimKwvWuBPsemhUy+rYHWieJPY6P
	 DBU0SYuaifWZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E933C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087979357.17861.5764459506575556289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1322f9a2f658a57cf5f1f78bd48f1ab09df47b18d1abb3359890a08c17ac456b
Date: Wed, 25 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750879793
