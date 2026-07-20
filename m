Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA75B3AC0EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784529514; cv=none; b=VZFC2HKuSyM5pRW9AeonT8dQ2EE4yl3e+y1t/mjW83Fc0tu6O8SSyobgT9dVu45FyvR0ghfD6ckVIt4PGJkoW5ovri/fx90B7BkglyASczKUDksKX+viWtqmXwW7Qr8hIcUNUvgvcUTqOa5YZE57+sbUe2SBZbETYpuSfGTKbHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784529514; c=relaxed/simple;
	bh=W/E8U5NmAcUzA3eDu+S47bylsatB4UBdBRB0XshNJ8U=;
	h=To:Subject:From:Message-Id:Date; b=lv8D8fPSqZlfvsytiN3PSzE7vCOREOr0skxNH+NKnBpvMmAPw+kY9Rhh4E9N8PlnOMJ4FK+5tcekZic5jb2vVcx1UjmGHdifRZtsOow3Wgzd+XC63hObA2UuyKOTxPUUxHOZW5aPJoZW0h/bR+Qo1ODcjgFtwS86sDDH9CNj0CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWLDl5lV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWLDl5lV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA218C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784529513;
	bh=W/E8U5NmAcUzA3eDu+S47bylsatB4UBdBRB0XshNJ8U=;
	h=To:Subject:From:Date:From;
	b=MWLDl5lVS2X8oxcNizvUZWOLX4/59TFdEhkFH4Aq78lfFlB+ZlcmMdQYg0hyFs6i0
	 DPkfBXb+je1T9kmDA8S1fPR3idm8gdsTwEpX0d9IYuHfe7y4hi3tHDeafG+2IMWruT
	 lrUBehL9STtX2m18mIzYtrvdwl+MMgn8tGvFMYG5rxXBgX07XGPrWtyq5IOQ0GUsBL
	 wuLcvRTep0+/lZ+HSiIPW+xufgXdllxOQjL6E6seYyjpYw7AKtq5wkps3TS7M8jtLK
	 +cWOe77yjXgO2m1Y0xrmEZ8mmENopWTpt6RubHDUb6GN92t6zqu+RjqRzmz0a1Xwjq
	 /GfYcw3I0UKuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14BAC44521
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452951374.19352.11384598941829245326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b3900db17931fdad081d6961cabc2274b60795794910c64c5df2a11d38c800
Date: Mon, 20 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784529513
