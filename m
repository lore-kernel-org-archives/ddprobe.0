Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A23032AAA2
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771325694; cv=none; b=svYsNBtZ5j+d5i0ug0Sm0ZoV89qAvjMw5XYSoCAWoSsZNeIqqVGjLWGkn4LBew79fVlJloBCboR+f1Jhs71mOmla2qdZGlLsKBANJj4xSlGRj2WW/OvGMQToThBqQ4m9G0ANnR35DkaYuR8yYjWfRGLO4F5gaoJyqqVa30qxhoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771325694; c=relaxed/simple;
	bh=93xlIkPpNlCZynurB0tJi1BNnh4hWEIvN0ltojbKOZI=;
	h=To:Subject:From:Message-Id:Date; b=jxlJgJ/AkeKIPEZlfzfhYtOTfvu/kM/ZLlvsDDLEudHtYar484GBgJqkKnw2ixlYpaC9zSczXEZE1r7bjIiTHRYA2wzqUdBw7XfpPWRejhAEWG2P5S6AyRNo3jCIEsvq8dy8h1r6nGrvD6gUL2TsNMQnjC39QI93r0yS5chDGto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ertVp8W7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ertVp8W7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6018C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771325693;
	bh=93xlIkPpNlCZynurB0tJi1BNnh4hWEIvN0ltojbKOZI=;
	h=To:Subject:From:Date:From;
	b=ertVp8W71/qkMoAHJFZJt8RTJtGFUfZgrLsRHQxg9afXaMPnH5XvN2/QH/haux5No
	 ITe292dAaeX6ggUuAUVlAfds0E/bEOOQLGfSx+wNoHDEnb57FM079oDiov5Wd3BcsU
	 0VIH6zTCTiJv1RZLtDPCF44Yia9iroaAj1bhEvtNONOwlCLhHKuss4i/kKN7DRHf11
	 1nITHJhg9WCWUtqLs8tdLwPm7Xm0NaKwYIt4qkxI9YBbs3laGHWubgCDLVREnEoX4/
	 QYgP/faOriy5zirmge/+oyZBI7T70rLOAsFbcLWuMMWpd+MeXQMgo4Fpbf+sQ5QLBl
	 e1ztzGkjMgsxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9824CE6816F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132569358.11907.4902495583779875075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a842b33d5b1265e8599068ad7ea1020d8932a415d5f746d56be2b02bfdeba249
Date: Tue, 17 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771325693
