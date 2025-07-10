Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ECB2F3E
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752121194; cv=none; b=rKVzDeUlyqe9cB/BhTgVEeI2zoRwgZuUyHziR51LZtIql5GhEOukqc1bVkmcnbp7zc47xcUfsqHOHfAGdpN1w2RgpezmiPHriwJpdRKfvzspvzevkS+CY8yg8y1Fbbz5GQzvhURR7JjchSoFpLqPi3vHatT+20UoLy2M6IsIz+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752121194; c=relaxed/simple;
	bh=RYl3ls9g/Q+1dYJeTLsQ5nYLLM+LvgKYdpepA1pNXr8=;
	h=To:Subject:From:Message-Id:Date; b=k/pkgVjaSdp1iJJVGpVp8jCmTvx9wEultO8qowWQPe5OtbjkLT9RXWwlRwmuPAF5aogSI1GxRjWGsj02jnjEhnsR8c4fv/X/RS5oQd7l9doUbNyx9wuOA6tgLL+3YVwit0cFiTIYf1shG09fRV1EoGQj84SrT4gnbaGrM+wK9U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBuwc6mH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBuwc6mH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF5EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752121193;
	bh=RYl3ls9g/Q+1dYJeTLsQ5nYLLM+LvgKYdpepA1pNXr8=;
	h=To:Subject:From:Date:From;
	b=ZBuwc6mH7veY6HaiYbtgvJCTV3OIBixVFJLdocnop+43NYhfF0H6u3m/Wd+D2W/D0
	 DtZwQAwTLbjfJ13IiotaLUkQW2UDKCVR2e3JqKE6y6fDlVvhyFY9krXBBkdloMr1TY
	 HrmchEKKb8yGLb/chF+bdPbsMd3mHu888kNsA8TxsWOUgOWLtgkwoKYlLuJUvTj8l+
	 WpvSc3Oo0NMOqTWHEm/opURX29X3qxPARcYDSo/C8oe5tHCi45KcpJEdIyyt/i11Es
	 X9F0FlJuUF0XibgUSpluxHkR7F5UA5bveB48ltHfs2qKI5W2ywCxwr1SywMQNrJonb
	 AiG41NqoNNaiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98102C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212119361.24950.16218467319933854098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5067f0ba822411df480d8f06412bd6671f156512f93275e352cf2e6a9695b01f
Date: Thu, 10 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752121193
