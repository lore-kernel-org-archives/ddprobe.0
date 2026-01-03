Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4271386C9
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767450234; cv=none; b=eSAc6X7mhvmqY7JpUA90icehu6Pq++i+2ImJkdsH2pUHX8bGiE+9e6dH80XdvDr4Q2wfYtAGqoG+nDcT4T97LGjZv6uHa6rWEmypsw6RDLpzk3KGbeiuF6w+Eym603sXjuAgCbPmW9PY24urCkpyL8ESOCko+syzvBZ5fBWcNyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767450234; c=relaxed/simple;
	bh=G5jlsm57o2lBFqr3SK1rZBCckxSf7sYXLTsVKdeH45o=;
	h=To:Subject:From:Message-Id:Date; b=TqpLPII/vtydjZL5lHMBPplqYCgc16aIy2dkXxAZwpOhr3rug2uamj+GZsWEhqko2rz2ULz3DX+9kwkoFVvN7obYdhx9SO4Gtkkaj15pWn8G2U5Orni4/DLtuZ1UrqbFWw23xYrwXUYlwCNIwx/dj4ryQCzf79KrbliLY4sdSIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4kYnGjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4kYnGjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F343C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767450233;
	bh=G5jlsm57o2lBFqr3SK1rZBCckxSf7sYXLTsVKdeH45o=;
	h=To:Subject:From:Date:From;
	b=C4kYnGjj/vVMQy373uUUFS2ywNjVTH9WlDZPR5K6Qa944C7MVccHnShhEFY3LUig2
	 dYY3CDYyJggotAp55JwJdYwnLE2tBjOCVwY6lr2ex0Y6Hfie9oiqAyBSsF1jijmzY5
	 o+Y55bn+I4HPt9SyWCOi+Jc0mLHzjbWf2qFDRF94Jpv3UEJdGchX4zCd5lipuwFaJZ
	 N2Z4qif0FxodQJtmVVjIDLsAYipTj6Ssgs7qozXYHG2fMzWA+gnO692ZR2xJ3LYq+i
	 mUXeG61Qtqb9E90C2WyYaC/zGU0FcGn+HuN2OlMrFCccCg1gnm6ICvDgcumqeJfyJN
	 Zw2biF8mBNefA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8E8FC6180
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745023357.6006.6561109057444748006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f43b17c958ba3b13a8de33f0430774eb367285bc6c495bc7478f9c16414ebd
Date: Sat, 03 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767450233
