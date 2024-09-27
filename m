Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F17EEEA6
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727456754; cv=none; b=HIKZvFcHTpZui0H0lnTLDCBawyFXmenrBGGaqaECJoWLuzrMq18k/MtmodQB0xqX2LLCteOQUcuefKVx/N6f8uVGY5fiOMUcgH2T7Bq94dp929cK7K6BlN/HXtudtalLsxVNZLnnpHjtAfquhlk53JV7jP02y4MRud0OqoInyZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727456754; c=relaxed/simple;
	bh=rvl4YhVheFjI/DIbOcia2crb5VfobzY3mt9wlTGoQZ8=;
	h=To:Subject:From:Message-Id:Date; b=oZ9Hrq1SaiCs4lU/pbnEhEQoaEY3WaOU9kX3pndj8d8/pwZ6xjXpA6FTffej17OcGdCyezbbiE33Rb7Hd9zA1W/OXIKJgmmIftBXHU5mbVUrCwGb7b35dIBhDqwmLFCcn8NKimoCgDrR5Aw7eb31rORgYhWnvXKGggc8bKoAwTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWWBxCal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWWBxCal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24D6C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727456753;
	bh=rvl4YhVheFjI/DIbOcia2crb5VfobzY3mt9wlTGoQZ8=;
	h=To:Subject:From:Date:From;
	b=EWWBxCalhGCVGmUZ1S3tT2Tbwv9cYSKMVoOQSV3EZ2vcqA1hSKakfqcgIkdVU8oll
	 WupNOAYIAgh/3sOSKDxqvoaMfdyw0a9BkM8AGzgzHI/0jgIErRai02PXFWJfz5ACjo
	 96L54HuOfJC1aEBwZdgo8i8sqdlx3ZQItCkJFCpzVkLCfJlMWjD9+5i+IFGDJOZWiM
	 sWRKSPp6zj0KEjduDpvdqm1yLwskVUGZL/35eslUVUtv4L1PMp0KSpLbxp/ZAOIqTp
	 5WqHk1oTpl/5TrLcbgCuZH6ApzWQbq7P7gxgb+m7T3cXxtAGC7L9Okk4/yJGIaxUFv
	 8dm8UzJt8BR/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F343CDD1CD
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745675361.28741.13709116830194922953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26a60814f1f83439b74ac66f53c980a658c48a0463d81b1b994a3a6e7c280cb
Date: Fri, 27 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727456753
