Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBC055887
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730774154; cv=none; b=cLoZ7z6V7EJXEAHHfJPBqd1GU3fOPFHXCLMCGGqmg7tFZPnQlanyHYizfuK8ljaWRZKpxfTBsLTGle71PQOc9K5rSlpggvjvzi4PV2mfZyjmzJH4ScCx32fjROC7yPuPM2TGiVy0KW7vj6dHWHWQaXC8Whkwz05JYAm2OIm869Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730774154; c=relaxed/simple;
	bh=IKvOJ0mN9hr8vuh9pepfMzP2TT7vLAm/cKf6K3CCG4o=;
	h=To:Subject:From:Message-Id:Date; b=CuwpLrVwmD7B+D3Q3bIpKjz7ss6sf+5cMj6E9+cHczdqaXLR7CkZs+CpWrqRg0hqusi014hXqCMUE+/otQobnwcZpaTDMRz2KgNXBJSRf1wARPJabouitkOU6iaW7L6yicCS+z4LWrdDNkPvr4yRyt/7eW3pyNRdLQBuRGgMEzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EC6luMTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EC6luMTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A704AC4CECE
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730774153;
	bh=IKvOJ0mN9hr8vuh9pepfMzP2TT7vLAm/cKf6K3CCG4o=;
	h=To:Subject:From:Date:From;
	b=EC6luMTB6LH4ThDpz7Cu4bBxP47Wt9HOgKPq07Jb0utD//uZgwO+avX3hMoD7l0v9
	 HHcNSyLkbEry1GJDky4i3dvZZRvRu9YUXGePWxFCBI7x7kVWfzvhfJW87K9ElYwFuq
	 zf1ExeYKfdJoWKESR1BXOSvHz6nTRxCOOm1jBM0n8d9hLntxaWLTrRzk5moo2J4IQt
	 LtI/vCoQJrFTCUMwBKOAvtO5jb4F1sTrryT+qf2bSdcR315/FkiOm4Qitpd1akznn7
	 kNZcn4W0u/Tg9BpWKLOvO4u9aCvUjbw0KV2u1uO1aug1pW/OsZYizFJzYjAyxtt07S
	 R5nR1cMBtLThg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A1FD1CA0E
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173077415358.31329.17794977691777595243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3ca597037c9292dbd0470852fd942d5a5220685d3eb338679ad1d035a0ff04
Date: Tue, 05 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730774153
