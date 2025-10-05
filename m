Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379B48821
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759648194; cv=none; b=D7buQKajVbF/v43K8csdTi0YVM+t6X9pLawBGA8/x8mMmTZLaSTfBa2LL+kYB2YNg5hulLjwDO06h9Y1xLBOpskXPfedjR4fUoFyIzDMO/ZQvlajS6upvO07Aerhv8Y3Mf0mjoL10sYC9ZP1/NFyB07QPPPQ8FcowxiBoYMnjqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759648194; c=relaxed/simple;
	bh=yeEJ6aU+a7j2JCkhDCEnV1FUhQ12fbYxeiXsgTS/bY0=;
	h=To:Subject:From:Message-Id:Date; b=nTVTVR+YGnaDwkDlWCuWdvssE/ML+3f4ncKc7zxAR2kynvl7Ds9UHTyO8P5+kMootHiIUmPO75D1KBDTT411l3Nx3EVhRspPIT+xXtmp+x9ThORI2qQnuf91n8jBBTUCEwhdmWt5Pm4+Dg/WukzRHwDKbD7OY4JmTi/P3ZvV4ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpOs4ql5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpOs4ql5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92C8C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759648193;
	bh=yeEJ6aU+a7j2JCkhDCEnV1FUhQ12fbYxeiXsgTS/bY0=;
	h=To:Subject:From:Date:From;
	b=BpOs4ql5hcsjm7ukMKWovix4TXq0B0D8PnoNOgyUYViK5bukVpxEPU30s4feYuZo7
	 oZoJXommXUq+lbXtksBJSKQzu2n8e4BNTPBE26ZlqOba07Ei2ZIcxb5WVqxEa+qzQ2
	 VSEG4aNMscyaWf7cLAvxfheNxoI0AnzeC+EgZMUbaVH5vB9cn4kfkEssxk4MohB4EX
	 0kZoNe2W1CsoSgyLzZHtJU3kz4wO47zqdiynqt/BmvyvshDzj89lBBap6sOFSpmtsd
	 e3IWHaO41uA2y2nvqINdEzsBP2LbQuVTe7WeZkPMB0f57OEQcN1N1xE84ESlgKe0Hm
	 dlLdCClsMfm9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97550CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964819358.10094.1229513080857810556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281c7c95af1293439bef791e4ff4f1eb21fa8d1ee98a289ebaa85bf4829aa57b
Date: Sun, 05 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759648193
