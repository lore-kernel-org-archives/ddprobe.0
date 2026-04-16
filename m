Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F9435F8D1
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776317854; cv=none; b=sHGJYyhyyTLAN94KX0kIoPoN9yJHZrLFDvzxclScp2e890ZqDZdzVjMckLvHtNqhU+11jwgftf+lVVUKxsS6F9LBBTQtwSo/Qwpo4/60qWcDpEwhij89WiZ7lOCFQnohYqPeYDI4fLJeqgAhs30DGDdLCK+/lU2P3uZCt4B8vMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776317854; c=relaxed/simple;
	bh=9SJ3bWarCF7Cy48gJsRBxKFS5I2BIgk1ETLj0pSQw3o=;
	h=To:Subject:From:Message-Id:Date; b=UP/2Ud5fCoOqRwnDSTlrNUfMHCFpaI8V7VYAkNqN1Xun6wYmaUoWP7doNTuOGELTjQAIMPTp+7eoSo40AQshWOfvdn6p6UBi7mtf13G9D/e96vCxwytDgILUWImbOjJXd8YoMtbTeB1ll99iYJxl76YQeQtTMhBVWZm1Z+TQRyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riDVqNNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riDVqNNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B60C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776317853;
	bh=9SJ3bWarCF7Cy48gJsRBxKFS5I2BIgk1ETLj0pSQw3o=;
	h=To:Subject:From:Date:From;
	b=riDVqNNp86tjjIIESgRGdbRuqhRiUzvhXCzc5gt3qwqKFWL9RSrfzkwBaWq1M8zb/
	 wNJB0+HMnp+JoGOrDX8iH1yigbSdGU3luTJqTlK5pUeUUu65OiKYrVAAtv9yJiixBS
	 9ICyAHyEO7d3XZKSqov4bz9FUDEq69bbFpqOK5Cdrp+4m7oEaLCiryxwqMD8CkvKPS
	 wWJljrqzhDThHxZz0W0cz/XMFrIJeMueT+5q8eU26TnvIKnylbTh5eZmQb08KwWUzP
	 joqEQj70bSsmD2pzCpU57iTlVCfzpiDwnXV2F3FspiIKQu8HSukJ1+seZdRa+RLbyc
	 YuHmtXFuYgR5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2056F433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631785371.27405.8008179363118186762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e6d7d8ae5ba0a1da07f86d64b836857a44a1e3b45f540751f770070ae762d6
Date: Thu, 16 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776317853
