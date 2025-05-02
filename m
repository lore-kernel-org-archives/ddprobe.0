Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C30D267713
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746205795; cv=none; b=ppn8RAZZF0Gn/DSrzwnTCc6MHoz/d3QUgTmCvfQAjlRTvPCRp8hcHSs4IfzCKD/+6m9PAEwd2Dnh+ShFVQaVPukPg1a90r76AgWNeXwHZhuRo5dv3gXtryLBq/7A5D3Y+o90Csu7/oGyouH0GsOOb6RZ0da4cpjW/nfpCDj3/Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746205795; c=relaxed/simple;
	bh=CYvfyY7LYx9hdq1z+G3K+ZvntXFvpQf3aH2zW+USXj0=;
	h=To:Subject:From:Message-Id:Date; b=dEgFxGalyRmKSwe1KYWotgRdFWXJRcfZW9Gl4hkeg37N82kMw0gwRuBh01IE9OKC34IxdZQtiCCfZk2YyT2dZYGI/lLRbtY4gwnVpm9FUgcaLjukjhocgO0av+QVtY99ss9AoAmcYcLzpNbayPtLuPiCQ6UP0i1Ojh6AwCrM+PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnKwKrfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnKwKrfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1B2C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746205793;
	bh=CYvfyY7LYx9hdq1z+G3K+ZvntXFvpQf3aH2zW+USXj0=;
	h=To:Subject:From:Date:From;
	b=dnKwKrfwueYM03Wt1EdHFWGKxjcJ1B2RKW6xUH0sPz2o6USnRmkYoLnEM2q+BOA6V
	 RBqLD0CHEayN83cnXNnOKZuLama7bwURwzxehnbfjrlT9WkfAhT0/yp0D/p0BLwymT
	 zoOIzfIqVKZvj6VgXnSgSoVNduMU9T4yVuA0fDFWk3QiILgwwPfRmu/JSpfhVFSgNY
	 5yzYWYMwy5qqUvIHhptcynbOM1YI8h42nrUlEqRPqA5pa1oi7CDeJkr8vUqe7pt3Os
	 ih7u3iLK7l1BOFAfqR+GgRg3X4nH5Nm7fSzzwWbSPge30uWJjanQZ4HEntDviC6r7h
	 mcH43BLn48dsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F5C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620579357.23259.9386249318787307171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f042f9273f5f205bb2f1e21241b27864efc8abd45bf24ef7a76d1fe40eb88ac
Date: Fri, 02 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746205793
