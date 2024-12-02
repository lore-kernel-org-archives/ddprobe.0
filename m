Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192072A1C9
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733105754; cv=none; b=VklsQoae9hxPDEJdatauwpE3Bi7LlnkjjiK0w0gOTtaak0ST/j/++YmAQjOWLMj3VsKmc37ED9EZBMTeQ+QtK7EATLCT7PfFaod3Bk74yvVnrWZn1SIzgaw3jl0yqXvlbEYvVPtWHgVZ6kUL0VeNspCyG3G6JGZn9RYoQoFZjeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733105754; c=relaxed/simple;
	bh=cuJf+8UCY4AeJdt3luSQBjKocF+tiOkiaupc3OGEV7w=;
	h=To:Subject:From:Message-Id:Date; b=mskgaBFLoJA7tCVota4o715K8QImyqzHLZ5Ds1HzXuDXl19prgyb0wB98sKBFwxz4BCewnmb5g30uAETQ1kbjRKVbawGygUXLXVZIm/MpR6WeL7qYZyk0pNWdOzk5+gVKgOFecAEv+Sx/ES7XztEYniVV+B9nR/aeagWDdBaucA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIC0IPih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIC0IPih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54B8C4CECF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733105753;
	bh=cuJf+8UCY4AeJdt3luSQBjKocF+tiOkiaupc3OGEV7w=;
	h=To:Subject:From:Date:From;
	b=jIC0IPihxKcbDCREZFTK51082kAwRrI6Cd4l32Jn3Bn2RRnyM/WwsITyzglFLP9Kt
	 2hwnUNJbF3Je9KYiRUvrziCp3aa+PDeHVo0f0dMkRGDxxj8rQAmedRFgH2nOE4rPGP
	 axAK+Yz7kTTb/l2x5CzNyotoyoikkVNQLEKplJBmq5yz7yWKExl/6zdNhmutn1yEbr
	 8JWKCC7V1Qrl1yNsKM1iFOPmc08QlyWaxSyo5Mqwyl+v3dM0HC1tdZ3BeqLPwUxIib
	 ptgkd0eu02RrdpAbcOGloRhXVPg2G9zX7xFQI84eX9XZXNClPIcNOQW66Hz9ROPtlE
	 6RZ59pfDASrVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9164DD49794
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173310575358.4951.18299708136932223316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e45472b4d334b0a9db6a76529b4af64619523cb994e765d3ccb8781137a51f
Date: Mon, 02 Dec 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733105753
