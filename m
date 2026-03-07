Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE9713D638
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772916894; cv=none; b=A4T8WoJwp2TvC+X0I/eK3c/gN7l/+hfwEC8efrRXbVMscGBnN18JMh2vCj5/kxJOwvo8eB2nbRXGCit6a2KmZpWX/7uf7OQKNz5v51kewVdPqwmoGgwc8P1CZnaQSodoEHL7sbev/YFcHCypZIlIylbpIUZ3c0YqXHmL/8ZAoaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772916894; c=relaxed/simple;
	bh=cclyrd6xNhRZOHr2Ibr2ll0zhpXUIMiSKZeJnp3od+Q=;
	h=To:Subject:From:Message-Id:Date; b=n4uVF6i0VX1CYkigGGMbxwEezQ1WiQJGXfJrqrOVHCJNrYlEGcpf/kw/99B9jGYo8PKA5EiyuVW9RyADtwAWDWLJOiXQl7080sfHQJu0NFp+WP6RX0HKsyYkAYyJiz30cAsNUNNIO9rL4z2SUI/tiWkXCz5vF2O3AN1Vyp0CDAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwDLURoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwDLURoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28F5C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772916893;
	bh=cclyrd6xNhRZOHr2Ibr2ll0zhpXUIMiSKZeJnp3od+Q=;
	h=To:Subject:From:Date:From;
	b=cwDLURoHYosIdhurRcXIwWC8IMsrmOpOMFLTqFXPlmzNBHZ5HCdR4DDRJl580WNux
	 odl9oQSmx0dKBoH5QSwexULiYfCDKjz3HVSHW613HN95dyX9cdLn7JjVN1OOio9VHH
	 uHOeGDHJpl2cFC698Lvb+4DuDN1JqlTCF1y6No2d5vztFEvP3K4rwo/zRMF6WrGzvU
	 GNhNW9k8KdyLzT3mJKFTydTHbt6MddfOreu/vN5XN0LrWFJC85XGczfCLNuGGJjzBC
	 FAn1c/0hLgtCVpDKK3NK4m8g+W8lV/PZB2WR8Le1xXcv3ar42QhlKgkT12rQjzZLlB
	 c6MiDpa3bmg4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6DF55105
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291689357.17046.8352340208870343155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad91f21931447cad4f62dfbcadb2013069384e15f779087ca8599c02b64fd5fc
Date: Sat, 07 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772916893
