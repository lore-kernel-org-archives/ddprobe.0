Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189B6186E58
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769911434; cv=none; b=sk09c0I5If5TbJAZuIlmHPUW5oxCdj80lm4KILMQc11LR8Hu2LFfrFrW0ZBt5HcJSsOVZNj2eYgMwZSYWOCENzuaxq1ejMcu5ngeh/BrgUx9ilVDRd0192dOKTFcZGgSK9YYkUfqnf+kWrNrfsTS+bf/pG0rjlZHX7nq8BPwtnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769911434; c=relaxed/simple;
	bh=7AE/0euKcJz9k7j9GPWamhke06aG53U/Uuf05gwXxIE=;
	h=To:Subject:From:Message-Id:Date; b=d1QdEtA0nhAn07aJzd61ZKTu2xfIH8UNnbtlSAXch/iKphuW9h+Q2x9il7g6wf/aoLNZYMi/y5SrRD8avJbYm0ZbXs0yPx6MJF39dRgvaDbufZLMxrvx8gN241S4cjPl7u/wAm7YjEtSoUGbGj3O4ovZ97GTTyWdtmpkGvTIFN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6EHTF5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6EHTF5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3DDC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769911433;
	bh=7AE/0euKcJz9k7j9GPWamhke06aG53U/Uuf05gwXxIE=;
	h=To:Subject:From:Date:From;
	b=V6EHTF5C3r7xAVGt2DZIpRoR2EjSdkvDTO/JojCeSLzn+u7zuraoQficnYLE4KEN7
	 uVcKAry4DpVff0JuyCp+s/raOpv9v1yq8EC08GJ1d6kHlZaIaaKQtvJU/fxF1KYqXA
	 WvkrEkjRxorpVEdoT5Q5gvkMKyVms3WgIZMwXmOytUDWURjMgjhj1o2bnn7PpXey8a
	 YLMGPdk9yMHiDL92C/pgYXA9xNeC/RIE8KNXyllS7fEeVLK9fZnVABmyoXEm5RX4IH
	 Y8cQxt5cOOwvWTZwaKoINBvwXJwhhlZr4lC2gH5a244SXGb37z7/ueurQD7C+hQ4LK
	 rxmWrYNS5IfBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98765E7C6F6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991143360.21305.9671694507313921844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a38d8a214fca0a90b0cfe22eaf2223fee88cf8ccc9ff3bd48420a2328d764b
Date: Sun, 01 Feb 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769911433
