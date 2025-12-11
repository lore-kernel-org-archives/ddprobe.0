Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1889C43147
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765423974; cv=none; b=ibU+rAE857M8m1sCWZic258KFxIZcLeyam71MMj0Jh3+fmSb8KnfOqqxknljKW++TQxIemYUJubkcypxQ3UjRb9kGB7CCBGnYD+jvcfiL2DIhlLjp6rLH8c6TkmB223QHeHq1MA+gHM/GQ6+ekDiYnn3b/7n0bznBXlvmObY2is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765423974; c=relaxed/simple;
	bh=gHZqs7A1zxeeBoCCNfZnDx8ro8ghaAxWMCG9aERUDzQ=;
	h=To:Subject:From:Message-Id:Date; b=qd+uvqcQ3KP7agXwCWKWvZ2oCneoSAeAqqaIWnSMn5Wg1gq/67OnRx3Xry4jlxMOiYt3WMSPdcfmx/EbNRseZ933ddTtk6jhwckzjTOtcqoenl2PIBXkldeb82FnFzu1LW0ReTaQPblRFIHVHSDNzumTr/5aZE1zhpaGN/KJH8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsC/UTCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsC/UTCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC024C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765423973;
	bh=gHZqs7A1zxeeBoCCNfZnDx8ro8ghaAxWMCG9aERUDzQ=;
	h=To:Subject:From:Date:From;
	b=gsC/UTCg/UV/bhkFUWfbsMd0QS0SvPjh4HfBfO3zrVImKqYqntBKdzG+/C90SMjTv
	 w9PRxisJjUPXyjn//fh25KAg3M4gSCEbgR98hallNrgJ8KlWJIBHhu0v/V1n6DnW2S
	 LNFx4zSVs4ElYj5RXcZ4j+5IdQI8S5id8YQG9XxL8v+kMXZHD0CBfg/G5nhDDxnDCR
	 rWs3nKg3D1k2Y33qZpF/HqPXC8UXY6IW+y30XYF9O/2IJNsOyStZEK9Gp9xYzYkj7h
	 3As6Mn1St7aMfQKGbgj3AZFM5pZDBjtHBtxdhhGxVZgYH9cruv+JNazGW7zIZs3KYM
	 AhHf5JLO9BYsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981FFD3E78B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542397361.19717.4257351703683543101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05370d47ccc976810b6cf971f7d32d8f8d884481b5d84057c7f1a58159809da8
Date: Thu, 11 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765423973
