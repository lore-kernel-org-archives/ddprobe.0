Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5522AE68
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776558454; cv=none; b=fkeue/PxPsMaRsd4BrdT6fyqudCKkMs9VUUpqCc79Y14A3SWBflZXBf31BZAriPiNn5wSztGmtbGyDzNOtxPep3hHjECaN4pG0mUQeH/V0da6k3cqHebnynZnC2BT4jdyI4kLiGihCeBda6D+cWcgLDuqYzwGQexoECFySAy+eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776558454; c=relaxed/simple;
	bh=IN3nwwrIOwzncZitx/2yyeRc6lonAXKNjKuCvSbo3PI=;
	h=To:Subject:From:Message-Id:Date; b=ekfExKqT/XB4u0vwVqN0yBo01+CNP9iJoecmMLqir+qrpnFnL2Pm1CsMhW31VLOMnAoD9vZOLJrSk8BYTsYvenp+1NO4DOxVdQ7PilRWIN7MnpC1SwH+pVcrvYOBymzQ26AKApjG5vRZMU6nN1VbsjzDcx2AKUlkf9atNXOcQks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUThTIXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUThTIXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F1AC19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776558453;
	bh=IN3nwwrIOwzncZitx/2yyeRc6lonAXKNjKuCvSbo3PI=;
	h=To:Subject:From:Date:From;
	b=HUThTIXQR+gB/8uO7J9O/rzxEaGz1PCLEvvQQ2bLakOiEe4kxQOWshcJeEAHXOWha
	 WsJ5rLk9KDGKlek1YrShPlYT5Rn35RAhAZG6GkG10qtxRRXyCgLXloRo1YV8kmL7hS
	 7e8Gg6H9cEahOiZB0SjXkZ3OLCqMUDztanREXQ/S6LgVJAFjKisu6HlIuCMiKeR8lM
	 0KaXdA/PvEjKn0nYEbLa2fKiWoeQGFW6p6GqTQjs1AS+r5QK1Gb+naXsXLzRDLoWAo
	 /GX1ocpz2RRk+FpnYY/SfcIoVUZUvIxa66Fl2sM81N/wUQebnhUtBtRFwFQ+jpS/RE
	 ZykYw7BEADLhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3B9F99C95
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655845368.9398.2777105242263555300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52e0a0d08934f3756b3d62fa284e412d5ce225fc6a674092cc7800457f85e899
Date: Sun, 19 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776558453
