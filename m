Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099F311712
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752869994; cv=none; b=n154VtFRK8I/KJSx2+24cbKMp2243KJBzXPPbzqaAGm2vHFhZsPG8J3LFb7VaUSZl9YZ31F2zRcnPpPSk7+2/yDYt7M7mw0W7FtSRlDqbUeJgNWSu7O4LTJD76G3HurvnF9R63es+/Iig7Z1OrgD+vHoQdreH7BvZ4b7gMHAXbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752869994; c=relaxed/simple;
	bh=W2yWum+kWlaMmeSu0OrJV1ciGh2+HN19cQ6q8ovYkr0=;
	h=To:Subject:From:Message-Id:Date; b=W5v717Tiyv35maunPI9bYK5FGWGtLNyFMFqUxb58LS616mU/cSaqPRVuaTtkotO0IiR0vTyTIfpSSvDUBW/wczGE9AuycFtiA/NO6NPB0HgiGi4Gm/cmFVuS4xwsMrVpi4Xibm4me7Y0lek3GDJOXWYzsYvTu3XEv5aKi5SV0Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=il2r9jbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="il2r9jbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59D9C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752869993;
	bh=W2yWum+kWlaMmeSu0OrJV1ciGh2+HN19cQ6q8ovYkr0=;
	h=To:Subject:From:Date:From;
	b=il2r9jbIPi0Na7BkgZpkF9yOXEWY8tN+m3EdaBIEEmJ9fiZVOVgZZ/JjsOPkGq70K
	 fqUOdjXlX18juwh1vkR06S54o5RoOrTLAUx1ConQSUqpDG2w3sV9rh1TAuiaQy/MIC
	 ZXP2MYiQEEfO+XPWq+RnRSnUn7rOt+cp7V/xRoG9GkQcF13A2GMikYGZwRpr5VJwrl
	 0s/vAvtAk8sNvavq2ntg/UUVIPiX2D2Lk8bpfsFXC+7cf7ZzBeH0GtoeOK2cwjpifu
	 uOYkSiSirPAsIAqySQkqcMFdIREF5vQdjVZtV1QMIKtRDnQdemYM2UmdQT7zl2Og+/
	 aeEaUvWDMcZ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E21C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286999358.28367.4678760642223386818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba7e20e324ea90d6acab9ffdbd8dc86e10f7d7af672c99b0d9fe3a6eba2ac4c
Date: Fri, 18 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752869993
