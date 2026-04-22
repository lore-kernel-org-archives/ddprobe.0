Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2F3330B2D
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776849453; cv=none; b=BuzMkQaeZdtxVG3TQn80b7ZSAvFnUo7Dh2ctxv7poJj3Z8B5H7NtRhkjj/m082BH6IznnKjNsWTvUljx4Bdkp1lQu3P6dCPgVGgoUVBn0BwjL95PhMjwYs33gXy13uVvKBng25CzirhWVH4mgC+vOD2af9zSr34HCPPUtGgnzGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776849453; c=relaxed/simple;
	bh=WkREGllyUDtsdakT6CZUPRkv7eaqW45qZtbAMR7snwg=;
	h=To:Subject:From:Message-Id:Date; b=brnDw/MkuyaZxNWmcddUj5pqrEOZnsbjw/B52nNOKxyWKz0+cHQ9Xagsag6ZmviyU9/0ssEQhuaKAm+4deWCmoF7sYRhUMGLNE/kL2HAwE0wPloS05pKJdVURkg06zrgT/Q85hkuk1w+a8uqqt79x86r6K7LRXFHBPmYJ5/iysI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O76z4jo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O76z4jo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDC1C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776849453;
	bh=WkREGllyUDtsdakT6CZUPRkv7eaqW45qZtbAMR7snwg=;
	h=To:Subject:From:Date:From;
	b=O76z4jo3gMyQsFXXkLzSVbkIiWqZItaPA3IonKTKp0LdUtHwzb6Zl6YAwaJVjBmMt
	 D6Q3v4DtFSyJQ9UNh+BTZ5xaqAZTiNIwQafIzt+jfg6QiD7t++J5Z9cdBlyTBcLbNh
	 2FGMafyTldPdtMIUjM5BybxBDoXR9qp8t43QRMm2TauAxqzCDu2GTXoUbyvjWha3UY
	 MLVK+FryTQzNCZ5hB4Ie8vCJEx0t92rMsymaHPp+fVTstfo01L3KXewVwcoBt3My2m
	 GESi/tcoi7/wthhDBIsfXY2in3vI3dxVb847O+lTDY+jjD5T3z6U5VuoWp4OO50uWT
	 ujm5gCLhwroow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A59F9B5F2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684945368.10054.12389851540232640314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639ab4c6c3dabfe9a547b542c299cb7a64ca12e1ca48cfbf615ac8ff73d2d6f8
Date: Wed, 22 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776849453
