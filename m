Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A55A469D
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767072834; cv=none; b=FPv0ZINYB/1Bp3CHdET6kYLcNODO36jQQD+W96+0V6nDL77ka6hlyp3+8pTDbmeRLFMQRZ9c7rZQO8gpo6Wem6plLOjOWu0fh2cXid0Dxq1dCZbHuZju/dQZCxkgLv3euvVsHLDYxuATe1I84+4GHjMcXIfZI39MrwZ3ovBgCjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767072834; c=relaxed/simple;
	bh=jYIaHRUhNJfI1uSXmqy+X/WxvswtQBNWPqSi0jGts8c=;
	h=To:Subject:From:Message-Id:Date; b=vDBCstfmSwd24IDsly+10Q4kX/E6LirMxNM5VnnZVNvLCXTgII1k/LgSid4ALaiK/dNMSSFzpj1QGcFSXRxL3Cpr1rHyQrdPiouYYAAEiTxj4rU2LHcTG8+b/+ATkQJ6EbRNfoTE7GyGkHmo4tEKgnGg3EVcaj4WB5azFUT8+4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qF5XKmhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qF5XKmhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0674C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767072833;
	bh=jYIaHRUhNJfI1uSXmqy+X/WxvswtQBNWPqSi0jGts8c=;
	h=To:Subject:From:Date:From;
	b=qF5XKmhwdcLNpSclo8BbVe8igq0rFcAQZ4EmCSOSToKHbTe7aIcWQyA5AJgjuIl1w
	 s7ovp5JR1z5Uq8+vSuwzCLiyGVjqzrq6lqU7Y/xJpAvDrzA6mZV7wys0k8S7dPZNUH
	 HIMY74hgkH+pIBTL0cT/OHbWPZxinOTf0CYJmUvIEsUFgg45kiHP6bezGLF7hze0ux
	 zNDXzF+mnOS72GdcRM2cLbSsYwSOqJVjhEVT7OsibQH58eK9gF0soKaTX9aTOFJFsJ
	 KrLVdbr8TCeLTD1+UA4IoFAT9GN1I2I5HgQlfnUI7Q29tC9bcnlrOHNlXn0hyAyFLJ
	 5nSTGhGWxxIyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C0E9410F
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707283358.10229.16029453534363701258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202533e88809dd04692f12fa66c930af3c769b5d971348d3c00b5101c1b0592c
Date: Tue, 30 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767072833
