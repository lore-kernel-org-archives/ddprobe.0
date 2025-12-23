Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A3F3612D9
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766485434; cv=none; b=WAmfSY+axsM3nI+z4zy5pKZrJGxWAIhDtM7SaRFyyFFhTF0UmkCwJuBmxgHXuad+IZrZCEeAAshH7VpqUtQ66aWRp9f70HgXW+WXyaMz6vYM9sBY2G3Cc6cgtCbS4RR6k54MmB9pXhAcFkpLsw7iI+KuDfEP31+8IpJCXuCFSzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766485434; c=relaxed/simple;
	bh=jVx/FVop5pIk/+nJUIqgZZmRBRgTRg5wU/QByL0Vwb4=;
	h=To:Subject:From:Message-Id:Date; b=URqYF6uVY9SD11Z9uvQrx0aWO/gfd9KsjV+RJK9tNC//QkdfR1aXSJ1RxXgoIoq/HGVPQqJElIgK8bd3ZFaTvv3ASiEhjgZw8xC3+6lIxrJBVb/R2BJKR2+0OWcE9itVElK6/HS9ycKLeax5QQBuH8VUDpqu9S2nUJ+dFZgd6Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uwjop6xW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uwjop6xW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66C6C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766485433;
	bh=jVx/FVop5pIk/+nJUIqgZZmRBRgTRg5wU/QByL0Vwb4=;
	h=To:Subject:From:Date:From;
	b=Uwjop6xW37OJbrIoI1Zhoe4O2TlagPToAsMSSLSccHJvha4UPMB+8U1IlN5xiOzhj
	 wtirJliqpYTelUPjHU4k/CwRe5QeZyrIHOwYlWmsea4rU7qpD1dsrlFMwS/rmvmqms
	 KKlWn6WprslEmJYiwe9ATyg3WQ1dBKNpu+TUC7pN/BpgNg3yOd4VIJIjT9aEiL0Qlm
	 4KhMmz/RD6QTgfAq4+Sw4WOtQ0RWbuUteOugXMkFwRiyRXEfl85JbvHWNlvektnCui
	 OMDL4NKK9amT5DqEjLnvZg9xXYXODQLIx1O5XQbDZjmEaeoZlXFhUf2aLiTuoheyB5
	 GStTFsMFpi7BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949CFE6F082
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648543359.24804.9608918049812487637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a054f4228e90a8ea89bda5d3c991e5bf1f767fb11a108d560852e100c37575
Date: Tue, 23 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766485433
