Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE23288A2
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761826194; cv=none; b=qTcU2Q0XNPF7VL8Gt1uyE1x6CmDPv6cYgZcUQTawFZUP++Sf9uOcVm8bv9kSD+4aWf77u3SVHtxI8pvwKG0NY5HMdZPtwHGjR3ozy3kmtqLNqjrih9/ND36PshIMFj2u3uoo2rSlYt3FCSCxz0brDad3ZzFw6NibKgUgOTcmwzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761826194; c=relaxed/simple;
	bh=WvZP3Y2Qb0aemItOdW8C0qw5nJz5lBmtz62crWkukWg=;
	h=To:Subject:From:Message-Id:Date; b=risyHK8srs211+NUp8kqazuX0JYqsfkaa6dXOe9HUwdQoMs7oT8qJKDR+aTPAOSBL4HC7SxpO7vKTLqf3GTaYCgJnoFTU5m6Y3WB4uf5+HUrhUHYDGHnsToIJKTKsis5/2r0tqgBwe948UBO2bIleqIvGImiEGXhsH8ZlhXYaC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A72rl+2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A72rl+2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06EFC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761826193;
	bh=WvZP3Y2Qb0aemItOdW8C0qw5nJz5lBmtz62crWkukWg=;
	h=To:Subject:From:Date:From;
	b=A72rl+2w/ncCgQ/EwI8ulAi8BqpXHXKWh0pU8J5vgpip8QAs2Z+P7wiKK5HcRggYL
	 Fh0EM1KmMbh8fbwugUEwBYiLeR1J3w1jHBHfp5nKdldCTTA5SxzrO6iZ0nA48TeC7t
	 PQJcb9arpK/XlNP6REbv3eDo2oNSi2uDOiKWGJ+FQUTaFG+7fb98aszXrEHL3cBKXI
	 S35tnOdVJ2diCl9poXP+yxaQgzB/qZgAg/NxmxpqBCcN0SM8/NzvrzIOZKM+ywsexw
	 69unrFUj8b1zPGKxtaxi0o/oOqlaglOLh4uDPv7vybLZDMuMpm5X5fV3qZkCO0mzYZ
	 7AWAWmOVLfpLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEEACCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182619358.25959.9402422742843223638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0f82b0a5a11514a786a9e844b702a1bc4a60fb8068c6ee59e5f4605b5938cf
Date: Thu, 30 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761826193
