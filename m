Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BB81D5CD1
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785125434; cv=none; b=lUKXwN4uD1zRnOU/2ZOm+n1jKeB03DxYPW+GbFE6CwN9shI2p0SpAeij+sYppFYk0Expyc8g9C2U8b5EoFEt+L2nx3K1fviUbEUGsjHWRfWgnvWbbHQ+IoBTB1P9V1St3BvNkWQghrUL4tm9VH6l1lcZd+lsKsbvFAYlg4UyUaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785125434; c=relaxed/simple;
	bh=hya8Gm4FpT7Dl1Fy8dHsSitHHRyhBE9K+dQThw5OKek=;
	h=To:Subject:From:Message-Id:Date; b=FDbY96cgKCoeCoAjrv1hIMD5AnqGtcrlKgb9vDsPt2SN6WEE/F99cJmNQFTyuXJb+bbNm7ysketrxF4TEsFILqAwD8v/MxVUnIkUVAKp33g3WQ2ag6VbmL/QuSuf8xamJHn6+OUY9SLIoZoMuRlNLSo4DXV4XQeaSU7FF10wAx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qraL7odY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qraL7odY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC54FC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785125433;
	bh=hya8Gm4FpT7Dl1Fy8dHsSitHHRyhBE9K+dQThw5OKek=;
	h=To:Subject:From:Date:From;
	b=qraL7odYc/CRjXMM4p+mm1U+yNMfdzE9kWaw5wagWp0KcotLXLf2LArShH1G2RzGR
	 v+Q4cS4hd74M/dW/HYdHq+tG5b9kB7lgdrSR6fL4L70gJZdATbjzvP/T0sJJ0xiDXB
	 tO0Kgg7Wtb9oziYZNgCt64PbrU9NC74YzUocHR9xbEkXVlR56aB5HaWkhtyfNYF+Nm
	 ApCYTLn8wg7rQBiZ9XoH6MON0qPAlgkrgiT//Qv9vLL6bGxRhq+i6s0EwBkNOAK/ON
	 y+8siMUyTlAoVTjQhl2I8gXrWAtxr2vDsUCy2Ejxi6oXNQBOsuslObaOymddEq7QSw
	 OYW9ce8r6R9Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98BCC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512543368.11998.14599367531736116833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ae2ca4d100e936e3e86b03c42345d33e7ad109d2dc22df532af0957a5ff937
Date: Mon, 27 Jul 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785125433
