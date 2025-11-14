Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6C3226CFE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763087394; cv=none; b=HE4iCBkpV2ekLHrilVX40+q2oPUYhefV/rmjXYOpB56pzpfsKq3dUUjcxQTAh19BEIaqbSD8YqhnD9SAdKZAYVAHlHLZLINphQ5mHR5turaqwjzgDV+8PEE8uipYOjYRlLk5VOhCMLKOHRh+CjWF+5uaU28HseTuiCxzp73k2rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763087394; c=relaxed/simple;
	bh=wYtNuTi7XlgwWalXSFWct4sLmMufO4lEs6x3YbeOst0=;
	h=To:Subject:From:Message-Id:Date; b=Js5pNLvdElZafLCq8akD8FrIx69M97graZX0Q8xnJF6J8dwG7Qi/G7TphjOJJGP7DDoYbYwB3yYK7HeaD+mEPuFmcnV/0Sk1abM+VqSO0DHBBOtdTFJUzHNiDDBw6dlLda9DHuf3O5SKqtk7yQwHILdAtzzP6wkRfnFLJS3A8D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUnQ5anR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUnQ5anR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE41DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763087393;
	bh=wYtNuTi7XlgwWalXSFWct4sLmMufO4lEs6x3YbeOst0=;
	h=To:Subject:From:Date:From;
	b=RUnQ5anRM64ArGwq6mdi0EJqALfdbjPFv1ab9IL76aOr9v5EC8Y4XwfwXBlddjlhs
	 KczUnrZjIxgVwm5XXeAdubcn70DsEJbKRAOMTB7SfEaKSLRL/Ma/fnQte1nJ/oalP7
	 ZO6puEfbD5civnfVoKpAlc1Solh15A4TKQxE15rfzp/Z9EEjRoc4kWJY/+/7fPuvoh
	 nOy+f/++g7KpBA4ErmhFsnF4RcuTlRVQCNAixpCe6dqzY4QEIiicB0cVV4uOrA+QKY
	 Yml3GMMEMTJ9AFOOZmxtwUa3X0q/Yp/Zdxk/fTiShLgKKdDkcPso1PEsYYKBMCZp5L
	 j426c86ayyLNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9483CCDB475
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308739359.1122.12454306517531977835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a708c1e2633c38bbfa8597eb750c0270a1839b688febcc88b96a44417e4ff5
Date: Fri, 14 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763087393
