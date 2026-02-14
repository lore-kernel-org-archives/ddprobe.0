Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DCC231A41
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771076694; cv=none; b=kkjdVCa2TxZsjMXZo/5EDSGArvLXSzbj4f43og8+A6s+tab5+N0Rl3amwS1TQtkuFJj2RUfzoGb86yP9o7BuXBjhHXqnlRgFYt+Ua2CduYfj9eJMWNVMx3a9qSUVHyceihuUytPC0LUPxKW/LeDF19pEVq0dSDCoMR3MYWRdtF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771076694; c=relaxed/simple;
	bh=qiFFxqsiu11EZhwSSV9mOFojYKNVx/2x+9eiqwhCNSs=;
	h=To:Subject:From:Message-Id:Date; b=jnbQMFbdm1I9lKMayaC0HyG1P46GZ21fyW5NduWELeKTFTzejgRfywE/WZ60yUzJya+rHRqFp5APO82CpgcM6Jho7ZpJg8eoKtBywxk7N/yeM+VJK5t552vrPDFC2/iM+8kzo39W4NaP76oiQG9mN4aGl2FIYCCPkzpBH07lczg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RC/TlvUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RC/TlvUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3E4C19424
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771076693;
	bh=qiFFxqsiu11EZhwSSV9mOFojYKNVx/2x+9eiqwhCNSs=;
	h=To:Subject:From:Date:From;
	b=RC/TlvUnZHqnYF+gVyOdAfZUnfnFyc8QcYNjU0ovGGi4I5El670XyTAsE9Czk31Gv
	 weq+VMAPuUvrtHMq6pl8XO4VEq9vK7NnZIiZZCwLe1mKsyPPLG2SlKt2DPwxPHpLOQ
	 WbBzbNatrQQW7ZwA9GGH1Tt+3qF3I5daLYQ6JDwVTHlJS6Z3GqpujfVapmHzQtlX0X
	 LnBRPVlVV/kwZN7huO1cl54+4wT9EfQWvPMFf2Dui5x9Q5EKlG0UrjtPYMCWbQyZmm
	 Cwu9BbO2bTnSKNwgDgpuZ21NIpDUlmo/o5FQRnGAwCew4HsnCk2okeMeW98YsSz0CE
	 fDr7kZrvSZGkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1666EF48C5
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107669360.21758.12150101566578741893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487c458d860f28b6559eb3cb5bbd539dbd697d4ec48bcfeb0d89b5d6be3fdeb3
Date: Sat, 14 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771076693
