Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBC8132135
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717480523; cv=none; b=qY6WE4eJWV7m0jrkH/qjvMKZ/gz1VOMd7z29lblwc5J/zFWKIAzyTJyAg+qstODVzaZjEF70hcJ+rVHJpoYc5vyMAlFuzzNc+kycaOfLUePYl6JwM9TubawBozPuyVg28rV6arsV0VXAp2Z3Wz0FKf793QwLAF1RW9Nt1sb69J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717480523; c=relaxed/simple;
	bh=T+uHF13wi4AtOn+B4B9Lhsqd+0ylzg9mtH2ZPbXWcVc=;
	h=To:Subject:From:Message-Id:Date; b=cmj9bUZGiGt/4YZk7hY3rFVRsQmHnhoI+qAS7ekU0EDvbaBWs3026yvjrnupLPJJkJG/ef1GieyCugD7g9IdJtJ/BmdAdqHn/Y2Q2eE57KS8amJkXobPzBnzxtS6+Tt2/2YjOLdiSiZFLgNe5xljW6pmd8ZSZqU6DAZUb/VO2Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNoeMvsg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNoeMvsg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F2BC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717480522;
	bh=T+uHF13wi4AtOn+B4B9Lhsqd+0ylzg9mtH2ZPbXWcVc=;
	h=To:Subject:From:Date:From;
	b=SNoeMvsgS+YNsGVQhk9rv0/8BGHJ//dUraS1Zg01dyXncFS15VtmD73oHlTf0TQ2/
	 xqKYg7eP3DQOPjLDVOnnRRoQKFHK3Vg16atMivT7NtzQPEKrApeQlAWJ/K+HYyc58a
	 PVmg7X/WYyDehdKMLzeUQoQ7W+GEQ7Ol73eMfgba0EFjxcgs/gLmWIgsMzNV7CM8WM
	 1ry2fox26ZKR1jNrldA35qnkxwrOBsUNJp2lE8lk2hafvv+AoNsvZUiV7Yy2U3nUKi
	 9kabCpe2nyZOjiret4RkQfHmNYjNDiicevJ9w9NLh6Ttiy5en9kRqtDkoBTaEPDxvZ
	 3PuDBKZsB10FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF80CC25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171748052283.11485.12075053281459210070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217e7256a00566a5166f759b051b7eaf43d2e8cdab2ae3f5ffca5d211a2a708b
Date: Tue, 04 Jun 2024 05:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717480522
