Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3542E366
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735691754; cv=none; b=LtWRRJneTCiKFeKq1RSowagKSaUWC7YmETvVBVo+LNBld6FP0xntZW/fC6LuFcDVj5td48FbiK+lnr1n3W3vSm5YzFf3lVwj9O4Hx5eSCRj0ugzDE8eod3+9j4o5EKOAXtEQGyvNaWYzX7PkVLWjfxFYFfg6nkoAUUL+XHsE4vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735691754; c=relaxed/simple;
	bh=JM0xGtucZulKaEO0W1wDaURtxHZ26vMbj+ufGEouxCY=;
	h=To:Subject:From:Message-Id:Date; b=OUt0zQGuLn9lz0vj9ySuy4FOOk1aaKSNfrqZMWdZ5xjWyDLaAqZsdCoVYk6EAUSc+mK7squbk0niMLlsVXTrGNx7jdkESVosY7htTqiD+c38Ktfcbys8rd66QeMY7vpvMBr58XaAuwkdZpYdUrCrFCUwBPSJN2WuoVDEA+92vGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjQDYop6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjQDYop6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB2EC4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735691753;
	bh=JM0xGtucZulKaEO0W1wDaURtxHZ26vMbj+ufGEouxCY=;
	h=To:Subject:From:Date:From;
	b=hjQDYop6/VrV60EnDpzM59QuFDbvWpsNC3TqoWoX52fUJalFN5q8JJPPIGMZ8QVKg
	 wUy8qufr/px0P0W3DK77Eznmc89ysMA5Pya6q0YVEw8ApACr1a61tpLaNpuNAC0141
	 Ap7XO1HkX+ebgXSDGYg9EBZRgrwF37q2OyH8m9JA0kDTw4t20EuRynbxtSUKF4ZFLV
	 r3eCrTPTqwEjkt1cHp7UToO4AAzw1kuXlpQVt/qIt6l/OJkRv7AZDJn56w4+fEowEK
	 TcGs8WZAI4Ayjf662dYYJzLJ8Swn8Uc5PshRPftR5G2JOwlV/jZ0++ePgOidD3xaUx
	 wW42YPF15tLPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F4EE77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173569175358.9395.14700870028813522332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3257ae4665ed4b64ae2c1446f1848387da0160ea74aab60757a1014cd67a7e
Date: Wed, 01 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735691753
