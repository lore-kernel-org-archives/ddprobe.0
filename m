Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391658C1E
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735361754; cv=none; b=kGVbzJn2f6C3zYM2OXYjs916lwOYMB9v3lwNcG1uSRP0sX39JVCZooN9ZDwJDTEllXVEZmL7KP9eTi9i7YTDt9yXfFDFPL4Bxyo4CtFKUZ2hTNekfsZWj9V7EZkjuwezVnBctAor0Af+rhSQ/ymTUMAc/yQ/AXSaqpTpJtfUeMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735361754; c=relaxed/simple;
	bh=ZWvtSWE5i6AQlnjCyfhSbM9tQIqbuQ15ygw7NyN8W5o=;
	h=To:Subject:From:Message-Id:Date; b=HzsRWRbQ0R+1E1IDfizUj1o5/m1uyPad7qgbbgtXru8YSDtr5UGqZGPHhu4JRkubgk7G8TsRP1hmSxn52jEBIEDiT7lbodpNxdVKuLMue5wUGRdMKkc+955awcCYoMmS7ErLahpiEWzGFZn7+dSmFMN2dM0caR6zcSA5pRLnHrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grFLq5wA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grFLq5wA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7500C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735361753;
	bh=ZWvtSWE5i6AQlnjCyfhSbM9tQIqbuQ15ygw7NyN8W5o=;
	h=To:Subject:From:Date:From;
	b=grFLq5wAVLse5WojpTthOR72JCu7cUA80DglOZll6I0JowJys9/wphevo5RL3ZVl/
	 iavKIod+QwgZyU4cyxdKR62PPCYHQcA673obMAz0OBVHpZryoF7R/SZgy5M/NC7iwU
	 D9ISi7iCd88SEtyj/CGvYp6VfRHnPjanjmnKGxB3aBmP6j7rT+xc/1dEV6acg2Y1ZE
	 sl2rxA8Isb35Q7vgtuiGghFn2t+QD1GepK6PQ360YAjTycc9ReJCczszZCgKGLPM+7
	 3O5scog38EbMdF9s1PtnrZVFvkr4LRHMtXbTFHGmkePkzxAsTOKDD9XezfI8tRJcEs
	 gWrJHRWnfEfUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26C6E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173536175362.25963.11889450849647141956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf59e27b0ab001b3bbade5a9ab428321e68fddff532931493deeae2645923ee
Date: Sat, 28 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735361753
