Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614CC163
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737203754; cv=none; b=c/dSd9Il2ZhA5W2FTfLF1lApNvAZ2r6RayI2P1y2oLUh+2KXhIaG4IMaun0Fkm+V1jhd0ahOU0JEH/kb5ZafIYbHbbj655YzN+QykCCx3ADfJlo1BCodzZEvYHynBFzmVz93WlMJIm7THO6+ispuM48ybUpJOAPTz876gllmlT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737203754; c=relaxed/simple;
	bh=n3SscQyXnKAcN6+vTle3qV8pZwAGhRYzF1aqtWP0Vws=;
	h=To:Subject:From:Message-Id:Date; b=bztoqLlukHOUlJZVRfzRf0bqoP/bbc+fCRUcFbyv9cLxrvUZWg1lbqW8Pahfj+IVGgzuFXLDjBew3JDUyLmmm/NOt0rI5Irk4WPRZu+IjQeyta4WfF+E5G8K5Exf5M0FrldcFLYCJsmvwzRN05g+Pn5C88m4fsyUkHdHHCG8yV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkPntzWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkPntzWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E7DC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737203753;
	bh=n3SscQyXnKAcN6+vTle3qV8pZwAGhRYzF1aqtWP0Vws=;
	h=To:Subject:From:Date:From;
	b=VkPntzWkYNOTbFOP+di39APiZuAtavxrLqq06kno0RQaTBXoQeCRPPCW3E3wpTNMJ
	 wSaNzRGYW+ZvsPQjk1zeQJIP7v2LiQoG5VgR43Ss16wt7hNDhzwD34KRf7kp7Zxa3i
	 MDAEsFHBtP27E1KIfMf48CNedEtz8ORXbFWKa0JDZ+ycRWnYrgzCm6F2j34gqi9nIh
	 ybPyOOAKiPnEED5Ob+YJqojpIBpqNzyfzTfwqlDcSHny+1sCHQDTiYJW0CQiPZ85Iq
	 l8X989rpPdScTuNSh4//CawPCgyLEWLl4qP9qatVnGjYGBMR2wT4PK6Svs9Yv4swnX
	 8eKiCnvzSP5Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F59C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173720375362.10499.1128760612972765945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492d752a98e1c8c3712a9b648a75e5a7d640de24d24fc2c5289e6b255091d423
Date: Sat, 18 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737203753
