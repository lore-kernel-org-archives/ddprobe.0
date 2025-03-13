Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B691F4706
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741903734; cv=none; b=qUQuJFn6ZuvsDNXaHjxsHWsD9rlAvp9Xwe9koNOBbNKEYF3AM4+iiove12iH/yfHaZww5AbhfqQKd4v6voKDX2NanZ49NVecOk42uwCF60zzhpy5JcyGVVQAI2KkHaKwK8cwUHOPZaIuUGw0I9JSy+uFmGKFRRn4tPN4EVJSmcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741903734; c=relaxed/simple;
	bh=wlp24MVL6r6nzxrqZWe/E5UCZw2eeHjVCJ+JuVS8LDU=;
	h=To:Subject:From:Message-Id:Date; b=WPe+f1vVBwXAuaokDN40Pxr1wZc8faQk+gvx9KoSLfGZ1JGKpT6XyxEGw912W8ERP4zcXcTWKfQkmt5SdHQ6K+aUK9tQVsO5jvmRcw23DkQLyjij8IQvofBsbynU7MyL6OtNcA1+8oi2h5jse2fUlztH0fb6Bsyz0gJaClB7l0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWTurciW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWTurciW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F75DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741903733;
	bh=wlp24MVL6r6nzxrqZWe/E5UCZw2eeHjVCJ+JuVS8LDU=;
	h=To:Subject:From:Date:From;
	b=QWTurciWMMxx/1H8kkkCus8aG/ilVpJZOcnTnDNylRW3Zwd8GaEYi0GcbgTWq+eCt
	 4BhBwZ1VjHWoOPqhPEY3HjJR5OU9W4tWLY3cvUWDeKoIpzgPQxGG+wiQUuFu8ncrWu
	 vdKQTrSFJYB+ZCduORYJUxYBVPj9GVDPgfNdn1CFz+ucfrZeioIfp07gURw59NnyH+
	 3eo83oKE+X3+/tc3qnOtQKmQxdjzjKdr9I9mQNGSCL4PyxnuMvi64uKZyi5ijAMgPI
	 HzOR9JkFwG3SmWa14WMedHNn7IMZI9YkNnGkoM6X5ckKpGh89oo7invwKdvln0C5/N
	 NABYswNaAh5pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F619C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190373358.1185.4771534364057682149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca025d2ff3e4a69011decb93ac506a5f3e9f922a4e797f285180f57e4c4105a6
Date: Thu, 13 Mar 2025 22:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741903733
