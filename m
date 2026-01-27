Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261B523A9B0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769547834; cv=none; b=aUklqjEnACcBq24XZNDYpgUU4WNnjEsCns1h+F/t6aZaKm3+NfmvVvueszv/lWjbBPVSn4H9DDwkBUYS0gavMEA4fOknUi55x4W3wBtBMsTbL+XVRUSfdz9CJamhPrmrseZAu6BPBKTDVKHkLaWIjlGrBlB2GSZMK/pjZn5tCS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769547834; c=relaxed/simple;
	bh=EKt5Breh8iAZ2BheGTwvoQ9W/6mSXUbGPtMTlgFBV3E=;
	h=To:Subject:From:Message-Id:Date; b=NshkO31PfI07Rcft/WuE1P0zFplnxvEo6Xp+M94YmFCbennhhxAqadYQkDgqksYU+vgofHHCsNGn2ad2s25/apF1PFpB2W2TUe/P2mHFrfPJ/4/5xWFXFsh2ZydZp775c0cFi659PrCUzx6D26+6m1Ywys6nAeML5WEoNWo1Io0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLlQib85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLlQib85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B447FC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769547833;
	bh=EKt5Breh8iAZ2BheGTwvoQ9W/6mSXUbGPtMTlgFBV3E=;
	h=To:Subject:From:Date:From;
	b=HLlQib85TsY1clRJPHqrmcYWcHLu0f3JSL5jUM+yfAr2YUk1BUns4oh9BeLBnsFmX
	 M88znBQRbKKf5c2PK8NAm/r/Pw9LhPdl48RR4CisDQMtM+Y3hJwsTkmTthYV/hrIKG
	 eOGOearbl7ksfgGqrhJpWvW54ZsWW7lPU9gM12YlvpE39Wzhvz0jn1UOM7HDmGxhME
	 KnY7od02TIHU3Qi++yK1C6YV1EB4rTV+vQW3MEga2EF/bzOmpwiy1tfJSttT7wBbI/
	 IveO1HLTygC/wUJChBPHuphrUpr+dfWhtvW0XvclM88bQD1aM2AYiO+51a5CVLEfKQ
	 F0pf5+8yZJE5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8A4D2FED9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954783362.23422.13643507042519638884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919f68b8d16589a7e643add562ff147e4f7fc537cd195806148efee1731603e9
Date: Tue, 27 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769547833
