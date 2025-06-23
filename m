Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58021278767
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750703994; cv=none; b=tc57wfWXBus5vIe6Kev5ThAXFQHerWM2SPrkDR5l4xARa/90k9ydklISA5N+A4gBqkbrxNwBT7VzgNOfCczwZ4Dlof+Gb5Ficj413z54YXLJg1qF6/+ju9hVerwj8QrGpS1WDyOOVLx6JQ4304TC1RR0MGHlWeoZb/VzCmkdzog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750703994; c=relaxed/simple;
	bh=rxQ9TygLWeHmWbuEblW30xni/aW1pGl2NUGYYt15STI=;
	h=To:Subject:From:Message-Id:Date; b=D4VXxEonDrrsRRGURT2bSi4J9F1E0yb4jvMr5i9Syl7IrPXeUWCV+4RG2i+P6ZWQ7bs9eEO9CxIwN70fTqpKZzMX3mEijTAvMt+5arIrjYu0NuLEZD9pMLcEqi3jNAkeozFoFt78tbFmCn/hPQodq/lluV1BVZ/aCHxSlUnPsMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxKr13MY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxKr13MY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77E5C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750703993;
	bh=rxQ9TygLWeHmWbuEblW30xni/aW1pGl2NUGYYt15STI=;
	h=To:Subject:From:Date:From;
	b=GxKr13MYAJpz3V3VrTFH50r41BTKsp07+xxpCUz60t/uzwJUAzoVquv4Sk8Y9f81J
	 rz+AKRQmavj5lenZ0QoGFj6gtGzdJyRtEeDjOwUnTYDVM1ith1oXahsDqfqPCETYgR
	 IKD5NZDMn2eDYZpy6xEwd0ZVNYpiDsBZ2q3SAu7IUZTfQbvuf3Oj59x4zmhOnDP0eh
	 1kkSlA2Kn0YNNlAoQ2IMT1lqrh4CitxKrO05BzgD9LJAYR6i+vohjrlzJgU88tg7Kw
	 RbkxsOacLfcgB3bAQUhA5PCzQ3c3jwJwZ74zhcgO2Vh1y/5PY9loUrIKN9ov6vVd4M
	 HcHab4KlTrBwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84BC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070399357.7170.18285059580693935739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317f189f57d1b8233402749eb8fbe76923eccd2116ae876e35c421413b2c21cf
Date: Mon, 23 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750703993
