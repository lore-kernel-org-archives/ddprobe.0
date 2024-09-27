Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FA018B1A
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727452554; cv=none; b=SKzhv2f4BY1sCggGlC7iKwswj/1v0ykL1qAqL77UZ1jqgzYAcSw15rQF3XIm+FFUn9ze4lOhkvkNOmERNVW9UxE6NaOVNdJE9RbkXkr7/FqoFNux/+CU35FDSVIscYjHk4TKX0dSP5dwOzsPMdRlL6Ff5irF5NTKJxvMgTABvbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727452554; c=relaxed/simple;
	bh=ukA29Zraas9WrYkuY6DJIBBHqNwHWOEK0RXd0YaE2zU=;
	h=To:Subject:From:Message-Id:Date; b=LGvQe7xzPD8fGAeFv6nXlxgf3YDpTqBD8NJrRdFb8JTeQg4jcpmAoUAtz6g1xtnSow0V7aO6fMwry0IQjo6fd9v5TE+omalIu48odjX5Rj5A1fsrsGMnaxZfJWe8mDtdoo6jimbl46ZxZVLX9cOhcXkjgtojcTtQP7uVnYHuPPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3p4K9O+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3p4K9O+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47F2C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727452553;
	bh=ukA29Zraas9WrYkuY6DJIBBHqNwHWOEK0RXd0YaE2zU=;
	h=To:Subject:From:Date:From;
	b=e3p4K9O+btMbFou/48U9TyvXhJxZXlm9CxgENjmMhs/OdZQPLg3ePxDBzqXZwZFaV
	 iafOyyFrimdrgtEOw9D+7f63eG4UQ5yopCnx99iBkwml1zm8rdLzmOm84hDS8mb0m0
	 068dXhTU9/UUBiKvQ7DkY15t/MfFNbsV9LM1aImPSILOBpdVBCtMVreZNHLagTQZXj
	 VBjEp64Tez+NVb+2/hSIOF+8HiGROfrdQGjzta8gKTjUJ00/vBYpWEmaIQlOl5oqaH
	 YmQF/REAAflDViW47FK1m/dPGQub9zG3Xpoi/5/fXChQFAEy69nufLCiJcMlIz6RA3
	 tLRzc8D/XG9Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94598CDD1C3
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745255359.27334.6820514904964877179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc991f7d5f4b5056659dfbd0f20e29122e832f2fd92b01510542c90b58c923c2
Date: Fri, 27 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727452553
