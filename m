Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7A02848AF
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756780794; cv=none; b=hq1iC/lpi51NXw7NJEwqMlNqYUEedXQ75+euIHyZ4UkT84G0fjMDBLpxht+srQk2JAajIAHWN+lgNi09icXwVsreHppjPRMXd7BGzS3/NUiZ8WXh3JlVtxrepv/KJi/QNp8/tTT9TAo6C31izGOtc8HgW4kdSDlC2C2G+oL7DQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756780794; c=relaxed/simple;
	bh=mlgBli1T3PAkKai0d8xzeKF3For+1+Ytx+LPlatxEMI=;
	h=To:Subject:From:Message-Id:Date; b=la8mPyBFdigYEKicM1AxseOIaa+VY6VrlIlydO6X8ykOS4eK0X4XYNuMP37XPgFao1NfDIwbrxZ9iHVKBEifVM1GOVKfPB2mgTsYauKDvklXaAsUhhG1t4CRftOKuoDPM70VDnK98koRydBeMCap3BMHOvbcHe9Ndi6eM6kKWww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bt0hBLSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bt0hBLSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0256C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756780793;
	bh=mlgBli1T3PAkKai0d8xzeKF3For+1+Ytx+LPlatxEMI=;
	h=To:Subject:From:Date:From;
	b=bt0hBLSGeowevhzV6AQRpDVfxNXuTs1IlFv+QVfrTmgOH4//zwWBkKJyMlllAaFJP
	 j1L/rhCQKAb0jNTUd1CyOY3pWiCjqSM6kZl7GgucT2Be/7HcahfslMuHqIhxjRiXyB
	 m17w92AkrCsHT/J+xTCLIl65NohbHUvabkk1scpaPpS0hHRf3GorC2OY6JbBjK0BUM
	 hl2zAmQbI0iP6nzxH0OFTtNfhGmNZjn+1D7rkGz9hfvwjzXI7tz2E45HbkftCghtni
	 brCM8boQMaah6EWmnkAZ8ihY0Y8e9TQbTS92m9tHoz1kylzXUu6rRS67AV32/uprlo
	 tJG8kHykLyMFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F5CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678079357.2509.9608738506994815786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1957bf76c83931a8b3ceba10692812ee9204b3ac2ce5ebeaa29cec3e2522e6b5
Date: Tue, 02 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756780793
