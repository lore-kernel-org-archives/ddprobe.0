Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4915A2E3395
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 05:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741844334; cv=none; b=jNaKtzdVAAlAtc8jhSdrSoy1BhVqCHnbGAYIjfS8lXZs2jjoSiqPvOuSNikw0VFzAWtDf9tEN76J14XZBZVzcAbp7J69/Hl+ni+gY8Ap4CByudRuvwldnt2gn1pfiFDJKBm51q1EFA/WUyGuc4pJJPH6SmIFHn9Cdm9Tf0yQV2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741844334; c=relaxed/simple;
	bh=GEbTU4TD47kdWTPQmXP1FRyDobFG5hqMj20wUXq+UCQ=;
	h=To:Subject:From:Message-Id:Date; b=upsiRddMA3Td8mbcJUpUquVhY+gx4IiJGceELfteauaHE+BNfX/BrXp86O2CPjVpw3CXr1R8T6KuS4CD+TXu3EifrXj97/wq0aCuY5qypC7DVlmbxlAgZZs5HN/nvq2j0gBvMcUr8UTlA349TfFmNDkjViWdqeHRZWAU6vaooi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+OrtVcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+OrtVcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C67C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 05:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741844333;
	bh=GEbTU4TD47kdWTPQmXP1FRyDobFG5hqMj20wUXq+UCQ=;
	h=To:Subject:From:Date:From;
	b=r+OrtVcBy5vtPnjoxIjIGNvai42zImDgB7VP4aN352w9iWypl+deLv6SFnrV/1Unu
	 KvHEdMl5AJFTrL2ly+Niwmpyl0luOJEyQM0+pFxY/5htGH/TRp0SL8rjAn/xlfD9PO
	 P1+S6MipE0dCg2vn7rMJUVzyfoyy8VLBCAAYXl5pu0HMBrCQo1AWi3xwef60HY1uIE
	 yAbPyPtgG4iiM2nUWO6ltrUEdJnd5n0upj56Ff2wuLn4ascK3lMbA+TnKeO7gMd15x
	 OGFM7Y+7VnJLrA87oyYfrtvRh1WQajzJBZWlKNagTFImgBpHkuSfvPthp/vJ2lyDnw
	 8ylQT2BKmOynw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B60AC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 05:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174184433359.28090.1998807097122937156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fff0da15724d28fc50293b015449907057de79df50f1d9b74df29aeac55af2
Date: Thu, 13 Mar 2025 05:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741844333
