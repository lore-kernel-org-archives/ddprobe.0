Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A7C1E1C10
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734767754; cv=none; b=FIRSU037JYS6NhW5qs7oj8LR8jo4iz0jbxlX4fQ73GYSMOGQmu4TjBjxOl1fecpVlnz3Bw2qVMRSjeNJ7oc8nQTFxZjkvffValn8cV/wOkahMapryM1WQpWbw6JZH+u5wn3YQYMda/aZJr9q4jVJtCg2gxd97xFORDjTWEA7Imw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734767754; c=relaxed/simple;
	bh=ZbplnFGlUkmHp5xzQXkpUUN7t7JMxViPG8ZIHGrLDEo=;
	h=To:Subject:From:Message-Id:Date; b=HGBlLQTZUio8nEPvMAIrf9a7BHEXBvds0EMVAkc3LY8A8B/cD+FsWcUJFjPgK7+nB9CZFqye/3fhT8CgEu9WTz1dTFcpjhvNt6FycJTLwMqNgrdy1h1vPXFP+O+Ku5xVGVANs4eNCFpsOb5i0S29EM6Wktl0hcq0bpeLSgYDyJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0yz4p00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0yz4p00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBCFC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734767753;
	bh=ZbplnFGlUkmHp5xzQXkpUUN7t7JMxViPG8ZIHGrLDEo=;
	h=To:Subject:From:Date:From;
	b=h0yz4p00wQGs/0p0ras0M1+/xhkiH9TkE6SEaCt8KWcBZeTCW03l2upO1RzCjvyyC
	 ARWqiLuRF+zylXJ8DlUr2ou5voQrUi/u1ohgifjhHZzCovzsDkKYS5CF5U0xF6pFcZ
	 0VefI1EECQXDY+h60vrk7lY2858DEB7zYFXGzgS5Peqb0Tu/cDZsy614rLD+TgxFMa
	 KHcYJYzP0DKfr0SvUfc4F85G5vYNNE6rxGWjP3wMhi2euestHJ+G/C74hEMKs36oFu
	 FJxVzlYfc1zKhITP67VSu6JDg+JhX0CunjR+4vuk4wEI5k+o9HNF6amRs5ikqmEGlx
	 OMaHZpv2bFv8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCFBE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173476775361.8202.5271565431558461648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d64b285e0037d2edff2b8f8d7d63124e0f8f56f7f6a28d57dfef84ae3150ca
Date: Sat, 21 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734767753
