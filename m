Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA1436C0C3
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779381754; cv=none; b=UNPknxjA2iuuLf0Lo/8Pf8jtvVwTZ4Q2j9o25vRLKY34ocSKb5PDQ5Qd4onQbn9ktKXkM6xKX7b5g2Du2iBiEbe9TpFd44ObeyMfSBohI3LLzrs1edpdmVhJQlJar62qNS+Z5/4KBn5YK57yPcrg8Kt5+HTogwLYodQezfX7h1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779381754; c=relaxed/simple;
	bh=TG6XUZkLyMfAnJK2Ov8CoD4bFB2qdWUIFK1Vc9/x6qM=;
	h=To:Subject:From:Message-Id:Date; b=AfUntg4UzUIPcTKrgRz9R7opifBlpbPLsF6DcTevY+xXlvPAinrILO38lk1VeFxeSPG5YJ2OwINTDJG+6CLNGinop+LZONZ/SA4LltvLXRT06bbX464m8DR53NUR3n3OFWPneo4Tw9o1/yF1zxn3/xBh2GE3/AeTCr7ye+9MXNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWlQAS+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWlQAS+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE964C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779381753;
	bh=TG6XUZkLyMfAnJK2Ov8CoD4bFB2qdWUIFK1Vc9/x6qM=;
	h=To:Subject:From:Date:From;
	b=XWlQAS+hY9iqA4Bu+we8J8fc+UHnkCtSOlLR8dHihenX6+1NHFDJ73oi2hjP+5ZHU
	 zZprlbRXfHhJvl8dPWmcHcGeZRGXqnqliQ0XxMnnSlzOO/NCIruAPIqaAGT3D3z/vj
	 QCKTsaXpQpxFD7nzzUcfYoXp/TmU7OJBONIQiNDqLcvr7crdjt0XKsbmxLfXl+4mXH
	 I8myY+n2xwhOpuvbGpOn+sOTKTVsY9qZEKWXzysVvtxNCuscDmFvhqdb17sv9dyLbk
	 /yVSpqIPtMRAmqC1+8KoCVRc3F/4diOuLSxNj1ExutY2fyBvylc0nkaVo+5ZYp1jZg
	 jBuAy0nQifHoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0D0CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938175368.6296.16828196829662683965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a573313f6c87431d9d5829c6188f4feb4df627e13ec35e1915fbf4aa9c205f2
Date: Thu, 21 May 2026 16:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779381753
