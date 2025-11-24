Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44ACB1C28E
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763950314; cv=none; b=VrGc2tCA0wIxkdosueBhdE3ftNGN3Ye6ZeEyBICvK/yQh8EbRawfmJUHW3twJVZjK6afJMOHuG1NZHgzpsiK0Ny5ME0NFI9g3OBiIYfhJY0yPEEpw5MoKTqjW4Fsd9T46DOixzyEbYfBGYmvg6OHeX1ERdWOFOPCjP+LB8MmHec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763950314; c=relaxed/simple;
	bh=Sk4KBGAq+bnI1I4rQMB8sIbLyp+gDcuQ9Bj4CjM6C70=;
	h=To:Subject:From:Message-Id:Date; b=NSTW4BY+hsm8RyMOBZUB/K0OGoWCcuzVUaxwoTN+LVstmBRUUV8n5wKrbdRgv214tUqRhYjX2+Kfyo3vRTkNqeO2KxRgcqSgXxaQcoDz4JOVnCvhqG1HkCWD3Isxsr7RP6q1FCVMUVhg3Un0OMEMCsl/dVYNbL4qTsdymJarjtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDMYfd+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDMYfd+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0C1C113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763950313;
	bh=Sk4KBGAq+bnI1I4rQMB8sIbLyp+gDcuQ9Bj4CjM6C70=;
	h=To:Subject:From:Date:From;
	b=aDMYfd+I/8TKCnDJgvkQVr3tVlE/ub6i8w+Vubde0uFU7Em9qIuIskd/R/ZPaPo9n
	 Egn5Yb5xiUpXrAi9L0/2urrt84FXSpSExQ9TynWMIlTYz8SDfLI5gIpGxoOAYzXvHP
	 wnoQ9KlY12ntCW5H6doApcZ9OH9iv3tNye9yrDfKdLrw+OWaHDw6C6/fD1ec5udLLk
	 Khv6g09FWj0yHBeEyYVhnCdJHAXNjlz6lY7tltZlaRRgkIKAq43NyRFv9myEnrGZyl
	 6UEM6a51z/h+vFPyK1OZLCeX3+tR1knIZqs1lfAyXYAp2RrvWF8T+pcewYzfoY2BWe
	 pHcPXUTc63Iww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBFBCFD2F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395031360.23911.12314051299059418216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7986654305f1673f4041a645bee6513f9f9c59a385198e5f5b68c45d546ea6c1
Date: Mon, 24 Nov 2025 02:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763950313
