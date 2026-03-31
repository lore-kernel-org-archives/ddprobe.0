Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064D13CD8C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774951494; cv=none; b=iAMOFDK338AKFdhQNycwiialPZFLrkQ+cQ3cdh1IJZF2kPGLhOf4CmFLcc8eVZriOFno9Unku7lco4SwuNeapzev+nzz9kuCgrWOXJrBi0lbwkQUVSCtUQwiI/4unC120MQWgqpIbwDaZ96555+6abQO0uxA/IDg/Q6sUb8xtCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774951494; c=relaxed/simple;
	bh=f7HsSR4FWTC/h7bVbocQHbwiyPzslYdbkYF4HZYOVDE=;
	h=To:Subject:From:Message-Id:Date; b=j/rWb/Ve5XTiK5roXsyi//og9FvqQYsW47KjlyUut/XKFwCBDFagzYQf9+Yde90R4lnqrC7t6ueh5RWPpFiy9pVzKerbFXSlLi7X9PYLztOZkEmnvvbuJYIUwWs6hS2m0HEjyjifyfPdGqZPVWMbxY24gIaA2UBQPTOfkWG0S7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVrjCm9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVrjCm9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A750FC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774951493;
	bh=f7HsSR4FWTC/h7bVbocQHbwiyPzslYdbkYF4HZYOVDE=;
	h=To:Subject:From:Date:From;
	b=QVrjCm9kWY03LO91uE+XuUelL1s8ybt2AYhDHwPQJtGB56flw+qJktpexm2E/KufJ
	 MmqF18G/VQuv3fJWf2PhaKDqbMQHA88SbKl4KxzLnT+1YL8V1GhazxTkhM6Xk4BuST
	 R3Ga25crx0kDG/QKZvPV53xRrgafvsqXwiLf4Qzl6hTD2KFbeVFFhVejJ/77AT0fg2
	 XlNq0Eg/otlUevRUM8ZIeEMcnaNHnIdXBGQuzMwemR1L0VkB6BFrdXXdw0Z9SSjSe9
	 Odc6uQmL8stjKcDih0RtHuBCzz6MPS57/tRY+PAD3okXb0XQPX4QSLR1v71d9A+6YT
	 SXgqsw83FyQcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C96FF60EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495149359.28956.18164446678119226555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13be4ef4f7f9de85c7ea277c0e0bc8b0d018d9e60f36ffbf52b0dd9b71811092
Date: Tue, 31 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774951493
