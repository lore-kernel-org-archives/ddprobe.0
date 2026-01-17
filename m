Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275B3500964
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768629234; cv=none; b=GzGysqXieAVYGG+ihTaHeO9gLYG/sDHX4DWWRdVq7KldAz0Sdxu5ecoBlpc//lu0BghFBYzSQmDmRM/4EmlfFnMy9Ht3+BUBYnlIw4mnDHUlb5hizlmLy6OpkOlfqrgWHqXhcTs5IfakWEceFYZaE95g2JT3vZKlDoG6GK6z+aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768629234; c=relaxed/simple;
	bh=qkae9mRSrXEbuqBBJfyJp/IttCDOtOZCfooyM2SHAyc=;
	h=To:Subject:From:Message-Id:Date; b=nAgmtWgXqapCmHDUqdAQS7i4JWg/ZEEYKF8mwSI6O7NiesV2HVdMGwvTMaH4AFj49m2Od179qmqfD/sPnFjKlGcz43oS0Lizg3rfjt0xN9MuPtS4KADmbXn6V64RJm/fhrZTkiuWnd+Alrvqogd8jxD4ouBH0+gybKzdN+7d91k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uq1DpE1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uq1DpE1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EFDC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768629233;
	bh=qkae9mRSrXEbuqBBJfyJp/IttCDOtOZCfooyM2SHAyc=;
	h=To:Subject:From:Date:From;
	b=Uq1DpE1FIjy2AQ5OXgGleJLWw986FhUYIMubCZarX9TiRB/U+0b8TucR0K7SWLAPg
	 D8/qMrwG204weXIiwRc+qoKHD+KHbUH/FtcmI3VKuyOii22oA5OpMTDCIVoMOl5qmP
	 CnimJbyAH2zoas2nepJUy/GBcgpO/Re5Ghjt17VOe+VsUf9wMOdyr0du0Ze0blkaRM
	 FOMuXZQlpnTsPrtUi8B3ZDtrNwspC25gUhvOAd2/4nFD5/gqDtebuCSxeIRPMZ3Qgk
	 lA8lGfxmEB3aX9Iiu/wNdH3jls0LelAm8lLahNhoJzag3vPiSr0qZx/F1rjEe+OsX1
	 y2a0FKA6r1lDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95167C9830E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862923357.24324.7663646840380543701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3daf269d437ca84b049e3e4848078436724332abf41b4808214e3d14f18e0435
Date: Sat, 17 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768629233
