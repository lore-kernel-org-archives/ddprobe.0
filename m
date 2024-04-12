Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BBCA1514F8
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712960363; cv=none; b=GJwimx0EPQORxcdrH85nGZql85sQaVZIKgmQ8ru3khNA0OHZk60BDq1x4SFw8X2s3iwg0IgVclLsUJBmttmWM4vxSUVrdreiaLAALFXW89+hiiKub+VYTbNSj5SXk/ww5Asr21CSxwWts7QjH+caT9dIu2+VlA92kgdL5WJ7sog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712960363; c=relaxed/simple;
	bh=0RhaBvDgAEvjkuC4XE/tr4MSXgshbe74zfhvMOjZLx0=;
	h=To:Subject:From:Message-Id:Date; b=LVWB2Wdxtf7CF9v+Fqg4f2fnBB18zmS1c8lYG99ZWI4CRVgwbsDiZvbP3E1PZeVyh7KnLey5xFGP5jf2mPAOQTF8hD+a4fLAHv1K7MSvc/5XiGB8J4PDLVH/m13NlME2i8xibZbOsHvjZnAKUBWEP0WyvnaS3/kr4Hobm+BJw5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrRYlvR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrRYlvR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F12CBC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712960363;
	bh=0RhaBvDgAEvjkuC4XE/tr4MSXgshbe74zfhvMOjZLx0=;
	h=To:Subject:From:Date:From;
	b=CrRYlvR6JJhgHR5QAba0UBCuIClL+RXvD7xj/ywjQSqD47ckBGQZCrjMnej84sh7d
	 bndpU531vmGyjv/97W3Y3ha0UV9GH4IIwLbBdI+4vvJSvp8Irdv1eNObBiM6JmMVFz
	 LyT5Nu9IVA4RCrTa/g0xwt81j2Q0jW6d2iMBUJdSaKDeyFmRcuC1o15cmjEM3qA4Yp
	 s/c9U/Yf4izjd1dio+hUrPLOx66qU60zIOEMgpj7TZrZ0Rcx9oXQAHKDYwy4PMlY3P
	 o7pCf9pjL4E6Bz3C5G7ZS4fsT+aT0i3eq4QJmFhnMjyHvC7W3gyhSSU9Rpua3N+c0+
	 DGlexSCShdaMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE790C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171296036279.15140.4272860760093703039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a54623314d18ac2b089d79a28d348d9b36a8dac28971e80d94653cfc0e44489
Date: Fri, 12 Apr 2024 22:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712960362
