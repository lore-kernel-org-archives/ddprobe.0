Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E473E95A4
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789306834; cv=none; b=FgIz78v6uxJCIzHssE6Zae7fiApiD8iA979oIdGCMcILzD+VRey4SPwNlF/Q9Yf72g2tfL6y/yiAOwu++O7YY/oycsGU+5ap/mAuxVSSq/RVW3gCCqKhz/d6mx6IleskodeqiTi88lekiamjfqPij9Zc5j7wKGBXgLFwkdSXr1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789306834; c=relaxed/simple;
	bh=nm0tAr4VQX195Ey6Z93vCScNh9rfMOVQZjhEbV53Zho=;
	h=To:Subject:From:Message-Id:Date; b=t8XiPg5V9MGTr8Oddk62NJuKLFSuXRNFmBjAhDQnC+Xk8YqIG+FJg08RtbiAlBHY0ArVT77pmYNm22Jiu21hM12VRLxpzvKPrkZl84SS7IYOR3YJL4PrRCJc8Q77EDkAuLvoBWcAXHIXnCL05KawSOJInccwh5oMlMdny+wLWUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJkVF19W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJkVF19W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFDFC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789306833;
	bh=nm0tAr4VQX195Ey6Z93vCScNh9rfMOVQZjhEbV53Zho=;
	h=To:Subject:From:Date:From;
	b=iJkVF19WW7HoeYUre737IfSSgeA84udPaC2HXgXHcOEqFNomJJmT/sWr72qhW6zGs
	 1fc6EXXfqKbBB3yc2041oqXerRZk6QNEuRwMgVVK725r0H9yTv7Q6obTQzMbc+AL2l
	 geNaHsRFDQVoyzFlsPBryPWg1t10fySRN722yJOBJFYD1uABW6WTs8oocoVYYWU9UZ
	 td9rjVVXpAhFSFrESELTObMxLr7uu5y/6Sp+YEle9yUwqgucyCp0OXAxifMiCaP+eR
	 bEsZ20Zj8sHPwJOleT0gVULxOOA9NXU1H6D5TStVxg4bAxIirkAZL1HKFmYddUIpmI
	 QLIFEvHvKo6KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A961DC88E65
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930683368.24162.16764057591865509009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d6e6f5764466fe5cbf3316bca6f32b1c58dbce9b1f4ed4769cf9b8c03a0c31
Date: Sun, 13 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789306833
