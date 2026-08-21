Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DBB3ACA7E
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787337634; cv=none; b=X4Wk+FJ+2aLDvWpjCD6FaCyYOsNM07jTUfxNy+slwKywQXZJ89+qkpFuQ2vswsSqZ5k4qKFH/9tN8Zgkuk2QMBcxNSV4ZtuEFt5Ani7Jp7v0Xq3RbtbGY9/EDxqUw/vpYqmfd867eclX2HAs2rg5aj0ezoADtDd865Obbxh7eQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787337634; c=relaxed/simple;
	bh=vtgqXN7QAirDAKQxqdix1/svF3S8ZJlldC6EZ03LzOQ=;
	h=To:Subject:From:Message-Id:Date; b=ZiEEq/VzYyD3gGk6URfpOnrHdBE7DUwKJKf1rGjA04TLDOnkNi0Bm83JcuY6YSH4KyRtfNZsKvh1+Rj4slxGOiRCAeby0tgeNa2y0eIsmaRMav2UvZd9e13VdNempk+zQJfyTFMxwnfFQINm15ddlFYfqSljZYH6VCfLPDldPt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdidxyB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdidxyB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6574C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787337633;
	bh=vtgqXN7QAirDAKQxqdix1/svF3S8ZJlldC6EZ03LzOQ=;
	h=To:Subject:From:Date:From;
	b=WdidxyB/2Mq0o4J9KQx/rQNy7VRPIGRkrUpOxUt1+tnNiza5B0vj+yAoy29CwIYeL
	 CtrLkOzYti5f1wpGHTwQOC8z7NffNtfJeneuGKT2evjGdMOi9WNzt6hy7p/V2XsJJg
	 jhHeW29H2/p2yV1iltlZdGYEx6HPwIhflNsuQnb1u/ev+Vh7nXYmmWGYc5bCwLhybY
	 a1BIKQjEFuI8GSEzu3ITc5UaC9bTZtQuVp5RzdRu3tNydqfe2qWnbQ/8OyT5tcMlVn
	 a+LXZlkKOyKwdzXXu0zT1QUisyt1bo8BxEfgL0Swy6J4NilNXI7yxqcHCqFMRv7akU
	 FicFRQ33+MxNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBB7C5DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733763370.13512.8435306762899361951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d87d2141f9378850099bcae8ab36a84c96d74f2ceba1a6f0dc13ecf967a0c7a
Date: Fri, 21 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787337633
