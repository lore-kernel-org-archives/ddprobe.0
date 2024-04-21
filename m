Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CB71DFDE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 22:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713738623; cv=none; b=iEcRBVL9cHOunriOr5fEZhKx3HKKzdfXBEyfV8gsCrzusp71Rcx1WfgGlggX/J+LuKCvDkZ47Bn0L63fColc/yGfeK/6Ef7h6IZiajjP+rFCN516z6MAGjzFYfdtK8mI75iwWkxqwzHKJsKclwOkcNZQk4fZV5FZR/Iz7Kcttu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713738623; c=relaxed/simple;
	bh=BvmIbYKeRZVvYFDo8u5ntoOCQBV5WYIiLd7KS1sJdJA=;
	h=To:Subject:From:Message-Id:Date; b=hqzthYjlyx3Unb/+D2GKXvi+RfEMwu/A/eLhyvDC067dPBiQ69AWrmjoTl+GboYpxiV/PxsSboCT8NLEF1hB4ekwVEi5SCzhv9L3WfE3Sj+wOTb9+YVhJ7GEu8J/Vy/s+l1iQKjqfR92eoqWyMb1mzR3CHNRngeCDhs2h3Ef70A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpWEberf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpWEberf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D630BC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 22:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713738622;
	bh=BvmIbYKeRZVvYFDo8u5ntoOCQBV5WYIiLd7KS1sJdJA=;
	h=To:Subject:From:Date:From;
	b=rpWEberfp9lKYj1fCnkFIpdv2j4ofJowFbKds4TTLtsFT+nL8pDkWexkHNkA0Up/V
	 kRtuEJPHUNjygu0Jyj4mwF6o3eKy/x0cX2PZ8lrfsmA67/5pEVN53GEM0VlqkvQASL
	 CsZMHHotxx1pxNkwtffwLwpYEanT/gVil5LkT3ksHwJfBJuk9x6lS9IGcccbK8LeCa
	 Qp2cIcSNAzqSQWmsI1TAgxm255IS3279C3rmwPOOEhMo30n98oYme34mQihUX3rKaj
	 +mJEP5wH0BxjGag/eLVyUAPMyFf2AIoKDo2uuc9yHZDuMh6yN9ksX9qULwYCTb1VaD
	 d8oHOoDecrDqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53A6C04FF8
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 22:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171373862278.3360.952535394915376235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c7e1907622459020e60541378c60075823bc31e032fbd4de1d27f38d87dad2
Date: Sun, 21 Apr 2024 22:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713738622
