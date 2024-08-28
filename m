Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6741B969
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724810754; cv=none; b=qOoHKSsD2JeqvgWFHCDW6wz7wi0SGwaH7VJX/M+7oh9m5EsHGfCVtmRrhDH8WOn/LCRDEgwCXSv50s+Z3V3OisVs0vvZ7UMw13vvkGE1uLYzXFiox5YnEG27pFNYSdOvu3pJfOl1v0rtVQVn9hhka3zvvEbyc9npngD4BaPGqH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724810754; c=relaxed/simple;
	bh=V1UgD+tD3Ehz1ZsR01VYHBb+kZxDgohFUxkfvrUi5nc=;
	h=To:Subject:From:Message-Id:Date; b=VPjzzThnlQ5oXLAHqehOmP3OtkdHRp2sM8qi3tmyVFI0/d5cXLgMB0hDC5UG5xYqxQWyF9s+NTs69320D2iD6w+vf/y9EpANuU1rb1UyLLGRsCf3fjmjKs2nETA5FnZLnCYvWK2xJI52VFt3dtAovCqYueQXqmLC1LN9ftCoW8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnQ8ThB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnQ8ThB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56CCC4FF5E
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724810753;
	bh=V1UgD+tD3Ehz1ZsR01VYHBb+kZxDgohFUxkfvrUi5nc=;
	h=To:Subject:From:Date:From;
	b=MnQ8ThB+S3WgCg11r3SpmQ0V/1GInNp9SzGFWdEOjgpgMv08NWq1v8ElSfVeKI5l+
	 SdI/jVCqGPlsDhcpthoagBOdRkGXZsEt6+oMze+i4hmH1nrgyTv3Mc7o5rojz/TXi+
	 uNw3dhQoaBXXVzqGIMoxgj6zLweml4VA/MSwmNyDvbT/vuftrUr+2EN0O6TrZ7i/VQ
	 4xWGKW2ueT/4sEP/xwQdnJNhkPoUtZn46wNlvkgFPg00pjXe/3sJwURAZYRT5Cq3yn
	 faNSwg2Ecp779nzVXHOhiYd9DUp0kjfWXQe4CYRyeeZpCRgW3VK8g00wJ+tQFOl+nI
	 vK4GRiuz7ZBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F2FC5474A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172481075359.12261.3156399744749099371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db14fb4cffd4d6ce31b5adb337af57bf3e1a8a63faf9bfa09b85e56ec6208f7e
Date: Wed, 28 Aug 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724810753
