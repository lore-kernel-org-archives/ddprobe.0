Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123FC262FF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752677394; cv=none; b=KOdbfR2KDGsC4YM2MrO3GBtpvtaAmnaWYQcf+0xPrnYJOktmptFf5OK0s1Dt6LN59AaLLHSeJ10a9rfUq+O5i33wVWNmydUEPygqCjvnhadl8pqeSXZLD9Hg+zf1tXcMTO3UEKNpeAx3nmUlt50BCUx9hFIL37VusS8Ll/LBOgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752677394; c=relaxed/simple;
	bh=m6Q3mH+chnj3xNcBlV2rHpFbHAENZD7EQb/dv27QuEY=;
	h=To:Subject:From:Message-Id:Date; b=kP19caWD6pfxwtdUhQQMj4Vv0XDIW1OCx3lkSBW/3N8Mf9xwIJdOAOpWX3gcwgsEqjUfyf1xa7MY6EMGTGOnAAsP/no6MePNZFS4WLq/m4/qH8R/uwTiB/Mfkbj9faXqoBj7eX00mbVgVZlJM7I94XtaobqZ8O/u0tIq3v0/hd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuGL9CUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuGL9CUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F60DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752677393;
	bh=m6Q3mH+chnj3xNcBlV2rHpFbHAENZD7EQb/dv27QuEY=;
	h=To:Subject:From:Date:From;
	b=TuGL9CUlM++W9R2UZAu1RtzHvUkJoKwnr1sLcFxfPU9kUjUAwjCtK6EwSFRaex1Yw
	 fjphBjbFiUXUeAfTpOmsJjj9M2nFClVdqIKYvha6atvfxkcSZ1xz3mQ15QHQELUCsn
	 mCdyXRMfW+ibo+gh2npxRozEYY3l2ska7hz9pczklwfOeS2wfAUV2Y7f/bn88cLazM
	 N2E2kzNzAyd5oIWfE9tFnQ44whW8u4idpkT6MgJNmDa7TWFDKqDo3jcJMsNZYe99O/
	 YYsXrLBI9mY0+VPyxEOccv4yOGUj88IT1tEKlpvfMB3+yGjMzpMWcNEC+rvfpyV2X9
	 M5Lews+vpxGcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1EC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267739357.26109.11960518087618780909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae33e6907097b9eeca36da61e54e5d8259d71f1682fd0237527b8eccbc46ca5
Date: Wed, 16 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752677393
