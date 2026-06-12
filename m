Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFCD2F8EB3
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781254594; cv=none; b=j8iRg1JdY7p7BGhkoVqU7MQOSZ0xB25Yiu5cvsfAwzjy20qCtjtwUwH5HAQRq5a8NBvHp7Mbo8GKClx2RZcJfQixbm1RrUW7BmhvYygp9FMy9nsAzY2qWF7tnRm9qvROGD1DBzHgschcx2am0XvSCeUi2takss3ltrCn8MmDcKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781254594; c=relaxed/simple;
	bh=pqvCJ/FWCbeO2VBLJoY/P+4Nx7FA2Fa84d/SGr5KqlQ=;
	h=To:Subject:From:Message-Id:Date; b=D+Y2m4ZpZ8h8wjW6Q32AGn27VH5FqPag4FHz+pCnvBTFmzyuIh/dZXu1fVjcUxO8JUNkewSgkX6n7l/m1w9nATen0xAqK8bAjGdX6YLrA/BWvQmlCg/yt5W0t8OYli0OnpM2rhmZVa4GQwOIt6vi5pACAU3JOKlxbEvI7dfBTKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlVDc5RV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlVDc5RV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD55C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781254593;
	bh=pqvCJ/FWCbeO2VBLJoY/P+4Nx7FA2Fa84d/SGr5KqlQ=;
	h=To:Subject:From:Date:From;
	b=RlVDc5RV3cqFvpkfveS+U1ZLqcbt736La7/Q3YCy1msi7t9HGX85AxAOcsvyg1wI/
	 zW7ojhjruQMX6nOg7+NW9R9X/ieGDXVrDvIVMP8cawJvkpBrLM6gE62mV6j0AJzG6S
	 Dt97bVlOIqYEQU5HVwKe+LOlwRAii/Cf2NW1NkdrBRGqWYtDzk2T4g+e3Sd80wTSmv
	 y1GF/O27xsi0U/KyHLNhGekPTtu3nISF8/OzCrii/vUhlu8zu0yybiBnZcdZtQuAM7
	 6y80qWZbRxLqnTzjUjCAZcGI0VfQsbblFlUTHTNqttMg50BumQA52VAACWdqLUZzGo
	 ufN0hKr8qC0yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCD6CD4F2C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125459369.17649.5795271522149733302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641f834d190cc6ca0f19d0e0cc7c4bb30f50f043b0141f655562f02fde0a9fd0
Date: Fri, 12 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781254593
