Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D0E30E830
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757702393; cv=none; b=VcDJ19BMlK5BqxalvisOCeCKWv3Mpz+kB10ETj4xPCs4PimlJov6wJNPpVkDyHKiAq+b55yVVKtB2GhmHt3EvCcO+EqIQZ7SzxWp5CnhjD/u5aE46Gh6OXZEp1uSwsYx+ywM+PeZbfdV+WA29zwQz/eVgiG90+Vu86WfdYIq2BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757702393; c=relaxed/simple;
	bh=RhehML+46FxRpad+JLwi5b8terErMvd7KlyKGPvGYYA=;
	h=To:Subject:From:Message-Id:Date; b=V9/UV0ra9DGSgBQtpgAIzMG1bXZooZGCE2Jrg0pxVcJiEyiiF/goMQDTvR9bh46VrqLC7Wcua/AaoCctjg6KCCzhVEFdb2RaWMApx3JQrhJuM7O5YNWBZ1NZcHdSRu+ulByRRz2q1Bvj9CPlc8vEbEHmG/jaIlAg1ko9JGvLnbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYyFrtZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYyFrtZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E820C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757702393;
	bh=RhehML+46FxRpad+JLwi5b8terErMvd7KlyKGPvGYYA=;
	h=To:Subject:From:Date:From;
	b=IYyFrtZVwI2TpWnexBthuhYuun4lPsxejumhsufrMNBuFOFm2dxqvXs0hvGK+V6p0
	 lcDABLQ/74zMRFspmBYXANg1kbi/+oYTikzy0rXwmtL1/BnDxPClMWo+lo9mzdxhXZ
	 r8KEOWp0TNboTN+Iaa6Heo2tzXQc+ClkpfhMjQlAJrr1AIn8RMRvMRETQ4u1DxNXCa
	 Ejm1g8dLAebMSoxivDlV0kSj+sTdnoVaVf436FqAmCTEWszjKRcDQLM+uLvgsVFK/V
	 2XZN7xqYJ8B8m2a8v3r32ZiOOUk+D5i9WZLq2D+PUro/gF+NvRtlteslfS8o6DVaI2
	 pO3cSd4v9YenQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF0CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770239358.18171.17435412676369529558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1ecb99bd8684c74cfb44a12eb782b8f9335f464f337f90d8d2949e5db41be7
Date: Fri, 12 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757702393
