Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F52F19CC27
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737155154; cv=none; b=V+a6LXEXklK4F1/uQ18eNCo1ANXRBzLNNn4Q9mqotviFHbZG1Ono0ySakvcEkH+z9Nxg5C9yIEdvDKqxjFHfXin4uLEgNeseXs1wSw3QgWREQ3OmWv/KKBV00VAVWkRAytBkUjN9VmC+xW0HHi+zBvgX/HGsnvDgq2DWhz5dseU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737155154; c=relaxed/simple;
	bh=U7PtkMb2peE4YkJI0842B0oi4ul7x34ldFJOC4fUjdQ=;
	h=To:Subject:From:Message-Id:Date; b=qYPe1PWXVpxKSaE0PL2Iw4Me+BXGx00C0KkavBfFWSxAC0MsYfMG2pYqi1qyLPfpU0M5/z1EKlGxk4lGOQpL0Tp2UsGG6GDG0jz3AXIVS5vYMNtrcNWRYtDxyOp7jG62nvWLuMa3VwJQZD+O5K9j4VIHNeRUA5EbFPJoqP0Oesg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twjHratq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twjHratq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3DCC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737155153;
	bh=U7PtkMb2peE4YkJI0842B0oi4ul7x34ldFJOC4fUjdQ=;
	h=To:Subject:From:Date:From;
	b=twjHratqI4sUw2vgoIeabX3QC3XMiymfnG4mJN+7LNctjcyZUkmVKc4nm/1zV0DwT
	 9SegzBrC7sL8zIyPi1vKi/m8Y0eevbnmvhR2aLb9ZOBgkU/hcyDL6IYbcxKW695DJ8
	 k5ypBQhraNPbMKYEzek5iJORHbA3XLb33fuHk0xwOwGrdciMnlQFI4XKHXyYZq+9JN
	 STsMTD/AiWFlcb6DU6j5V9MnrQi751QoVLni8wZRfzK0p/Dc5fJrV5Cloh48K71sQx
	 MzaHwjQBIOWTUzra/MTzKitbM+SUquW+wkt6Jael9sY/ZFHe6oIKujUr1b/4Y8DIQD
	 lAeH7sHlDHmHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C59C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173715515360.7748.11229601238664997242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1058da0014a55128efbc3374ce9553ceafc83aea26eecc55029a597250c212f6
Date: Fri, 17 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737155153
