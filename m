Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBE5372
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743206994; cv=none; b=upNw6RIDpvezfMFEF1AZMmkGP/aHOPpYetyWLQtT3qNso7I2SAoMQEsHJiKYPqeT1P6YVMCyl6S2U4QJ/oe+rM8WdwAB+S0JHIGjls8qMxofWQDX8/BxBCg3eQJHLFs4xbFpleI2+kqfpbm/tDeR7S9LsvefG+w50GA4vHm6oPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743206994; c=relaxed/simple;
	bh=ZsKriMolCUC4VK0TgYfuMg/Dmu+D+RvKOC4brEjPrpw=;
	h=To:Subject:From:Message-Id:Date; b=dOhgPfP75mVWo4P4pTVoPu8pVYj1A1c/XraijgtIY3leT9I2KBl1gwoBbON/fMY9RQqpHF94EyhoFQWL5aD/6AvSMXgLZPuBneYtHOSjehskBaGHesMP0qY4JeugqoFDJUHy5GaoHZFPbauSB6xEYtomYJcv/8S6+AJWIVO0kKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hR8u98JU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hR8u98JU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AA3C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743206993;
	bh=ZsKriMolCUC4VK0TgYfuMg/Dmu+D+RvKOC4brEjPrpw=;
	h=To:Subject:From:Date:From;
	b=hR8u98JU1TS+DLdIIpzl9R0kBjGW/25/zgQ0a5k/Jp4HkQluYvKJEO93jOqp99EI3
	 tn8QM+y8uS1upknqmqoAHGjhSw3h0PDGPKUa7gbeCvH2e/5KTtiJOG8XhhzrEQAIKd
	 qbG6O9/FpyO+RxUjYMbVtyLC3efGqY5EQQZJVUxQ7tNdn7iwsU2Gx8xIVfip68cJTs
	 9vKuyiRikI2D77CbFlDdDfxmj3hEW5A5Od79dpPz4pIHyCwDcskWZCVUy3VVzJvjv6
	 lH+FSLwQh2/BbclRaVF+szXcAd/U2G7oeG80UpqnPrrexHbpcdAkm/UGuQjteH2zG/
	 BIJy6xMWBGC6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68D2C28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320699367.26846.14595322212666573991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcf0d2eb52256e655fcfd8328a54f89861eda32f60a8918370c79b84e5d5ea0
Date: Sat, 29 Mar 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743206993
