Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4924A17A314
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787437234; cv=none; b=XGVGXBptmOx62HfD+hjRpkdBqpFGlwkntL9s2fvtATfQ21Dku+kw6yMe8cAbZ0C9IL2mPZv3d/oxI8M03SKh9zuecfrJh5oWIi+YSioU/2hoP8gwAt2g6hr/r9lWRHRCy4sq2WD31efSqu8rPgtCZoC/WdqnaveZkyinRYQfbqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787437234; c=relaxed/simple;
	bh=akjIr/b26lbiwcm5anX6HQ1RSTnvta3s3o0pIOPTfCY=;
	h=To:Subject:From:Message-Id:Date; b=XdAdLRtR001PRBj5cmylX1UKzCMPhO1OgM+ZO+XibU1fSSTCY9o64cNLblp3EbKrjjOExn9MRPhgPXXmzB2BE5TcMWeKJx0rMWyVDn7LbSVnNJVje89CraTpBVUv9McbkqMtYav7j41dTriexRF96BaDWbBwEN01/4wsCBXxf/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCviZV04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCviZV04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C6AC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787437233;
	bh=akjIr/b26lbiwcm5anX6HQ1RSTnvta3s3o0pIOPTfCY=;
	h=To:Subject:From:Date:From;
	b=vCviZV04jzNyFs3eD1w6klqzg1KvvlqjTd81fASj1rtQhl+NhV7FlGp3srQdoLb+l
	 TMIf9ceQwfgaBc2y/ky1THAMWFY1f6f3iWLmMH/WlGrQbx4CaPVA6NyH8mE6/jooUP
	 dUM62b4E9LSRpoejws5H7gDPu9SA5SKmEluhUV9ZKtQ7vjgAPdTh/hLWJJP/TqW36C
	 WBOg4JChBUrpVWG+63emVgjfARKemACC6D4eJeVGYoxs9lUldLQbmyUf67Efo0G/de
	 BOzk+yZmaL2uhQ3a0chfZeIoXdNIljPY8nwCMhRgSxR9ecaZOm3eDDk6nzCsovEYTX
	 pPcg8MxIIV9nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB22EC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743723369.28704.8892256563899763459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792a0f6da2b93b70ea12be7d3d02bdcd5556bbfb66c662dcaf2b8921e527e499
Date: Sat, 22 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787437233
