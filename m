Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624F843C058
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791139834; cv=none; b=DPLMkN4/cbxemEGTc/b5jTMUJUkXTIRXUHtdmZYNOUoWspciY04iNkpLGUoY7EhmNm4r/p/NiwnkLjMhxG7WN2zr3tf4yXWahbxKdiFJcItrcUCwVyaH7eMo/Rg31PgtMmQH5XJLnRafCtXC65Xrb/7NQnRhGW7/m4X4TLRgjBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791139834; c=relaxed/simple;
	bh=prUPDHoX90g3f0LytEYLbaXm8OBQZwhlFm8y8lHuTWY=;
	h=To:Subject:From:Message-Id:Date; b=Z8D2KcnSleS7PaFGE8g3DTWY79bcoaFqsyx/v75/8/+dnp6gGtWFIWanUOdLyOnXMJCdRj2SFEfp4Kx7/gu+WppyJA+G1GKGKQ7wvvv+i57Sw3MWPmHHEISn9NdC1ERjwBV+CcnaC/MEi440MJLL+m3XHHFwN9gTwMNep3zRj/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMgVgmoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMgVgmoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D062BC4AF63
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791139833;
	bh=prUPDHoX90g3f0LytEYLbaXm8OBQZwhlFm8y8lHuTWY=;
	h=To:Subject:From:Date:From;
	b=JMgVgmoBNKiiM0nxheuObFQKAzZablRlZ1EvUcg1RNlJaBwzzYR2apRqCPFQhwuyV
	 SEOJdsz03Rx0vc6iFIEg408oxC1qtefsub6cneoZT9K8M8lZKeF80YHf0Vz0+h9M5n
	 efWHOwln3MUnBqf2wkyGdG1NtISNnl2OUmTfptbgQdVLpWy9rpZUVusn/xGi5UIrP+
	 5QbuXyXcUdX6hl0F9CUFCYStavAcC8cuu8JavGlBD+519vk3YNZYybQ6MVX6HhrPbY
	 75KlXzMRMXOPTc4HbVnFW6E6vd3a5fpwMz47yigCHdDfgw77U0FQ0xEoxfhSQU6agH
	 viwa0E4876zgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC90BCA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113983368.12540.12678672631007319057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525a343f90756e2491cb48458dd8efb82c44992535238bc8f5a82126eec2a3ef
Date: Sun, 04 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791139833
