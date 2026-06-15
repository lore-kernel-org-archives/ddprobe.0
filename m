Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351E6194A6C
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781500594; cv=none; b=syeFhh0Le1/pLysGc14ZEo4Iu18pBskqmuzrcHc7MegIXrIe4nnndQ1RorSRs5TCBM1AtLm+fW2o3o06FHF5zh7VZOAQR0j15KtEab47P8jzXRAJ29jGMK62iIfkmxk4cR3/Mj//MHUSXhYyDBbi49W+2KeU1DTRcFc16+uoLhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781500594; c=relaxed/simple;
	bh=i7qnZO9xXGQqHop5CkAsvBOGQWpWcZRmt1ghDscspvE=;
	h=To:Subject:From:Message-Id:Date; b=tcbEbX/l0V9vbmCBLgVovCRel5hCj/djNe/3+vJKVg+BHTqkgvKz+Ia5dACPwiHgQmuTwuhPz7gs4q2L7SBP8/RxJgzI4QsFAJU78dYpMljk2TwVn0Y3bv/WDv5AnXqgibGig4r0TYd8Gc1KOJVm3H7OZ73bQ8V5iueHNkwfLNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJU/Wwyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJU/Wwyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE87CC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781500593;
	bh=i7qnZO9xXGQqHop5CkAsvBOGQWpWcZRmt1ghDscspvE=;
	h=To:Subject:From:Date:From;
	b=EJU/WwywxVoWWVyYcFxeIA/Cl6cLyzuhVQa1R5+g5u4yjjfhoIMn8NvSYpOB2191Y
	 pDQPlQ7cuIztKXQJm50PlfZwzpB8NZZOkZps82e7i0ZgvNfr4ksLFa98jni6gHFriM
	 vZqSaT6R4RsylbMGAdxTj4vegTVSF9FlPk28dDbhGoFpQ3/ThSr4rUY6O+5oWeD8JD
	 B3saHNQmkKMJhiC8N/ccsbEnFXGY89vdWeQ89jO5WaC8A7ONfXf5TqK8lYv0Mj6MHy
	 OnN2iSJKqskeC8TZqwFBlLiV6m4bsWyGA1h0T+cxxL4mRuFue96j25m7AFdV+eRdot
	 H4nNGVAdDudQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03C5CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150059370.1782.3529186350332313114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760bb7acc4883460d405760bba9e9338ac671a26ab9993706c705160788a3f3b
Date: Mon, 15 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781500593
