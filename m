Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571AB6AA7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738080355; cv=none; b=KS75gpy2EXqL4c+ELWxx6AdDe2jD8C+8oqbWRNMtF5BUlu42IGOkcImek5pnjdND9VOGVSNGrOxcnhJmF56SU0pKkR3lIvR6Di8M7LgQHd9ogrBwwn5FznjOISgBcUPH0xWT8P5tddu+r45edWqX3EiVWUiZTL59FBQ7r918wbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738080355; c=relaxed/simple;
	bh=cutOscZR54cBJbe9azLjYQIxlxNhxOrCpRHes9nEkZo=;
	h=To:Subject:From:Message-Id:Date; b=UGQiJ8znhgvTyrf0Wlb6kBZ2h3P9/o5saMH9BHCt8mxgssOaFpco+XNW9c9Yw9WAK/CvN04ZhoPdqit9VGcrO4728xNF5o5KprerYzMjoi5o9axPkkHF6Ff0uzf2fCBDUukZLDWjW3G+npNmOoGdFs+q5+DEgLTbOqwCWpUFHhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxL/aebc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxL/aebc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA0DC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738080353;
	bh=cutOscZR54cBJbe9azLjYQIxlxNhxOrCpRHes9nEkZo=;
	h=To:Subject:From:Date:From;
	b=IxL/aebcwkyKNU54PSiSp1b10wJq6Zob6pscaKLjeTKD2fF+JFL65a3z5Wt5jJ98h
	 tlDAn8EDhzVSAgSz/wdkpUuxg1HhB/j3nUzAziGiBMKFxLb6ax34ImIROP9HoDF2pi
	 mDhBn9Q1Jyp5p2VFXedfOz8IAUCORHgVLMxgqIWb/vy+mMrU84y55tBUMvhb6ISGaB
	 En7PVFR5I1SFhoHSLIIKdTaSQYEa50+Sd1BHSat8AIgLB7ucbBn2FLWDoHKsiY61n9
	 Y6FUufIie0qlYBQv9nR0vYN4zm3VvD/70k6gYx9aZDEs+P68K/RGLJvfAkAXhw1Jr6
	 orEC9a2K2l0xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A100FC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173808035364.18726.17211753214993685008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266a385120d25c0fda7c897c9e16f0d2ae671a85d2c1c060ca898a5005cc19d5
Date: Tue, 28 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738080353
