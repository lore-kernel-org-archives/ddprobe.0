Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D9C2FC865
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760728195; cv=none; b=CjkuCvphanKPhOGcpOsl8ZVGqTWRqQc8kbZwrkRohFHfRWERxKNcO3MN2Ynyn+iZH6DNPMw99YXpOK7l6amyVujHpq403TvAhXZP9O5KOOXMOPUTixFTMEAAmQypMvVEhJYG2c8xn1/BqkXVKgT+bU+YHych85GEgJaoZ+MDi8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760728195; c=relaxed/simple;
	bh=I96O2wK5ks3/4uoDfxjenGSDEGQ2syprIGcaUwWrp5k=;
	h=To:Subject:From:Message-Id:Date; b=ZXCKxfqNhCBJBXi+zTAIMd4Fn5P0u5yxMp5cOtb/S4MR8oyRNvXR1e047/AF2NtC5f9VCueRC4NBhMkN6RLNeSx7xx3YwSbOgQu9guXQJ/FD1xV0WOzh32hdNq/BRNklX7p8XGrkVD0BDM91W8/OiQYGVsriImbYCGKr+CRp27g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eR62cVBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eR62cVBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D5EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760728193;
	bh=I96O2wK5ks3/4uoDfxjenGSDEGQ2syprIGcaUwWrp5k=;
	h=To:Subject:From:Date:From;
	b=eR62cVBCkU22hpSsqfvj73zPVU3ixz35VCuFaVv0JDqNl9ay6XAALgtoVyyqu9xK/
	 9F7+9yA3EpBKGyqZADcUQp6vaD5bzVzkr7EdZVaxXd1y08yxDRFiE0VkGeNfNVXC7x
	 fgCFeFdNfHfQmNsnMqoivBMv4uYGMo+TfXPNX7uL32oXKsjer6WAfX5JQbdfL0MJqt
	 5hxSisVWwTNbw3DaampgWJLKai87YivzHVuhT+I34/KD/ROUEPITVjTi6+Go5m6oMH
	 NL77oUXTNQeTX8nd7TE9MQAn9fPGvNUlaKBMVQlXCJqtqjCxKCU+mu881UNlmx1PC9
	 d0BCxEO2Keb/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DFACCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072819359.30791.14559062087446460124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3a5e01f88ef2eff239a9683ec5d9637e9c1e464b9e8a106d3743e970c10590
Date: Fri, 17 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760728193
