Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F4847F4A
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755416994; cv=none; b=pVo7YHqZeAfuM3tJxuL2/wC3qd/kmDzaFh+Irj9WZYLodckJuzmi/xIxlCWIIKq8NvsTUxkwpUzGWzC7DWkPb1ozX0NdJCrjDGxF3yvtfmxJPaAfagRbJXoRpLatNh649wHTY/eZWNOdm4HvfFiXHzX0xNE2HQcvBAx/CDW9U2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755416994; c=relaxed/simple;
	bh=+y3Cp1MbalGMOVnT1jXMZeHqLnhdwioSbje4gHiX8f4=;
	h=To:Subject:From:Message-Id:Date; b=nzz+VTkk+SS0hpU05pyNYdzZnD4U/WRdeuWnkwEx/dUL6iQZfpvaQP9CYeuOo5dsu3ra+fWejhwx2WnqK/n4HgFW+Y+aQ91lfyYtcXLOSO+JUZxL+WSl8D5FZXY9oCnmy8O5weAnepLvOFx9EVIzhMzXekH+CbwZ7LqW6qJZP1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHbojJZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHbojJZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755416993;
	bh=+y3Cp1MbalGMOVnT1jXMZeHqLnhdwioSbje4gHiX8f4=;
	h=To:Subject:From:Date:From;
	b=jHbojJZy7W2emvCMyTfi7zaTgYpQMfXDntI66zyecPUpHNe/6K0XSeXlOWyCGcyES
	 ThtbiwxqxhEgqodLVrmKn0hLMNRm2IW8HQg7JgxONR4UOAVphEwy8C402hk/Jq5Ict
	 K66cDY4Mz8T1+1RASxgVb+CT0E+QEKU+13qspGcz4xjjgTzA9kN81wYAQPiswms8/R
	 wwTSRTJ7tgi7ngJ4+R0/RbOTtw/F2+xWHgUYxzbfNHwZv+wsZ2munAjpHsJ9pasBPD
	 OLQspvbtFBi+L/tpjTumRWpaAY5L4vjSrO2of6OBDtI/9zZawJ5mk/37neU2fSPvBe
	 lDomZZY9Xqpkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF79CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541699358.28355.3971233020292488130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853ad76cbc277ffa682c2a727fe484e3dc2d4bd4c08dd49222f6ff322be8b4f2
Date: Sun, 17 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755416993
