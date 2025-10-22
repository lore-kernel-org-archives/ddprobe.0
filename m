Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEED2FE05E
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761122394; cv=none; b=WgYpJ93P0dgYAEroIwkfoYCCEZTjkcGSCLdMwOWPzAM5QI3kjn0M8Ddr0kvE4PLWBRSCIMRvOOAMjXNItMKOztigK7whhlHrchqrHnn3tX4JrGJOrw3GD/R/7j+aEYsGWu/PpYkh+PT5bPOMRm/6EB6ftmjxCfswr5fWM/u85Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761122394; c=relaxed/simple;
	bh=6NekAZUQGkgFPjVynj8SlgWgbphdGiozh0tK5wi8Urw=;
	h=To:Subject:From:Message-Id:Date; b=SWiPD2f687b49O9ASFuwVn64JQl2ld3at5iXAV9jZTpNiO69qxGc/3DUb1VrfOXwvpXFOOdQqemKCfrerUTf1MY1HIvjTPGno0uGuSkXSONiOuoLxR7ymcl3MuUv4gV9j6rC3eo6Lye6c/ABset0MU1JV7Dp8T1Z6xDcSlkTAxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qugO1QOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qugO1QOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A31C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761122393;
	bh=6NekAZUQGkgFPjVynj8SlgWgbphdGiozh0tK5wi8Urw=;
	h=To:Subject:From:Date:From;
	b=qugO1QOI5GUr85S0DWTo0LJlWdiNi4aK0Anp5DsiUnyCIGuzOhVZqbTrzcdxFw7KH
	 kgI5dElse4wfRICljMd1R8s6hJN6SYzljizNeTLiMODhVW813w6F2sjDU8xuhlz2jw
	 jUUw1MKhkeGuYefp99F+p4Kp1akV+4vWAVlSkFV7nOfqmFglzsQ3YhxEGQZ645c0tq
	 WPhfh3CG1RZC7lf/NNXmByzVH9fWODNIc3Jzz9qbuwhq91fWgnE4QWDGrlQIA47ckb
	 zuae++q7yDLSlC82fIgdgHV+O3xtPyTlz7lsus6/l3kRYgfmetiDRGOk9j/uMB59v5
	 9hiP51hcV/iUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9477BCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112239358.8248.15801544925465881938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d400cf58f958198857139449b0ebf8d7c580616cdd31e482e84b06eb265ae5
Date: Wed, 22 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761122393
