Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DFF2475F7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786983634; cv=none; b=rbvYJo+CSXOT9t1F7Y3GIfCnaATUeoAF21Mc7MgS+xG6PDD3PBSHEutUAVRKvP1jpcmfx5nr85IPBKoYaY5fyXsBO8JjSzZoEbz7DySdcVF7YiHeGVfykNCUg1xUuHubICnXZ0rfEztELYtqLeEr3ggDHML56FGtqi1Ef/wzuVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786983634; c=relaxed/simple;
	bh=BxTOUpsARaBl/7KgPBvGNG2AdN8XZbSqtOMu2m1nHQA=;
	h=To:Subject:From:Message-Id:Date; b=YpZxuIxs9yQ+BkXUhRZ9NFbkdB6jjmPVaZinGL+k2rYhJ5qzfxWbtsc+9S36OJt7/LJlrF900uyA5upeDnHVaJ+Jqra/hKVFbqBr/wv22vsGgT9dyRUO3C6p13AbjcwTDas+9lrGPBurGXrkmdUtLEyzSbhkfNlD5TEWr5AXQQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSm3snKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSm3snKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC6FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786983633;
	bh=BxTOUpsARaBl/7KgPBvGNG2AdN8XZbSqtOMu2m1nHQA=;
	h=To:Subject:From:Date:From;
	b=rSm3snKlSutM42TgLixgz2nJeJ2WzUw9QMLlrcFEjuPlqqagGN5UuEGnCHQbWsFNQ
	 6Cxu+PWpqytHA3FY48lYYCujI1GO4n0WwCed6cowBn5yLMzVnhQ36vkI2TRVh1aj47
	 dmv5oW+barYLIsufPD6VnMEFhRq/qQtTDkDmT5jGTLEDOKq9W4wLmbBvJaGAclVSct
	 H+jsP/moLQt4b+p+N/kSv7BSMo7q5QRcCw0Ly1irCzTBPSkCj3otFhvHV/cJEB8huY
	 0M+2A9JiZjonRbh+aCNOfJhlI35lXPgm1KA4UnJBn1pTr9sh7Gnq0cEsHm1qrgPRoH
	 NXbDL9eH87GDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6EFC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698363369.3242.17586475292058805549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a7543f948ec20828e4305d2da53acfe3b6d6b5935e67f90f082ef99cad1804
Date: Mon, 17 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786983633
