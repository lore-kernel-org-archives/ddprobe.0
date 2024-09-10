Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1F1172BAE
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725962153; cv=none; b=rTJ9kePv5bS+CqwM3bVEDnU/N1fN9TYe0uZOtYyvwt27EeYsAn98CU8VReeUvnTugln05BePp4WC+vwzjRcxOnU5795yZ78dtHpHvoML5xgSj+Dh2u9Scqw9vMqq0f7Uq/JxyGMQzmBgZgWfUjsQyEytfNpQ3NsVQPKsrNDY/qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725962153; c=relaxed/simple;
	bh=qQGD2OxymfKQMRxGzEvj9W7EdHCPz+ENeKwRR3RrtbI=;
	h=To:Subject:From:Message-Id:Date; b=deein3m+h/X5QcwWvJxpAg3Bv7cqYbgeOKd7Vp/zO/T3Sqo/seQSx4P6yYPk/IINfzOs+GB14UBA3MAFn0EpYbP+VSEkixq+YXBpPW9+65b4i4hlEdBbysOCjlouMq3emkPw8MVDrd19Q0q4/KzAe6pfnfIG/A7oymCsaP3rBUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f75Dm8ag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f75Dm8ag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8A2C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725962153;
	bh=qQGD2OxymfKQMRxGzEvj9W7EdHCPz+ENeKwRR3RrtbI=;
	h=To:Subject:From:Date:From;
	b=f75Dm8agg9oV1+/2b0h4/kbSB0BWMgw2jcsbExxqRE4ek0gIZgr3uEP9rn45FsxZv
	 Tp+aKr0OiFh9ZLY84TOpIrIK5IHQ2aOn4kxleEHWLNtoSBID6t8XlfgcU5BjDBA2Qt
	 06qqYj8mu3r9Ogqr6lG8SyXNyvy35Ds43p3josTpQpIOgIMM6cKNuf4qfBADNFFHyP
	 PEI39hsFWNpTkrv39r0rtr1VioU5gORtXCjlPexQtxBTHxW967tQgBpE2jWneHNP/i
	 6eR6YEWCfqHfgYcmPZUikNPah4NoVGBsvAxMLvQ3K6yhS6OglDNt58E03PDbRC714F
	 nu9tzhHeKf1TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E073ECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172596215363.32057.17446438495425118440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ec00df3ae4b127aa03e2a18789725e1affe7b5000a1deed0f58bc65f8d8ecf
Date: Tue, 10 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725962153
