Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4A3335BA
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732377354; cv=none; b=HLRmfYGSYvZrs0Beeyqii7DQ4x8y6Nnj6inXfqaAtoxL/G9imA7jDC06sRyIxfSf1irj1vrmWOBweNv1vzvn5EeNT/3V0g8pMc5OHfiCecKK6NSEMXCM432ID/VfcOdIi9q5VlASox8flCsrRtpcN1uDmw5Ao0dit8rTOGENsbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732377354; c=relaxed/simple;
	bh=QogjtratqK39kgewM9NnFORh8VmT2dBwemmnOvuAlJE=;
	h=To:Subject:From:Message-Id:Date; b=iO/j1h4ZgrUJQh23Pim0CagU58/UMEL35kOyekzeO/xIGovRGeySmFeNDwHnUD4219ShJKq5kg/jwi7/KsqWTl1VPqm7Ts344br0glYqKUB0fxAnVHx6FKkbUc5urHwXV74qQb3dAOwINs0mlGGJTZSqeOkuDZWHvnVUE5juKcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIK8EnFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIK8EnFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF23CC4CECF
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732377353;
	bh=QogjtratqK39kgewM9NnFORh8VmT2dBwemmnOvuAlJE=;
	h=To:Subject:From:Date:From;
	b=EIK8EnFpJyL0Qsy5zGn+lZyXztz8waTQet4ZvPKY3M8facDGDbMAYBUjQarZLmu6l
	 0jLHu847phHQiH18UdA5k0HRb6f/ha5ayFXgKB2qkU65G6eQW7etNBqzYacXNKX2qF
	 c8x1nSnwu60z3lTYUR8iK5PY9VXQ0ONemTh72S8dqbWFpGkagzP1xt/Vrs9BNjH+5x
	 qJQRcxy7fUBYfewfv7/Q7CgmtUaDPNcih8OcNCePJg7jCPTbIwgmu/P/MOMK14IiNP
	 KVOGXBsoNKsVlyQDu76C0dbLWHz5zO8Dffc0jwvoxbH89PBz4wiRM/jn6jZyTv9pxQ
	 m2nx/fUHaUMOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D9EE6ADDD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173237735358.6984.14899002478082994373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00b6255e5b94ae6d93457afb3646443c3647dcf3e04638670db8a5594e65e3c
Date: Sat, 23 Nov 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732377353
