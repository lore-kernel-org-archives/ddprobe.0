Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FB294D489E
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791472834; cv=none; b=a47OWx93A6GgOjVcFRQtPO+iZwPQ2ZMwP22r93SIyMppJcUFk2qfyi7Fh8WRKT1ksExSCY1PakNg3vDe+l+feRgt6J/lxE6gkS/w5ymg8DYrsn/v+D7Z6zlNmSOsGCtwEyQyNbJVyQPxgvvWZVgFAWCjZrLpKAW2uaTr0xA8B8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791472834; c=relaxed/simple;
	bh=jrpmxiZlixOaiqvEM9/73D8fqonACY8yY5byPEC2BKE=;
	h=To:Subject:From:Message-Id:Date; b=KgiOZzNGDw4csBmvC43q8SFBrj7Gy2Li3zM0LyVol9eaGO4E9TfSr713W1Ez3Kgb4JpmamL3TEr8A1ouzNiTAZ5q7nUbGbyEohgn8FwxSDJwqWPFQgCrKcUyfktZ7izl2gUavBzSrIY4G2fTCYFIVBQ3JDWd5u7t1ANinbVNjQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lz5N/6MQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lz5N/6MQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD81C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791472833;
	bh=jrpmxiZlixOaiqvEM9/73D8fqonACY8yY5byPEC2BKE=;
	h=To:Subject:From:Date:From;
	b=Lz5N/6MQm5Cb8NMeZi6S6V/CmwaQtBHO711uyJ/k65aCclv6K17oL0GBHEArtJwkk
	 7eZqo53Igmvt4VQcH3qpXiq6Zv8BRNRw/zFYdyw5pAEkfkso9JH/7FtBSUNY0g86fX
	 5nf5TKyyCKXRt+DdcUripLatvxh/XWBSkJxWGSzzEoyfqhkaHAN+LatVBuCCz8pBrz
	 D9MS6SbHdtarq1FFzie65j04Z/ENFZ6IUjP8LWrPf/+Ja6/uMKozpRAwbmmd/VDipm
	 nVm+I1TFlFf1xiUfEdUNhNK9CgC2mPPNIOCccUcxE8YjGLOQjM3ftygHUIvnoWV82X
	 vOzwKeXB28TgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0DBCA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147283369.1502.17840574560402860642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d736a8538d63d1db55d89320d0824828787e7e29678caa20ce6fe80ae250b1c
Date: Thu, 08 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791472833
