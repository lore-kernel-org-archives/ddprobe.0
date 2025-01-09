Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0B925949C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736402754; cv=none; b=lylSBglUJmfDwAh0ZTEmpdo/Y9Bwk/wkSo3lQf1KBZtxMLXOau2bGgXtirHdbD8kPiYeRpRtv/8gLB9mH8nZx/n6OezEyL7Td190gveIvxHQfCSkzx2ULTWcvkMYl5SQsm5osTzu9vS586RihPVBRg2KXgoCfryWmtEIcY3A4p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736402754; c=relaxed/simple;
	bh=E5QIbgxcF14RkTQrpoIFWu6yelHdP75FYacrpIgvTFo=;
	h=To:Subject:From:Message-Id:Date; b=Mahfzco4c4EgtG4iQRcqN3aVro3VQWg5ypQmSELXuS9+uLCL53bZLCoWEF+2MLqrovlnVcNPOkw8CwFgNnGoi7wr+Spy16k2t/T/H76G+Yqfi+L13RgsfStBMRddTwnyviUmUGdo7r9pjByQZ8DXyOguzkP2obMO4uVPT5yxpSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIzcN15E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIzcN15E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD71C4CEE1
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736402753;
	bh=E5QIbgxcF14RkTQrpoIFWu6yelHdP75FYacrpIgvTFo=;
	h=To:Subject:From:Date:From;
	b=HIzcN15E+8eY9eK1srZNKuyEcRMqb4rvYYue9WrccHqtRJrfXA0GaYiqx/W8N7MNC
	 fUNOW+Kr4BxtwAOWY1ky1GgERhev/D2lLyMt1F3zv4e/q3OCiLbm/Wc6oBVQvsUdzc
	 lagIxvvBknXpj/pIvxk87zgOFsV9pSZ05dBLe1KfWbg75MaBeEtce2nAYsCRBiuG0p
	 LBF9UJozRONVR6hg6Nbq4/OI2bw9PK696R3kpRR5X2Mff02ht3NmQy/t3XVrLDbmt6
	 zKvY20aIK5LDuzkTs7e6AL239pfklMCyhVMJkdfNmJr3JazXSbQf4TFDkMGsfZg5LC
	 4+HiXum2aqXOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC660E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640275364.20504.9756050154230746467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05978ffe4714ba3061b72d0260f683fa058ce0c3580257ed0190766064ff399a
Date: Thu, 09 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736402753
