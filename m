Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C18155305
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 19:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713812423; cv=none; b=Ydu2mK7fqURIn4E0tz2fmLwDbH79P0QqNCXj957PUA08YmrjUrHF3JcSsAjeXBKCWBzEdxXT9LjAL5p0n3sZl5WOWnv9emvuKM9iqFB0d26qSudElc4anmKSfz4xB+o2uuBYq3HEV4O3Q5wd/U7z9NXWILnFqZix1IqAPoz+OMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713812423; c=relaxed/simple;
	bh=P3NnMc8wd0N3G17eUTBjCF3hlLesqGiL+fdRQKbdThU=;
	h=To:Subject:From:Message-Id:Date; b=DUYmPczs5fRsLfL0NeHzfCvgsLKXToFEF0QB9XI+D521jzj60nHth1Kwu/jhMTiYZzh9EHBmGg9hNzU0+6dKU1JPaMfM62hGXdhREwvsUop9Y9lKRNkvtujP/1KDigCT4k12PUsYqq29Ce4ro2VFx5LFb0j410rqhoqsJG6aBsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8fmCnTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8fmCnTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D420EC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 19:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713812422;
	bh=P3NnMc8wd0N3G17eUTBjCF3hlLesqGiL+fdRQKbdThU=;
	h=To:Subject:From:Date:From;
	b=C8fmCnTuwRYdtxDw9vu8i1SwQTs2gdQatnoh1qhzoChU1OzKQKNd+ak2qTq/aJpna
	 +eYZDQ5JB9q+NaPIMzuUtEpLV/G+FrsXFOUiFrstitGXXtOGHYdMi88Q7HuLhTJL+w
	 8DMmYKgrzw/ILANEojPezIXvUNjsPb1BvmCx9yBjTJB63Tydo55bfqfUf2UdBohEa+
	 YzCbi7nU4MlDkf4xgjcZNe24xhjXst16W5wf5SnBI8hycK+aLMdvn049CRRqiYhZpr
	 c/rfDzv60wrUnivckFqgLxVLQm66c87Pbrm2MvvaaAP7/NLGHFaJwFvrXxkiICbGzz
	 r9SKLka1+wxuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2334C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 19:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171381242278.24416.17144404259062575439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59edb0efe23737d88f30543a9654044ff7cca58399bd00a057032d9171a3c80
Date: Mon, 22 Apr 2024 19:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713812422
