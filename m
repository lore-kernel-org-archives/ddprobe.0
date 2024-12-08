Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386C938DD1
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733652954; cv=none; b=bZJGoTw8oy9gqGspTp+99YCgk0l0Vpt9gquDNJLyhmiOUykmbQycl8v40jDbCOkXgxHqArqN0B4tZhjIa7sakpS8zGcwBLuIOxY0qT9k3GzxHc0UwEgbS+iQFJmDUyxydcliQ2bYO6ByCQdr9DOc2PRlhH8hZ62DbaA89ph75h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733652954; c=relaxed/simple;
	bh=HOd0IDbIe74MzdWovsE/JQGe5kwq5uqmpWrZ1Y4pMws=;
	h=To:Subject:From:Message-Id:Date; b=CmFMXwT/kLigsTc4TthwB3VAS1SYY4nOVcvPHQIz1WUMl7KiSxd/NZUshe1QHCyQ8iyb5JGCnOlu7RrZpLSl38HD9jJXndOvQQt2Me/ORuZIe+FCNjFRxp1AiH+ety4+VoH1RUL94Ryuknrjfz7PBsDb1Ft+lNfpm+tGp9MRGu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmZ/+uWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmZ/+uWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4997C4CEDF
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733652953;
	bh=HOd0IDbIe74MzdWovsE/JQGe5kwq5uqmpWrZ1Y4pMws=;
	h=To:Subject:From:Date:From;
	b=UmZ/+uWKOW/HCZCRhzICU4W3qqqjgZ/O1zV9SY3+9JIFu9O+DNggOeoJp8RJGPzKg
	 72WB054Kr0wZVa/LdpTITNlT9a8EQb33/CU26KEWP6ZfVOy1BldFgWoQbsWG9s5TCB
	 dw+ac4dTLr/qSpJdFPv26xy6yIRC9ey5kFn1S9TOVkH91gZE6LD2dRZZ2ZWLTthfbM
	 fCwnL0Cly64k+BLLyv11PVRbqQC9sy9hyoG1py9RpicO+twCGkgZf1y+6ZPmY8t9ee
	 9b8olrrn++al/NuBFNDfRmuDpkNVreS6yPfrnDlsTOTV3XmJa1mk+XjYYcg8cVwA8a
	 SFy+We1f0UNFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D456E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173365295363.12919.1134508280710558680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4876faf75380e56dc09eba380c6a93f5a55a77ea5f648a2799bbb4bbd91b3e
Date: Sun, 08 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733652953
