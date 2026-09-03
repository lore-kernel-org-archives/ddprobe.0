Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627E24A2076
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788439234; cv=none; b=im65u8/L4tH6Mnofth7ljmT1AV3jnR45B6gN2ayGJHeMi8AWHYziBlLxEA9y5EgJ0QILkBUP7do7KWwMaP/xk5sQ0rBrShJKU3u0pTB0iz+qWd21jKhif0GCWAR4e3Irctfy4b8fRa/MWPKaC1BVHs7hty832s5lXim6jAA15lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788439234; c=relaxed/simple;
	bh=1Z6HpEJZmzE924xbAxay6klLnpsO/4FCl0aBx1HzUag=;
	h=To:Subject:From:Message-Id:Date; b=paFH6XJVXc4BryDidyjlAOr8ih08uYEShtxvHDraHLDYX25122tW8myrZV5CqrTcAOkyIPMmVRZLTzERFKL2RMZzj/+D/B/hYc8sej85RpGrAeS2K10Rrmdc1aU6IHLfvFyC/OdBdmbIFUGx0dP4lwZGbAap7RwDb2VBJWIgGAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPOMetnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPOMetnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D117EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788439233;
	bh=1Z6HpEJZmzE924xbAxay6klLnpsO/4FCl0aBx1HzUag=;
	h=To:Subject:From:Date:From;
	b=BPOMetnzWGjHYYK0d7zf6oIHWWvOsJ97iT4gk0eGMT8K6Wk/6xNc56YmalfjFgSBW
	 UEpSDq2zT8aqC1rGrfSgGPMxq+VOK1hnqxFmR6bvEKfbCtmW3f6yl72hPoiwtI758V
	 jVTChY+isRi/sqNvvqNsYqqhR8ihTThQlqfI2Aoq2CNDakoG75GwRvwhWsQgxq8gZB
	 bch9+MIzG6Hw1qNF0ILRk/0slL2poXsdZIUdR/f+Y/S/CpB9wagHlMr1yPHCAIGJYD
	 zvubAwHzzAJ8YeGnlAcg3uoHAo/H0b4oAxPV/T3ENvy+2wTRFQ8sg6FnNqELN6eFN8
	 3aThgydY4tQ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2D6C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843923369.24828.264537595139755177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c514f4a59d635907a8418739767beba22c938a5012029f798d7076e2591d3a
Date: Thu, 03 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788439233
