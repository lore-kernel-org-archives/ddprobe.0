Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093C4285052
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757527194; cv=none; b=kxaUuqoZslM9KNw9096Q7dkaL830zWjgPxQWS6Ch611JcMrSqw3Ts7NODH7SEEX54II6eV5zX6yP0fNDbpa1Yp5qeNaygnh5hRPyBLYhhxmt5VeeOD9KLhKzxjdB5Piq+5ZpGT+8Vh5dmutbuQ9/QV+fMpmwEaQ8z7+V2FUviio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757527194; c=relaxed/simple;
	bh=M8DuEA4S8DMrLAbK91Bj8S18WL9ax1USikgpfpv4rQg=;
	h=To:Subject:From:Message-Id:Date; b=LiPPYs9H4Wq0zolfVTczaWSaPMZU9lVFxUn2IPIyKv419o90ehg5lNE1CE/xbv1lqQQCfehkFd7PuzQ3YuSdw8k4F5iA3VLpDa9/6vE2lnrOKqiPehXzKX0b1NUcfuNaCsrX3CVKhqgtgL2CWYSr8ECz/Rat0lo/HUDc2qdxlsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvkdmhiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvkdmhiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55FEC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757527193;
	bh=M8DuEA4S8DMrLAbK91Bj8S18WL9ax1USikgpfpv4rQg=;
	h=To:Subject:From:Date:From;
	b=qvkdmhiqMZ8BxD6SQxJaeQbfWYzUFfs4U93BIEBmCs+KUImTSIvjA08ys62bJ0zWm
	 4uTblkDIJbQq3mBMCIFwTumicscI8kX8gLoky1ZFEY6V6tjnFidKTgow+XwckjXJ4N
	 69XK6ezlIbXndAUgaIaqZ6dPtwnDbba9NyBksS4Vza4xs5ZuDCNE6/lt8EY0NQvpPB
	 5VfnIjM/b3bi/tqyKtpokgxfr3UE5ZF5IEgtD5PMOlXTnTRO+zhd2bQFaugujnvW17
	 asXafioKxCttppFaDdCGSF1fMmbORMsMQJlXn2ha56rCvR0+O0UrV0nC5f1XpRsdcJ
	 xN7UTnaMVJ5Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B06CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752719358.12809.8886331559680406820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b9fb5c2be4d7e945d2e7467f12752efe6ae7f793989e29ff4e4bdc15e5626d
Date: Wed, 10 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757527193
