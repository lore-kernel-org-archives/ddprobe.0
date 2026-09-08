Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515D24CC26B
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788861034; cv=none; b=olKV5NGdr6UJ9S1TffUuTcjhJVU0BSMuC50I/zxL9MLKMEZQ/M1Ymu2NtIv0ftIhDF3+WBFEtbXHbGu0BDnkoMl17vfMr3e3JmyGHL/UHPgKkZ9FmWkeLPUcckb5XoC+KtTcpZ2h2jollTSOPqXGW9B9zm/kc3KUYMrKkDN75ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788861034; c=relaxed/simple;
	bh=3Nk5uNKZyMBtO2RI+Vhif6cy68jDdjIC1TobSyMVIZg=;
	h=To:Subject:From:Message-Id:Date; b=raE4BzoXeQKxqEaI8b3zF/YPW/cOJpPGpCq4wnF5lFDljT51HA6dXU9lbTH9jNAkczTLwYhx64pzvALNLbx3Wfnm2jpsYBz9B+d0Peg/H58y3yzMBoq27Bq+bGqKch/C4vKFY8bEgx0EEx6QeGlbSUwNCI483SVvKF1XVRnE/74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V02NZ4CR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V02NZ4CR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3898C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788861033;
	bh=3Nk5uNKZyMBtO2RI+Vhif6cy68jDdjIC1TobSyMVIZg=;
	h=To:Subject:From:Date:From;
	b=V02NZ4CRSn3l1bUd4kVS/t2736t3KF9iluJFSkBtIWg+DMH3uLElKgsW7+17mF38J
	 hp21RkMoMZePdbBI33kOROcSehqQrH2RJy608NReR2YfZOn5FXN84HLjpqBhHUaM8S
	 Is3P2JLaUb/pUMbXFP/n6of5LYDqxix/DsBabvksF/52z/MZcg0EBDGKIHkLcOiBWI
	 Uaa/qBV43xg0nm07BLnOop/zekXFlZkk/XBPZvkzGC17JVxKKYyQJWHw7pPMRO4lys
	 8DNwYlcZ3QNvqdrOkzeNzSbS4gQgcagF/XQg2VahokbM9xcwun5mmhljI8zFLBAYpi
	 UUOiOhA2DIuRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDB1C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886103376.10167.5858930572028677061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97571c157ffb240196b627e3621c5a5bc8070c4272f9e32729255fefc9b07f9b
Date: Tue, 08 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788861033
