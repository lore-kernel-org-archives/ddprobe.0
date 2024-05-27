Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B57513DDC5
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716799463; cv=none; b=Ff2GkoKADQSCOAJRkzzkKA80s3CQ2pQZSqvEHRMlGwi/wnYHoRhIbaq3UHiVVLYhsnQuSGUphbbjPT4Lk7cuPhvYkOHJE34F8dk1xTxlS7vsoq20y5E4LVeoTUgx4hXxe/FyU/4AHJdeK/NsO+0JsSb15xydW0z8GluqzAiorjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716799463; c=relaxed/simple;
	bh=uIGaIt4gxSK83ShNctiqDsHMel0EF+GPvLH/53Arx7g=;
	h=To:Subject:From:Message-Id:Date; b=HFadpT2Uium6AVTel/2IaRyNNXEiwI5NTxpxIaJHqXljYGhUl1UeBPDBptlkgHURkNsbZYCTXaoh7UsdrNhhxOSgw9l00mwU4CV8GJZ4CZopip4i33vQ0jJpzbn0ACkBJRNsUFfq1oMjhfimnvzvC7+aObCZiU/ZExYjg7jVJUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JknLMVIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JknLMVIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF465C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716799463;
	bh=uIGaIt4gxSK83ShNctiqDsHMel0EF+GPvLH/53Arx7g=;
	h=To:Subject:From:Date:From;
	b=JknLMVIndOWFtc7w/ZvIlDLeHksmqUchjv5RGSRKhlJ25HOyKVhvDsBcaVlzZ8hWI
	 NRadxIsFyHz+hQ3TWLrbsbZVDz7mTsMlj28N/W2t3Sp3D2YJNcOf1hCx/aP1dhXBZ2
	 2kR+hlkq/5mOqP+tvNOe9mCp66nudWY97A1dzkMt2F6eSTUwYADE8bNh5TRSawoRsr
	 cJZS/nHPWE7no4cz/FXLy8bLdJIksBH0zxM8jqqjEWkj6QWXYNDwPZ3PSLFlM5AcpR
	 pJlmSb3nTU+31u5ynnUwnPjGZVCUkA9DtSJaaPUDuvN8SzsJm2pUD4T70uATXhp9Bl
	 Gpi1yzfBdTykA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC234C25B7D
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679946282.5131.8588729293013795037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe067826453c2ec85001d6d1a20f9f92b9049b02db2384dfc697a7c8fdfe814
Date: Mon, 27 May 2024 08:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716799462
