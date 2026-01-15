Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0892701C4
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768444434; cv=none; b=XJpvcOsIDcFlY4rnq0dRSDJN7+Jivm/cele1mnzhD2ur9XYYj1NCpA0wM1Ds7zmGNQsD8wH4EuqeN0vaE9dX4YnsWk7vy6RRI6lnVrtDIibwgWL0lc9N7XVUADMavd2bW/UkfWfErXloN4Ke/wxP4jaGkPdiNPovOGZrz9bJmrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768444434; c=relaxed/simple;
	bh=UlEHqW4BMwhPi5NWBQZBVUhCArRyqGS5UtTzA4PQKLc=;
	h=To:Subject:From:Message-Id:Date; b=TXb0OKyBhiX89u1Q9OcMJQCqlhgxN7yzK3/joyWgCowRivVgKU2S+3NSPAZEwiWD6yJaz42ByTJuP10xMG1gcEj+AZ+vFjSQxE3+dpKB8SKn96PcpzYMxEo/HWm7ZvCsHw40qKfRSsAAm4oS+/tgehfgS+GUbRMN52FBGBjxtOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL0JM1i7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eL0JM1i7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0551C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768444433;
	bh=UlEHqW4BMwhPi5NWBQZBVUhCArRyqGS5UtTzA4PQKLc=;
	h=To:Subject:From:Date:From;
	b=eL0JM1i7ey6FcavS+B21HHf4s3D0BMObhco5kOkpCTifMD2oYMLuVwh3QYkM36m3v
	 7DQaIhXbPFegxVXCyim7aflBK/Dute3LRAezNJJSr5noYbTcmsZi2IFtYz246HaBcn
	 nHV69ZrMsQoz3P95Ln3HRVxdpvil+lr7nXIXDKsBKEPLUyZLv6oubW+DR75N7rEtgF
	 1/gV7L+9PQCKCSNSGrbSqi7xUK4WHiuMAxUatVB7+3xUdQ8t2ntMADzPCeXL117YtN
	 PtndNp1HT1JPpBHV/YXWaJ/7AapWZ10TJXI7SMt/a8nErOraBPAxCK555IQAD3dBz2
	 ahoH+iiarOOTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED9FD3CCA0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844443357.8906.2288164982895435809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d9d1c57d4d225816f0494f24793dd85f5865af706bcfb075fc2799891f6af5
Date: Thu, 15 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768444433
