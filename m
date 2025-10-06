Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A078227BA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759760394; cv=none; b=OLELCOK55danF4knHnOETvPpLRt+6l5vQxFuDgpR/hKgKJyXBZu9SIeqQ0h0aA6ivzMouDNocUhYginTz2WggYqfcl5OMZ6BxjRRv8e9rXqtKE/Xu6hsPYecoOvsimVhvzosQcCwVPo9V6odTXceaPCBjaxg2NlCwzBCt/r0tM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759760394; c=relaxed/simple;
	bh=VujcgFGVCLd9vjEto+YwAy+3NXOIqyq25+JvaIsRQJ0=;
	h=To:Subject:From:Message-Id:Date; b=Jmc4ZCmD2u6Z5SKaKOpvp7FA9o5OLEokEVuLpTbPEScdM0WbnlyGtOVnEJPYvqYZHU+LgQf8xXFKYvmY19Lzcnf4p0zMlbskzqRI/YerQSBUqyoP/0xZjb0aTRLrrL+fsUPSPDUPT95oOVuDH8fi1zqIZt6C6vuKfVPaII19en4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlVKoCIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlVKoCIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F075C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759760393;
	bh=VujcgFGVCLd9vjEto+YwAy+3NXOIqyq25+JvaIsRQJ0=;
	h=To:Subject:From:Date:From;
	b=LlVKoCILuOTxzCYo7bhV1ZFJZxEfAM0PRGUGWteSC/b9UXWQPwEKPV7t11lt8kBWP
	 gAWAwdHtLekLHmrFq9jONin9unilXj0EY/ubg8oMBS9wEKM+DVHwHJ5I27FE4ocIfv
	 8tsJLoaKA46ZEqZelcIcUjhqqhxh93cf96X2yzF5ZlsuSVw7rFfjDhWMTQyZWjirjf
	 2sNIz2cRLWlUcDA6MUbOsgaWP7yQb1pW2cVWV/mDWG+/JgivhwEnzaqDt6vrnqdf9g
	 1c7TBKIzScguVLFThqhDi5gzd2uVDzaGd5t4yYuI/oNq4Zw7+n5ulGDHTo0h/X64qi
	 Rrn2EQ5wfJISQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB3ECCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976039357.30458.16297236171466915392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f28d17393645ac02c646ed9177b2d98ae4cf1edb6e44457b3ab1d44fc24f12
Date: Mon, 06 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759760393
