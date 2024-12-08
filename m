Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2654A22097
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733658354; cv=none; b=K83wtzSEnjBVFYCX9hBQISxg+ARhLn+ahwV2Q0+wXNdz/SWvEeW4FjZxPpYrVhD/hkPC9ZeobYy+ZZVkIadANqsmySbAT6qW1lsKskK+KcuUXioHpaiWYGPWxSwrMT8Ch0vj/H+qYYfnFeNo5xTUKkHEtXGuAKarwGSJ7/ouBhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733658354; c=relaxed/simple;
	bh=6tWzMNb4wYaPjukoQrbcWOF4p5+WRtUPNmHqE9tjLaM=;
	h=To:Subject:From:Message-Id:Date; b=P5GeFm8LfrLYEJPrsN69bniWi+1FaYkaDTAQzmX9dpjqjPrFuSJ5EXnTSopZSF74W2EVezCd47wR/2Z3Ue6HnhzXz0DxnSNPRdy4o+DtUDsFNnH0RDe33Frdh4dJzSMVc9R6zWlBJk/3WZhIq2aEz1BGu6hROyPqouaH6Sog2Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0ZMTDUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0ZMTDUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C35C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733658353;
	bh=6tWzMNb4wYaPjukoQrbcWOF4p5+WRtUPNmHqE9tjLaM=;
	h=To:Subject:From:Date:From;
	b=B0ZMTDUHf51LMpOy+BVhz9JLPSK6PpDMAvTAIG8I8DyWNKmovdqzHCSotA57fz4DK
	 JlbEGkURiuA1pSwLZ/u7Tgnvku0135BPl94B3C08UctfZCzIaBO9Co64GvfI9rAym+
	 riWXgEoMxivheqsRyTLNVYUyfwDcPXKVsZgSokmdZa0/uYdRSk2b2rCZLqfJqUWeqN
	 VkTxWwO3T94lVXnPHEvVI1FN98Bi553cZJGNlzMT5T3BM0NTBmYijDNMVQaB3hIqez
	 GFFZcyyUROUXSz/csAjknecDdjIYV356griBB1vfNOEoO+dQ8WrzFUxG74f80vzmiS
	 eQO/8Xu3QmD4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96949E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173365835360.16374.9386999258134618798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ad1c09455937ce8b268b5f1f2f831b1f1cae5035c8dbc443e30672a83bd9e7
Date: Sun, 08 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733658353
