Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C4537C906
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772576694; cv=none; b=SND9pwbb4BiLSOfMPtId7GZfik8ccrNUCl7kzKEgbNXvJ0yiMfgS2HumLJEnJPymkhx0i13eSjg0BKY4ctFpvPDv3vDpdRZ2e0QdRsD76T5dZ8LA4cJ0iOI2EHPQ1w0sqkUw3+eRQGszju8cK5yAn3vZ5cMaZ6OEuFdHsNIeKEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772576694; c=relaxed/simple;
	bh=jq8gk6tG3XWbTIGSYjgcPTQONbJFNW5f2eeK/HoQOt4=;
	h=To:Subject:From:Message-Id:Date; b=sJ5LTy6GJwqIa7C62L7thBzz5lbNIDutuYPKa59M4vVCo+LLWJB+o0YVc1ZRBgdusGc1H/HFTL6H5Wd1tLqCbVKHwpcMNEiErSX/u4eWv263Rr22Cg20Xvj57tURsYY6RDL+e5eNga9UVpvFSamdvhXovTQvGsNBTWHefcVNAHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meqQeR5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meqQeR5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B467AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772576693;
	bh=jq8gk6tG3XWbTIGSYjgcPTQONbJFNW5f2eeK/HoQOt4=;
	h=To:Subject:From:Date:From;
	b=meqQeR5VX5TyXe91dVT+MaDpWERfC4BRkBWTebNa7/N5Vao7zBOgl1oy/OrLImQU6
	 MIY/p5cGYdiWgHibzg2F3d7kjwrupuYkzottsZH2FndftTKNgvPFA/vrWuCzPJP+lC
	 ctgrAK8b7bGW+aLnalCfiHQYMR1UunSYDkDVSgOqKWNUft7BGUtfCEd66TTeZE5U/D
	 /C5Rbh7S3VDNhaRTOLPEjl1bMB8xdbl3oPXa0RZ8jzXNucsF20qpb63ZtaIvU/8ekI
	 BunzyWzBAoC+5hTxnaJbCWZxPNqL47yZke/ux4Z5awmxBL4nAKAY+n1tA7v/5kAG2l
	 1+LUWqQAg56Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972ACEDEBFA
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257669360.26530.8819560685757956583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2864ab4dc7f82ed401ed5ec6d9075e60b879b1d3002d3b39414a41226e41c7c2
Date: Tue, 03 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772576693
