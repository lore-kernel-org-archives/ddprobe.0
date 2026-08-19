Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC053AE185
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787153434; cv=none; b=LnO5JbQcKt9xgY/dibPLWrqsBC2O0gppU9MUbyvTEnpfecJIcWi1Po1a8V95ouY51tdd9709HYuwmvKZFfWkgbH476hG3qV0LiKKqIMnqDbWceQBn9KpXzSHtNi6Yp/2wQIu9CVMtpdvT270EdpYPyCuxfXxeaJO0Wk9ZY0C6gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787153434; c=relaxed/simple;
	bh=PTTN2Redk4pHzCGKQasTBVDpugMV2LLKYRBn+7mK73g=;
	h=To:Subject:From:Message-Id:Date; b=StF/ndUPAWV+t4dD3FLTyEj4247JF+i75Lyjn6AWVN11dms3KGKNSyCeTMKZxIBYq4C1rkhqjJhrupg63IipgAoyFkB9bhuzx8D6RZhuD+9otJlBoHUUfWJAZ+zN5wSIhdp1eKJCCTd3I3PGdWX/YLeO6mL6rGY4zTK8BwEBfzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PT1/zDFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PT1/zDFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C8AC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787153433;
	bh=PTTN2Redk4pHzCGKQasTBVDpugMV2LLKYRBn+7mK73g=;
	h=To:Subject:From:Date:From;
	b=PT1/zDFwglspr2+zzLOud1j4ob34u9Oqxt2P10APbfpXkxVmnAg4tzrAJg0Z/sAnv
	 FpfY8IKtsoidYzbnBm8D393kgHiphbyrpG0DJE/bxvabnxer/RTlgze1CBzAggAvLw
	 +3wWOpbqgoElQqJB4yeZNgR6qIL6rOMjTeWarmPgx2+lNWAVcUSSPNKawbTgNo9NeF
	 wyaOuiMgpuR4883XMAWOvdKrMLSlErSdsGoK7Nm/OmCmfET8osM8O1b21rbzlz0Kit
	 Os+vI7eVCp4sYUfWb4lY5iQzQ+pMX27t8zDy+P6+JazNwG05hNv6R2U77n5nvRQPAo
	 16dNNswbvHV6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB80BC5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715343369.5021.17948162167381774961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47dfbb29f420e666543547c209f86fa0a4f1b6674dec9b742364f1a7fd5fb001
Date: Wed, 19 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787153433
