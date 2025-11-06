Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365A627FB28
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762410594; cv=none; b=dqwUKUGnL7gx68ML5UrK/mjTYUrOtRJfn9e2rLhMFsA+wJeHLCTMnxjz2VR7eT3M+xBSxVJ5BlTY+qSNyemCDNVA4ZiEDtZn013KIqXkQEU3PQ1ov206t04uPh9KDXCZSPI83jftUVFf+lQIAV+e9Mm9HInbwWOTV5b1Yf2mR08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762410594; c=relaxed/simple;
	bh=QfTDdN985YHXEUG1SDe2rO+IQpp07cXJ/p3bK1yDgoM=;
	h=To:Subject:From:Message-Id:Date; b=O4hO2Dddd55UHHXgpMCN6L6wLkbBDlcdG8FcAMGgvv2626+VRnSPogAGHJ+xSgDe9h3bVfXC+/+4fUqfUIYf2UEl8ypmxVNyhNXIiPWy6ShF+tLroW3GmOCfaMuoIACgMju5he65fUlR/iV75oINIksShdEjR42pcdscGrSYG2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDOVM2Qs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDOVM2Qs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BF6C116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762410593;
	bh=QfTDdN985YHXEUG1SDe2rO+IQpp07cXJ/p3bK1yDgoM=;
	h=To:Subject:From:Date:From;
	b=JDOVM2Qsc5XImTpstoMSW44EM5lGF2xmQIk9vyGt8fIXHJlFFtQ5j+HpEa7dgPwXc
	 bzxlFeoTUy9bXshgiIlvfTKz1gqbaRUPoYQyyNf/OmNuUSwHJ092M2UKa4WobnP6zN
	 E3bWq8XREgGJMcz+Foqr1pIxUuFhMRFj9LN4mBLkFhKZYjayXChF2I6KDOMlg4cuJe
	 Y3/KyAEtv5tWA3uI3DT0kdzBf87J6qoIIALWyrRn4gmxKPJqoOSktODmZvXfGsGImv
	 Llm29Az2lbmeCZ+aAlsD+qNSCkKBfGc/pMMEvhZpCbwXumos4HndV1Of0d2+uEd3A7
	 0KUjbp23g4YBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937F0CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241059359.25691.11083595856706915740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf490ff11f39aeaa1673224727a30b6db070fdd0e2c2a2fdaca74f665f0ad1b
Date: Thu, 06 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762410593
