Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C9B1A01CD
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724775954; cv=none; b=nrp2euoKiVgk5WSWD3iprIuqEItzQgzrWoe3Sufdgbrrsn4iXnRvtwcFSlvcxKBSsCtopvfQSK/8MrZxv3eH0+PRY411SLaRIZEgOBS6ycUGJUayLr46pxtNjyLNlU21ls3gWKjqxRniKrbznVlz/mmFXkJ89P8exvCPNjMwtEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724775954; c=relaxed/simple;
	bh=iNMty74vKqs0GCTbVoyFjnYlE45WttI+1M+MCP77asc=;
	h=To:Subject:From:Message-Id:Date; b=TuWYjpdAEXxIVs2ZTlQVF2nbkpY6FeTHRvHa96EiCHgxcNayLbez1Ge0pDAE8nLIAwupR2bARVCP9qm5CSpq2WJQxXeOIXbYPVxMqlDjEQ0m9c/xNaJDhLKM5jWM7eeYJDbPRLokcQwEIelmSD2CJlZsmOENWs6841QbfSEmFGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A05cW3vR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A05cW3vR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1CBC4CA08
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724775953;
	bh=iNMty74vKqs0GCTbVoyFjnYlE45WttI+1M+MCP77asc=;
	h=To:Subject:From:Date:From;
	b=A05cW3vRjjT151qF8Omf0vYXzH3zc//2Xe1hBUrBsj1jVvQlqf54Nxx/gbv+ouF+n
	 q7B7fzaxth8UhfMvlaquVFfTALVcuJUCtRyOpmQNm3LOlofkG6i+w+TwboLwDcNxp6
	 7g9vHQMUkUS9q7nEYb7F8r+VSAyAa/Pt8L2ooZLqM6TQ52+cK7DDvAhOJzRHrXY68J
	 v1IMh9PU+jKXQGS1pvNx8rRoa0W3beG5W3bVT0UdKWy++1nNcdd0Uholx2QBoXzFV4
	 FFoXw1FqML2B0kXRHc6igd7aHBsIGzNgwa4rMaq/RCldtaRolDPUgZXu5VjpIQRKMe
	 wcWK0R9b8v2Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A48C5472F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172477595365.8270.15564402318247861957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a65189c5f092b3292054744e1c8a4527579ee78fbc9f301f31aae784c75c730
Date: Tue, 27 Aug 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724775953
