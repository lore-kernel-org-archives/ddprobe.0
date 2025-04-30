Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8AF1F4199
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746054596; cv=none; b=ecUenGuveR60OQIFhYZTyuqqbPEfIfDZS2kkm9kykmkm2RXDvaJyz0iCcnhq5IhDt+LP55hVAm1d4FczQqr1piD8JLsVG9wBYV6iC1Ulkc1Sp5L+482Z4cET3vYbl1xAy0WQitplIqkHfMjj7z6vfOnFVeVmVN20j8xQllCFGXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746054596; c=relaxed/simple;
	bh=9OplmqKpZGfIHMj7ePMoqsz1nqeokf4usKTE+fkYxX4=;
	h=To:Subject:From:Message-Id:Date; b=DwI7VslqnZpaFPn2DmUYWDHaDSZwN5+I5gEJVMjMSpxBa6WFvah89kvDac7ueYB+svLWQJNBOcRHXV30s6mXRVmUPcC99ZLReP3s61wrDxzzM4x6sKU16T3ldLrD3NB4dGYfLkD21YUsFHcW17ma6Azxdeec11pZ9BhQ6UCk55Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLcE/xOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLcE/xOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB77C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746054593;
	bh=9OplmqKpZGfIHMj7ePMoqsz1nqeokf4usKTE+fkYxX4=;
	h=To:Subject:From:Date:From;
	b=YLcE/xOrCuh87ONfDFcxr3dYWRD6xJonfc4W6AUsk3uQT3zvMsG4PCthPorKmRu82
	 VQnjWxz7Akj3TOokdDyVfvYYYWJ8wh3VQdfCwq6MVw+xgPwV/Q3Tz2pCQl1rnznd82
	 8PTOZHo6/nwfvb7gMavdgOi/FtfgCEN6mTx+zF1JeXwlMA+wx/I0PpVZyDz4uk4ZxM
	 2n8Hh1W7/kbJKBpSjqJaFxn8ITpIirxSPJ/NpTgtEMiv9GdsOEk1mdaij73vIjEqub
	 k/23oDLABDnp/+fVp+eFnY/WMmNPrzm2xT7rQu0VbI+4LoA/o29Bfc4+uIZtnK3bAJ
	 ASh3FVAZfnl2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E64EC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605459357.5375.14605703898769821274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e225353567c6d98b7db3ba1db2c95e523d74fcedbac3f3d5a63c26643031ad01
Date: Wed, 30 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746054593
