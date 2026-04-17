Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1088C25F98A
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776441454; cv=none; b=iyN2su39HqbWRjMe/vcIvHg1FgqpTBEE2EIRzGsYft929sNVqalxiJAbNlJ1RpMJFp+6oV8rJpojgqoY1YGh4v/q93+PiNngDFPBLOhZh5qJSmtoFJ+lkTvF0dhpxNKms4T7RiuDS1Gtvmn58VAOQQDX4FtXGWTMfy2zV6QeLdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776441454; c=relaxed/simple;
	bh=GvMbusQXDByZoOuKKFN1++XKo0bj6RgVNWGrTAO0lYc=;
	h=To:Subject:From:Message-Id:Date; b=ElYZqSNtusVmUpjAeZClEjJs0uY8Uj9BlJCTowDf8sXGZ/XOhf+WIDXxckOt7FhvP6r4n7imEhFIE2jv781uZ3zTgpQdZ1gHZpZ3/YYLYfk04isdQJD8ELEXL1kawH5jkN+QbgB+6ehvauHjH3LNqb1u59cAX3nGBUQ0xBrk0jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeO1agq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeO1agq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CE9C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776441453;
	bh=GvMbusQXDByZoOuKKFN1++XKo0bj6RgVNWGrTAO0lYc=;
	h=To:Subject:From:Date:From;
	b=LeO1agq+vyhecWfQHrqWlTHOZRFkxsKkic7DmLXsz9A3LH//LqeAZj5kNUO0sMdw+
	 SX3Oj/za5YGVHf3fKNa14Ksc8p3APKH1c//XDZQtUst4oFwqo3Tr96bW4NyCceTYle
	 3crZEKJPSWZTIKLNqDf3rW22TOzaLbU9sUEdXdXjnaebreT/v6rQR0cjMrEUiqEdwz
	 IV+prMzoqyhNC6DU51kcHVu/K24cvDC8kTaTzRy5l6fOS5CHVyfUbYEJBABc4zD5Cw
	 oSo+nNrjLUi+jnVMBV4NnwmNpEG68PWNj5h8sRZXaYtS9yzwvgZ7MPxQW9Crny4VUi
	 d2HUth18BjDyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D29F436B7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644145368.29273.2335714713870594978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f155148538963bc8b421f0112b51e9cf1a3735d7ce5bbacd47f16e7f7ae5cf
Date: Fri, 17 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776441453
