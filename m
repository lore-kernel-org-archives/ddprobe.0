Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640474137AD
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788545434; cv=none; b=BoMJGs77xXN3lw7LF6XjkQVQGIRJ98iS1xWRI26hYE4Dcf0NVXoG1VN/zygTN5krRENaBfa0WpgcjlW1012lGl2i0gtrQHQnttXrgCXDBRHnpfeRhQdCEusE1qNk9El2qV6qYeNrFFsaWWEaohls2gU9rDwIzxgyjMfFaEgFGe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788545434; c=relaxed/simple;
	bh=G/KmBYGDFDsramavHVwtgWSQIvLr5LrPGoRvERQipfo=;
	h=To:Subject:From:Message-Id:Date; b=J8NC0QMbwHKiNXs7LrsYyl7Mql0PPqXltAprhtDXgXHqsNa6dgN2aAwHXZRY7P6x1i7rrQYDgBziqovwep/1bkR4z79+TZh4/u7ZE0yvjjfX6fcBEtReDN8z342R+gaxX5JCAq1+BeP+gK9WhtZA/C4/kxJoIRe5+ivIFwWUeds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKJP2hcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKJP2hcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64C0C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788545433;
	bh=G/KmBYGDFDsramavHVwtgWSQIvLr5LrPGoRvERQipfo=;
	h=To:Subject:From:Date:From;
	b=uKJP2hcfwmWcEQJpaA7UpGSyHSEb3WvInjQt6gPdh177VvgFNjQx9PipWbVjKygrh
	 SCU1YEBeL5F0NZERPzmGecAWRNQwDOBETXqhSQjsgdM61GrfxQyn1qvjS5fZhnopA4
	 7PZ4skZITFb5WMMu1TLGo/kJX4kt6qvpCrtkVMnBH0jgnjpn+AVscvbuumXGXcWnRS
	 wi6x5li8opCLkjm/UKBbC71/r1+Xw4ovoSWRUjrcw4w5ijHNoIJYRqTcqMPYrRtmT6
	 DHJ8pkww7kSX2bbbf53B+PRdBsVNBuRF6OQBu8xMxxFULaqbmPwsC2aPEmFtHHffee
	 arHURNNCKnT5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E1CC79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854543371.14583.12273594406819276154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7878438e0b55fd4985146e2664754c01b3ca45931963dc5c6d3c2b8d7332fc
Date: Fri, 04 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788545433
