Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C30817FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728797154; cv=none; b=nrvihHDtmhpQOLfbc2INDtE/hKshatLTlwbgsMEphYGfu7a+BgIcSO54mWrYautcjoAJJAEzj88N0r05xXGYhT+emXZju2Do95nV0FwoNDfRoz+NNaFCNvRXpT0vSG/6RW6LC873B2nCo4BiZ6q2EscHlAAA54u6FQm+yiw6cPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728797154; c=relaxed/simple;
	bh=2uO2qvDE9r0rVYIN6vGdogowtZjMU6g/KKj/jm8fHrY=;
	h=To:Subject:From:Message-Id:Date; b=mgkzicNevT2ynPAIpxnC5Sm2kpFCeY30lIgx6mDm+wCVX7snq2IIjAwNOiGR7pWcO2Aa7w6zZhoLb95zzBmbRes8HA23Qy3R3iCibL/QTX4uvx7L2436I3Sto3YPpYu+el3UuDOiO0I1bbpkZ58CLebKaVs6K7ow1CEnqLhYjvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPIqtUu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPIqtUu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44E4C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728797153;
	bh=2uO2qvDE9r0rVYIN6vGdogowtZjMU6g/KKj/jm8fHrY=;
	h=To:Subject:From:Date:From;
	b=XPIqtUu7xuHM1kUieIRDHHcK7hBVCzYV1vg3GhGVYsRUGF+El5WVf4DrFmso5wU8z
	 plJDTs9rO5mT6oTXEKxHPoADxhO9gS6vAJHZmOnGssqRqaP7Ji4AFX7L1G9VBUrAWi
	 7JXJTalPZTJ+GTrcIXcKHLex9fhRH5OOyrEQm720LkbL6dVq0RCx4yw7lA0Km8LsoL
	 GULI51SIlErNc8R4a/9ykUr8PtXG5RcEAP2I+eQYoAs33nMbqn7NEWIdYAGpSoLgjw
	 5RHgiFtSXawwDwiur7/OsyrfkSWwU8t3iZp1CHzpG4fcMg21/jzpxsjYLljz1sSGAB
	 zOeX6wmgU4rFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96775CF2592
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172879715358.17676.10656749760270495163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef76e14f0211ba48c0a46b7bc6b36ea98f05466ec19f36c06b5bf6e49647c69
Date: Sun, 13 Oct 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728797153
