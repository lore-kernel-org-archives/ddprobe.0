Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637F1328B7F
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786555834; cv=none; b=HMJUJUUlyvwugsne2ky1p88OaTr7gL5ltAmwWb/LQsYCBqpyyD5zxCkqZ3XIvxOvqFOW9vbrvrFhtafILxmb5xxlvCF0TzdCPB6UVgcmEccZbtQEp1IgiGSAE0iqb7J2cjBy+V8k7zgPySiEOc6lPagjR8LG/fyX6iQ2+HimLGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786555834; c=relaxed/simple;
	bh=+mHuwfoufeKuDNQI8lOlJPlnEKSth3HhrZbRgVy5Nco=;
	h=To:Subject:From:Message-Id:Date; b=ZJv0fgDYYeaowzkZVntK2HvzrkrRBE86/3BPH3m0WO9yFRQttDnTHU2ViQZMXNgOGeoYWgiFkOuTE1KoRLMHfMuzUxYnskP2W6BODysU9eZsDYIL+BnUXTRiLc18b4Y+Y1DuqogW5GIQPQs5OBvOjvm/LAcsr33P94kutNdT3p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHfjIFbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHfjIFbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC868C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786555833;
	bh=+mHuwfoufeKuDNQI8lOlJPlnEKSth3HhrZbRgVy5Nco=;
	h=To:Subject:From:Date:From;
	b=oHfjIFbB49qCqd4/F8coA52BmDMwL4BmCpRZI6GMF6ic5vRILgEopqyWbJW269dWF
	 0CYF1nzxf+tVzmDgucJ5rRK/FbKeCLLSYzHDDnGQ8wd+SSPnpSq/0hrtTJHNGIXsbB
	 bGe+rhMA2ZVD/EnCNv08seqEndSK85s7c9myc3hb1RwDdfKt3yvy6wlJJu7JEP21Qk
	 YV6weGI/XZ+QnZ6HuH2hb+KTLkihaLoSYAsGXf2nevHfoSSQHK/tlPkKzNnlXN16OE
	 lOcDm9FqtCPZ5pcSQIrXMMGB0Pmz/h8Ejx1+A/guMDnfviJm+v98tNJcl2mnnxr1jB
	 ScaSnJhP/4FaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FE6C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655583372.15358.13557265808957006481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 488649fb9d805684eda5e4990c93a6d1b87a0025261975ecb897448ee1e42473
Date: Wed, 12 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786555833
