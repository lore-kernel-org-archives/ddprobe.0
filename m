Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5C2192D66
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744342794; cv=none; b=ZhvQsFpyH1CvguqMM9QFGQbCDWDGRor6zjDdsAdKwGDNR9BDPlYMtYMgXWfkNDuDsIhnVAQSDS7CpX/Y5NnJsSVRJTNkpg0xgzGYSMpofKUtULXdQW/+FP8ole9aEzysHwbwIvAlzZIZjL6cgyLdX/On8RwH+1laCalVUQp8a5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744342794; c=relaxed/simple;
	bh=UZPbM2RN3Wc7doNwfSy1vVSUYfmR2QjIcuB9uO1aJC0=;
	h=To:Subject:From:Message-Id:Date; b=kmGFiqXUQhxHTnWmWGPB6YXfxlNppJAvG8I48B7rQWJ/cvWalzY9vKkpy66dzMOovR7kQJE0tJqqbbtpIOtMptZCJatXjbgGse6tsJv66cMuKJjYl8lQHsCVa3f0ckizmGcjZ09lZYO71dK0mPk2SjFmRHX4MAvBYzQwMTUAJrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVyfAo1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVyfAo1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CBFC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744342793;
	bh=UZPbM2RN3Wc7doNwfSy1vVSUYfmR2QjIcuB9uO1aJC0=;
	h=To:Subject:From:Date:From;
	b=IVyfAo1YHnZpD6jqf2zOMyEwSXQS7PLn2brCJfNaRnldU5eewVtT52Bgm72Q47fDM
	 nw71Q//5tDeTtl3N82pgLwUG/uUXiGRgbVG2CzDNLh8m34JrikdigEJ9eJNVHiieju
	 pUPX4RggmUrlxhtlUZ31YXo3FHhWCMY7fjhGLIrrvsP7tTnlNeYBWZJhxN0PHwggY8
	 ztqptzItwkkHU928IY6nnbeae3BxK0QO7N3NU73J5CakWpKgtTIWG/cO5RddsphE/+
	 LOiIyM+s83e7icOjBotiSdH2mP7wCr/daex3WahoPYhITNTLgaeAFq9j2fnhfBHaQ+
	 t+nVwRkdNAURQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D550C3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434279359.9701.11141615247485418076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e27c37356099d51aa5fbff8efee5e08b23cc8a185e03be9d087d3f9ee5df1b
Date: Fri, 11 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744342793
