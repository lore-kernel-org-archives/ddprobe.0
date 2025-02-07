Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F202417ED
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738928153; cv=none; b=PbuMFkuNZdCrJAtenJzSumyVFJ098ujzTSetO3tEh7lZNurwxf71R01dSpw4SlYXd3xhLNHMmB2aRBArVv00AR2wlStR2RvCMczkBgspkcIJ8ZBituUmCIcdeaMQgMCPft+UeO6eueI/CeE0U7RL3oC8efI3Og4A3SF99Ng1qko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738928153; c=relaxed/simple;
	bh=FHOMvvJH496DbeIUJENTq/ayf88nYvDA0Fb1p53J96A=;
	h=To:Subject:From:Message-Id:Date; b=bUOPPUDCbDLjo9KYzHsCWHkL2K515pTc15U3W70tGRN8hkeih7msTODpXbmJXFpHQsHgmNmN+ckb14cVY+npdkTiI6Q57bjOuxs2OmiakS6znZJdr/kr5Eupj5pflzpC/xT1qOx+ykSKxAIPzo72Ch2xyH/rcudsQ6ZHFelsYp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvdohTwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvdohTwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B246DC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738928153;
	bh=FHOMvvJH496DbeIUJENTq/ayf88nYvDA0Fb1p53J96A=;
	h=To:Subject:From:Date:From;
	b=jvdohTwYxLEWJQxBr4vWI+G7PQL8pz4JxsEgF1Blnks/Ktpd96c3H2Y8GecdD8bqf
	 AN0eLGWCQOhVTznCVVY4BQ1Hxg+JAmbIVS37U/N6tbFpynUmgMkrI75kLdMC6s+R/u
	 ey6hheAF4ElaszPBaa8TGTiDjC13wv8vb+PHNSGjqfCYImB2OrgBA9JXSmfldAxfHX
	 kWd3ChyilWkfKeky5fJioG/DMh7PCX77CNobqXJSIE9Xt7tWcIb6GoD7Y0cFPJwTTA
	 lA6OcReQxUnBo7e8VG7UIdQtq5/uLN2kmiIo2LdS1k1V5FqEFsrSxTZCMO/kJD1h6e
	 gNW1gQABelNHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C16DC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892815362.17684.15708453711009061820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 569327175feb6f9e1a6ed2a6d76a13516232662896705b59e98e74151a13c547
Date: Fri, 07 Feb 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738928153
