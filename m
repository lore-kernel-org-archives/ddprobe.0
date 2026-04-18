Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203C92690EC
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776479854; cv=none; b=MgXCCiCaZU7l+3ZxtStfwCJRMJvS5aZX24o5EUIQrB37BP+nCHoxlZTYYY3hyXhNyOjAPpDphAR9r7awtYLNFk8V1nUozpbSrleBHLIu63sUQs4ROOUExsesjmtoYp0Iu+NvzRa5/plJWCAnkZkWiMH9kEzfAtxKhnac7D1nrCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776479854; c=relaxed/simple;
	bh=6QBeGmwHvW0ED1KFoAulStmKIcgmDy8bnsH+pdCoR+M=;
	h=To:Subject:From:Message-Id:Date; b=RC+cZ9ZDcQ05LeJ2eN7Vx0KVAbOoB1VV0Fn4E8BFTDPY/MOsjK03FbjgaATQlbmYeiBWgrNp4VojVfSXpg+/exSXVVBJwvDXhP5SzTdqh58nPyXqPyton6OTQKulX2ungZq8M3OWelZHCTB/59DkWwkj+3CrALgHtmu0ODZHMvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4vZX54o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4vZX54o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C231DC19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776479853;
	bh=6QBeGmwHvW0ED1KFoAulStmKIcgmDy8bnsH+pdCoR+M=;
	h=To:Subject:From:Date:From;
	b=n4vZX54oYQg833twFn/0b5js89Wy6vGoBa9lBt0zEmomr+g9jXu69yi7QWeJHN40I
	 NPK3nNMXzVw3nPElCHiaI2zJz5paDdmYyYfWo7aPLqeBgyJfKEheZUGZpmrX9UdJ/B
	 SShPMlTS3WpeyR2RNWkpGZMRRZ7foofz9jtP30UwSozi6umJ2EZ+Zc8hod42GV7kMO
	 PRMqIADXCUHTiu0kQGnbWVqeELtoHqma92OiabL5tPM5Sabdit6WMIZzFFQWg4uJL+
	 4YwtP+CljSKIPq9GMIJrOdi/ErcxZH4dWl0M+UpmXqfn2VwAC31xaFkcEeMtd0otxH
	 2BE+a/HHx0E7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA4FF99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647985368.7810.7376484892586661316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f108c2b22b9033dbce6dccf2543c979cfd59651383596597a5af2783828041da
Date: Sat, 18 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776479853
