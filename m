Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229441F193D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733922354; cv=none; b=G+S/e1m3q9nKdftPTu6i/kdXRKLGdaF2eLOjZtFpwES0gA6kmZ1cpDEbI+bjyWnHadxpveDjJjYVGywfQlrZ7Cc7fK0ESnRKHA59KDgzRZlazrHzOkbUiM2/0IuHM3NRRLruI78Aic3xlfWfSiEci4ijx6PWqnwBHynlfy/pWuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733922354; c=relaxed/simple;
	bh=xsdQrPX4BRSieN2jJXeBYCjiEifenflGQ4qAMST/hXE=;
	h=To:Subject:From:Message-Id:Date; b=c6JOD4MxPMWTVWMpA69/w5UaV77FzQJTUuCjzvnKg9v68MuFpNRSgqtWf4BAm2XbyhaIYQVlwv2ACjBmb3FkaEAMBsNOkGXVGxVb1hSG4bwF5K1sf91CJhw5MVeMKF+zHofIp/tZzVhrJIRe4OuijpDhKqV+lHJxbqYCCYjG6c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unz/BiZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unz/BiZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39CCC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733922353;
	bh=xsdQrPX4BRSieN2jJXeBYCjiEifenflGQ4qAMST/hXE=;
	h=To:Subject:From:Date:From;
	b=unz/BiZ2AitPUN9OUetD+k6W42zROPSKGUhpME7Qh/pRm3CxqfqExAQdGSpLVB85Q
	 nWydGFKf5Xk6nRyksxMOQ5Fa7WNCCk7OBVncfgTjmFGU1d4KpntYrOegAKUyz2GlVX
	 Srywj6jB4jAnpUVCzprse9Ay/JQJq+5ri66fDTKtACrrvu+6dcOso6KN4Yu+xQoWR/
	 LXP5RtoQBUFCjfUT31fGb08xKzkdaAvlvs+LkpzetCwD8IHhzvElX/PC315jP4IdUM
	 7PCAVlUGGRCGa7e3MhgJMg1NdMC/bJG9JunK0z6UgG5R8WBwp09gmd3rRRsZ+yZ8JB
	 2vj5KuapkDR0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BBCE77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173392235360.4894.2860380368326143958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1cb766bbb4e554e40de90cccd1eea53fec5b42195b42049260b30d1d934c565
Date: Wed, 11 Dec 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733922353
