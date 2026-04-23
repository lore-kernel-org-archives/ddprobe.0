Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8F721638D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776919654; cv=none; b=YcGbLKTinUg7mtLic3CFnQesv6sEhVOQ5r2PY2LhbfmSeQHAYNLydEnpdXBjJdIdawhjgg75IPg+SrMmpDoMQnrb9N+PkuMWGtVLbqXW/z3ROxdSA8a7/Swj4iRpljOHJ0dVulPuQE8jq01HqqbzpI8wbihZSxL2Wb374RGZaR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776919654; c=relaxed/simple;
	bh=dLdmfjCE2laHKE1tZ0a62NVjf9ymvAbQIZK/BzzOVm0=;
	h=To:Subject:From:Message-Id:Date; b=D0DQjNlBa1hRjcCHiBK5nRGaKXk/J/wKPgKotbfxQKslsFpu2A0Dxq49F4K5FwFhczjTRJSGH3whQ/vHXPWenxMIi7fYx5dfzobLjC/w2jBs2Thu2bwfDonOwiKFYpcIhudUbV+3zEHmHme63bK0zA1hhrcHQB96OXAtoCdY5w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2Qba0fc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2Qba0fc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1ABDC2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776919653;
	bh=dLdmfjCE2laHKE1tZ0a62NVjf9ymvAbQIZK/BzzOVm0=;
	h=To:Subject:From:Date:From;
	b=l2Qba0fcF13eKdMXPv8JnChCIHTlKSZOg/PJMoia5pmm9PxECjLUucr2zYmx9Qirc
	 b0VS3T1iksOOCZQsUZGBtXcXqUFaI0T5Z9WTblqth3SPfFYNwFilK6+0bpkkSFCfmV
	 yhUAA5wOF6PClfEwSUxkDdFzs4HJb9uU2ENV7vZkykEo9q5LIomSenbmFpPnOmCQ7O
	 1iFs0n5kH7idzIRntk4LzwOlmJo3RmtNt9KM0YF3pk1mHoOrIlhdQGS94KBKdkDZZi
	 EEG1GA5jQfhPpRipBDHhvpec5z2JJzGHP9OAOTHML9g5ZyFHIIFtyfUDTWIg5aWrja
	 2z0lcpFyC6lQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD7BFAD3E7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691965369.8280.13790644070151637785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e8e7377f6f8e294316f27b8dbee3ecc61083ad890df45c4ed1488b33efd6fa
Date: Thu, 23 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776919653
