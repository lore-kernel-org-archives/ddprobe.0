Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B13145348
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767294834; cv=none; b=IPX7iUJAyZEIuSmjsB4eGThoeHQB42Xt8lIkG+/93tsLHtjoqSJN7R1Ora537skIB9IlF/LSyy6Auy6aiVbkccam6GufvVV1lq64mFsAtbdk9XcTT6KL3rqWvq5aaUTIC8a7S4sMnoFjopya4olyeMeHc0xaDyBzwRgdw8uod4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767294834; c=relaxed/simple;
	bh=wzDSvvJq4B+dtYNXkcOZIll/jRn4LCnErEKoCaoNzWE=;
	h=To:Subject:From:Message-Id:Date; b=owv3wNxxoLNo0hoKGCV4Bc/rjIp4gxNf5kg1rKc5tzL4iuvzqmI/pVcZkgUMlsCdvxkjCz595OSjrEI6ysX1QcfjLCO/HKdm67pxjPAVuMmY6zNYXzfwRbKX90SbH6j6BWTiXxiYn/vd6vte28+C5KEcpkNFoXGetBOQ1FVdLRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DurmJcSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DurmJcSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FA2C116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767294833;
	bh=wzDSvvJq4B+dtYNXkcOZIll/jRn4LCnErEKoCaoNzWE=;
	h=To:Subject:From:Date:From;
	b=DurmJcSQ4dvFJET6N+KLGJXcyhOvkJG4J0DV3C3EYVYrCTQchvo48yRC4UZ2a7rXd
	 8A4724Lqbz9430fF8wE8N/1jcOP0s9OxDkQovisigYQNo7Yn3aPkm5VfURgEsYhMOw
	 PZzqhC5SR52isCNK/m/hsjInwM7IYMouZBX/RHNQB/1gFP9DFeh7lDPOJcvBcmPBN5
	 YfaWO/tNfxFA3ZtNM7Eb8UG0mwwDXzYTyEQmDLMgdoxi3EleOdTAb1ZLi1mYoHmCo1
	 Am60dYE7kWJ8+Es67CGTB9m6CwZSMsC9oWttTRfmdwx5wunNU5hW57X7femfHq75n0
	 migorD5wUW7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96832EEE250
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729483358.22594.18094532923165332441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d295b1bd68c57ebaa614ff4d4ec172336634d32f38d2f82ddb23761cd522bc
Date: Thu, 01 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767294833
