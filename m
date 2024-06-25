Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2390E748F
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719291803; cv=none; b=igReJAyC3tmpeOt7wsu9AOWrENbWt+xqj9Crkh42EoCROHicwnV5PyA39u4gEDD1wJS2ZkC3iFMnv4UXfb7+JbteQl9qtShu9ysWKmljxx8/YeHq6cpsIKgQWQ6zVGTPO8Zg8ZqYzUkIgaCTg5yRjDLVfCPI1v6exSCDYAB4Xak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719291803; c=relaxed/simple;
	bh=zF5n+HYWwGTvhOpyZsPTOkql6+BcA5qXKPPKmuTGlqM=;
	h=To:Subject:From:Message-Id:Date; b=PDhTxHNXIc9QcP26tned54n97oFDDhKIQQL5yypmIZsQq94lIaN6B6x1M8m31JKT6VoeyCqsDs7yMuB++j+D3QTVsxOfcBrVDtA96gPHYoxsmIQp4Md4V4HJ98aDBz4fDd2p5pQWMJ3lSJdjf9LApMeCzipuc5RlZW+wLzYr2As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvDy5N0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvDy5N0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C25C32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719291802;
	bh=zF5n+HYWwGTvhOpyZsPTOkql6+BcA5qXKPPKmuTGlqM=;
	h=To:Subject:From:Date:From;
	b=YvDy5N0Mu6uDhKM5Hp6jfE7lwYEqgctyd/Ldp+BsrLkWuiBUQljJfFz+unRLeORUw
	 Tkita+Fucs5W5warB7ELAhuZL4LC6AU26kcxPQLjtMSm6vCFPfTjqhD1wwchJQYWvS
	 /EU2xNlzXrvRm6xIxAbUakPhNMFXQ9XrDVu+7JEhVMKkkauYNWI5sA4JaD5JN34SFW
	 01ewqyMQDBcVe8GpQcG0mHHEndbWcfAzbeoLa3FjLdnEq2VA+wych0xe49unsSL4Hx
	 uEQu+u9/AtVVBpqnSGITyErSfYCTDI+DfdxkcXIoVnliBLhNHy8Bec2+zFlV4g8ZwK
	 JtalSsppfQyNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF369C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171929180279.11297.14318200727755500395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc254634defa683cc31b5bfc5bccfa0941975d6e6b4cc8535cb6a92771fc4b2a
Date: Tue, 25 Jun 2024 05:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719291802
