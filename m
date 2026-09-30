Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752F841F7EA
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790758834; cv=none; b=Qr3wmC/TVFUiR/OG09UBaD3jEGHzUhS23S4IoJpDpuaynRB+DAUDb6ONkgjJOi5e7oMrCARVYhip4ezmaDIvSwr+1Yvg6J7nmK1wqt2uTcSkpgvbeoqnBMK0kRScciOxGcxPpXGBVWOSIE4RM/XrBc9RvDh98VEdGC9fYEWB4w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790758834; c=relaxed/simple;
	bh=MbFyTjHhBSKMWRJGA/qpj4NZQzsgE+ZrVuG5d4SLO80=;
	h=To:Subject:From:Message-Id:Date; b=JF8AQTTgN4Q6OgUSXtO1tbgeh2Y0Pz/HmaLx7InwNAbqp03gQ/uCusVMGol/W7JXGClQx5LucKFu+IzkIGV7+QfghLCsrVsH/peo4ZH5YdoPN1cwZMsuhgIhQVWHvAu+MJ0HUKLgIDFVWA2CK3BqYBzIKepo6ueiLefRo5ImftU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVZH0cLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVZH0cLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB64EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790758833;
	bh=MbFyTjHhBSKMWRJGA/qpj4NZQzsgE+ZrVuG5d4SLO80=;
	h=To:Subject:From:Date:From;
	b=YVZH0cLlrtsIq1cbX54D89czYvCuYt9Ch1sb7JSmDfmq3asMk8SsIyDS4WaFLw4q1
	 hjGJOhEyYVYt7UYC9ed8ZD/9WKPBL1CyZPY7e75NrI1EUaxUHid7JRik6mZGBs1OBD
	 M7Z9ZZXbq94sJSt2OfNoY/7CbcF8CLgvUIZ+JUa8fXZ4LFZEqRtE5Xdofcedsht6HE
	 4fxxfROEhut+29TfY4l/J++HAH9/OanvCot3+TzYJboZhAcAn0NG3CelEXDUeD1UkW
	 nm3rGAoV4T5y+nULlVrdIc3LUOLhu2/tY/KL2O5f2q3BzKhnXoZ83K/F0TUoF2hMvR
	 iyLQG17cfEyng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEBACA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075883369.30424.4678578349649998401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6190089beb3b19c5bb33e0da6077dca2292ac9503813421e632f82cc851fac74
Date: Wed, 30 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790758833
