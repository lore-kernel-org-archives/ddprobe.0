Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D0B2AF1D
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759385994; cv=none; b=b04IqXrAQ4sMbXmeQFK+3lI0hmMmzJIMksbqSNLfu8YTgbWB1PDGPurxUMf5UZntgn48u9e9c9WzlAdN7URtlRPfKbKCMvn8IQYV20BAu7tXbol8J/QicRIt05tFR05Ci1mjOCvdr459QooMZhAgR1geIMTWxluZuUj/cp+GYKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759385994; c=relaxed/simple;
	bh=SgnlLG2MndeRAP9omXSsRd5Fyk8nqGejiLMBuLEmkqw=;
	h=To:Subject:From:Message-Id:Date; b=aAMotvmj0hSBu5GShA5RpyTIX3X0jy0dGPIdGdwbOGRyHtK3w/OcpoTrzPOy7s6rJrpFskS9d4CUsIthH/eTDOaz3TaNpb02LN5ohzml0DrzRU2QgcYvkWxvF/TfxyoBjZCno8jmwDoqtyc32kVM8+jtSzWWlYSJIS/zT13Hsxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/1cbhqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/1cbhqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A27C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759385993;
	bh=SgnlLG2MndeRAP9omXSsRd5Fyk8nqGejiLMBuLEmkqw=;
	h=To:Subject:From:Date:From;
	b=p/1cbhqOrGWhIc1B2pQST4Bg8OIItvGaoTVwXsvaPeCYMWyP9lAu3EiRWKz6eIAQm
	 tSyiPwdM78yaKhuTepCvTmhaCbyKgO95u5uiJMMgaQTaxySxtZTnfe8loSsfh3HXSJ
	 10UlckGm9PpS+KPH4Bvz9K0loGjSMO7iIN3gsyaT4kYULdDjFa4NX6w6DImg8MTb6Y
	 kPmV7nvNAIMOaV0xGQSRmTGlTmXtbVMJkZ07G6CzLt7JSyX/EtBx2nkIdPiK4xv6k/
	 IxuTap+zY6huRsQa9l/qx4BzLabGgyg+tOMXXIDLpykvMAiAMxJfKju3z4CbGCYCZz
	 nYW3L9f+HD4DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961BCCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938599358.26409.8658018789851673203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863a42abe49abe7c5c78ec15dee9d200f94b1612ac2eb546c725e7541dc1f21e
Date: Thu, 02 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759385993
