Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A562DCF61
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766466234; cv=none; b=DRTdTPkSQjCmHnbKoNYXXCm7TFvABHf5yvHf92++zpJWSWJjvdyFgpQkOSrAUgmJDWjgzbWAhR9/Zc8qEMCOO+bJNy7nLuNB+2oI5UQJL2SNs8FcmDfG4F1FJq9+4fH74ZFV7MXDizZbFETM0UXkLEgD+w/PFTWKA+kCn4uEOZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766466234; c=relaxed/simple;
	bh=2k3qyU8Tpq+uzoyNqPQJGmbDEjVJ0TN0EMLPMMO6zMQ=;
	h=To:Subject:From:Message-Id:Date; b=srYMH34noKLo8y/FXiSa7/3stGR3OdqDsyP0Km1lJMr0ayYn5aTI2b7bmiOevHw8vUV3/cp8EurUlIfBCXNjstLmNdX3jVbVpXVmngmaGP4hT57y9CcMzGYFBh9AN9GC/hEG4mBttLrIvQG7/79UOEnZaDMYqAeYmFh7+XxtYIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITqVvhz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITqVvhz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCF5C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766466233;
	bh=2k3qyU8Tpq+uzoyNqPQJGmbDEjVJ0TN0EMLPMMO6zMQ=;
	h=To:Subject:From:Date:From;
	b=ITqVvhz7eyGY1sAOcwqNRYxVK5zJ3g5cMlPIFbDgNKNTrOLBss0xT8M5vGjOscaBk
	 jfVnvW449aUp069w9ijUePJ8Ye4EW4NOj6cvjOgyVIWfH82WAXD+bG3EHSYraV9ybA
	 7U/R+qbpziLLZGSoLWRvkgksdXvuyhtN6g6ZDonvBsIyuTAL8reFqsX8DaUdCdDlQi
	 gTr9jnayPf8EF/tf15N7EeP6XLiCADDkVMg/MF16Bj/Sz6LJyOqJjgyTPmas+eHteP
	 e+H/oCpZU1QNZurkZ/KCua/OfjywbU+861/+2S9MPYQswnYym9RkyTKFhQjqqlqcOu
	 FJNn2rgQXLhpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F38BE6B261
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646623357.25604.4418455854498342504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84cb768fe5069e031fa1b16e2453c58dc7694a36de1f24c8c36d683b0493ae08
Date: Tue, 23 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766466233
