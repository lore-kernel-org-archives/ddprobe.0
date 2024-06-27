Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612221BF3A
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719480263; cv=none; b=jBmjm52bV42vPn/YK8V0AKt+Z3Bj6f4waJtzfdfFgugdAG3s3P+jLV0794nSlVDTIoFjjEnhUMOiwKWI8L3hEz6OHaauRqYA61/HnuJcO40toU/8dcWFBYp9vKOzD84CXQkoyGgq5NH7wQ0ihbK1OKEXJCY20c35/MrUAU6lnFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719480263; c=relaxed/simple;
	bh=gCflCRzXSfUQIvQpVpLFkOOyGHUZ6RiUxMhzPfRK6vQ=;
	h=To:Subject:From:Message-Id:Date; b=nX4OTuQScoR6Lws1jPaTAouFCG8OLKf0xsmCrtsKVkgcjqm2RgfNwOUfgeyQJ1ehpxfgHdOtXi8GPqxq3wnzlUPmXDgqaGyTRkdNWcau4XudvX+WyNG/llgCxbGcB/9N2q5Txf78daSkh20y8xwNZTdI2cFJ3Q2xbFBb7EnbsgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ng40Btjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ng40Btjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A6EC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719480262;
	bh=gCflCRzXSfUQIvQpVpLFkOOyGHUZ6RiUxMhzPfRK6vQ=;
	h=To:Subject:From:Date:From;
	b=Ng40BtjwtTk+/nw7k5Z+HUp/qnClo4/I/5evoFX01rJ84DIvTG57t5ofzY9rHSb0a
	 rYPzGftvxMwvBt9lWz67rI9eUZ3x/x7x9MnT1lRiW1SnIU4M0+OOgW1F3wuifj43hz
	 dzRAnQGXbfoeJPFcEY6vV+U36JHMOwQNygZmflPBfSDzxH8oH2fswqfwxmr4HG437R
	 EroKmvaCBgtKmwUIyz4EWoj9xvOwTGypRBQQ7neYrieyFtJTliNB0u0KS01M52tLKa
	 url2PLdpcz+tUb4XgkqODs1pX2UApAeZnTdJaUzMaA8HRnyQdW2t1Cd3WUenderF4q
	 BRJSTycUyw/vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3ABAC30653
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948026285.17974.15151832060184232886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252ce4c62ce9933c66e75ab408404e00c335536f648ac03c2d9d29e7c59c22a6
Date: Thu, 27 Jun 2024 09:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719480262
