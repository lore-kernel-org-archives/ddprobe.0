Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F242594B2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736213754; cv=none; b=nhHTxKsqwr0wmyN4+Z9B1o9eDUssfh3EEj5/pDV35jdMhwwnheyZulZaKNAf/xgjvMUPQoCujfzNp1cPD2LwzWjFSz7tXUnuOjJr/Zo59vKIqZYUxFWQqBLNWJ6HeWVfDLvlduTE67jMWJgiehsu6SLMOxRiERXAxB6LN+6XUMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736213754; c=relaxed/simple;
	bh=NeerjFkp4KpGJREd7xlLNjgMN4gBuCGABn6ndH6KijA=;
	h=To:Subject:From:Message-Id:Date; b=JL3Gk12JY5+o8MtYGliJVWEor2iC6aG0CIXqEaobEyGRZqPPXsXrdpYnj7zNs2EIhyi4HzWa1/QyD9hzNeUlDOp702+lamryOz2R4t7YdfxT934AomT8pfgZcgsedaI1VwVS1DfcEX5IGflnYekiTPY+nP//OVSbVVfdBZDGlR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCc1ermb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCc1ermb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8694C4CED2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736213753;
	bh=NeerjFkp4KpGJREd7xlLNjgMN4gBuCGABn6ndH6KijA=;
	h=To:Subject:From:Date:From;
	b=kCc1ermbRwLLrByA2RTsCEXugQ8MZwgPwVW/n373SsbqGzoaj22G4ZNBPGETyDKP1
	 qzBoZcteuxla6Db1b4e4WHs1YexA3l1Sc4A/kyG27onteXoCdE1IzaVeyTxcIR+ePy
	 vltjS69ZmTwV26/UXbI2vT4mYMgOjn3AiqoBqglsuU2lnKhO9Eh3P0oL5eS/HZSeV6
	 nMrdZfGPo7u7xQXaBUaHaEIUX7Lb3yr42ZR+CfslJtzrZp5QKZJAGeQ7K3PU4EbNE7
	 VU/gwLHioFJ/ElnHBt0MVW4tT0MUD89rX302rkHuKVIginRK3TCztdNBmH3qCcWyws
	 2d7K5Q+v81Syg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A29E77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173621375360.23491.9937790245129897433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c95c83b60ed022d8e03081843d70157bce940a731e70f82b9cdb082bcdae1c
Date: Tue, 07 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736213753
