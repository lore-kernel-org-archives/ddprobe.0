Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E20340DFDB
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776651454; cv=none; b=CrrCDug8c9xWIOmpbgaxmYjjFh5bHqN5j2dv3CuWroqMV/EFASF9XtjVNqiCYXqnn86MlTIs9VTRmRelGQ4wDPwJMV/lNEUPhyQElTv1g8terOtw0JnRZsBuOUbrnAiRa8S9E32oHCS+6NLpd/LEqubIP4B6ShJYHZnoTX3KZOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776651454; c=relaxed/simple;
	bh=NiLAa9mHIFKgnjp5NS0EHtKycSem2LfRh1LbYqQvJjk=;
	h=To:Subject:From:Message-Id:Date; b=lg22niDXV0oonx9buHG+ezRPb1vus7Lmk8F8TLa3vmfBf+HYWu/JhBwBLmA/8w0X4Lz2BI4herMxpuzjAmqb+vwq9iFF5uVap3w0gb2AIvxIQ+w5XKCpY0KbI6uB++6dC/6nH2ZWIwjLtFHeUxoPFylufQIbAC+F84gvKKYgCK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITaNAuq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITaNAuq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C96C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776651453;
	bh=NiLAa9mHIFKgnjp5NS0EHtKycSem2LfRh1LbYqQvJjk=;
	h=To:Subject:From:Date:From;
	b=ITaNAuq1ZmXqDvhURGA5A/63T94ZQOtb6xo66Q+mtoi/BMKM7xYhBn7/5nlxL6XMM
	 SrEMh27fE/+BMjrqIPcjQOq1Qcz01BTCRJSZ9jjvZJUMj3c4c4Ze3nATpm5bSds0Iq
	 WJCTaazUqxcW0V1wQMdywuIcpx4fsfgEZRX2+kSlvnIoRKbi+kq5CSuL4JSsaGUyi4
	 CEF4sducVaSXatEPgfVIPXGg5ErlvjwMc2N/ThQIh3e+E6ZFbZqkGtstETHHumr2/r
	 cZFYZBIf+4Ee1BWCbRE5PAjPSPpbOqHfkQLPTGH+DmfGQVJKdXavHcax2HEGi5tXQl
	 Uvy6swI1OW3ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1947EA71B3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665145369.12914.9676534465909010259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bded8cbb3b9a24f97419ce81e97728ee01075cc2175e8f2dabbc4b13ae0e0711
Date: Mon, 20 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776651453
