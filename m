Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274B227E7EB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764571974; cv=none; b=MVZDivC20R367vzL4xIFejbI6Rl8QOYTjGUerbzu5iJX28oyc13ixB5CfJSuMu7X666ZFyTq5AO6EAdSKksFUC3v9tJBHLjycTpi92ZDBWbeydLV+dEtnAEWVOFu5Ugby6RnrCkPLBhDr6LKoBPDSajRYKKRsuuJigqCoTZ+6cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764571974; c=relaxed/simple;
	bh=r5qLPwCEbKLJsQwG724a1569dW0nYYMt/B+npQzGGUA=;
	h=To:Subject:From:Message-Id:Date; b=e/ROJfHv1G19tPcg8WdYOybDJ+f5XiT4wWOAJtIEMDkTx0n34g60RuiO6OzvBkY+xghA3emGKXzKnNdM25np7vJLpUXrkLNiq9huQTl/7pdw+TQekYUOL6yOqiV+aFW432rff7jf6nG3nF77ATpXixVkE53bwtoE/iRZTSKJccs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4TklR7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4TklR7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE46EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764571973;
	bh=r5qLPwCEbKLJsQwG724a1569dW0nYYMt/B+npQzGGUA=;
	h=To:Subject:From:Date:From;
	b=S4TklR7/BFxC0RdG8RDCWF7L3viyvOSDo33TWLoGaaiw0cR7DZtKD8Xl7e6fORkoX
	 NuPi97Gz9QDwjQT//SF9a4TZHJqYkl9bQVXReoxJJarod8ToOpSGnr+j5zPWWhkpAO
	 IV/cqoZiL4xmuet0Gp3AcG/GZSd1+pgkwBesvfUPTUxw65wqn75q8OyD7BdORXwCBQ
	 J/vvf4mQtsm1MKBWrVMtKIjdlo+D2CWRk/3eW6L3yUkt/uJon1MhXSnWQQPgbYJpAA
	 8uRBdPtV3UdBasUphQSH2xFLRWtVvsXGkTA0n6qzLcwozqYRSTeQSXxmHw2fImGxjC
	 Qr1nQ9um3/9TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA3AD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457197360.19218.12022766097830397322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2641c425e3c2c25d8bf64f27f2f1564d4256c6cfc0a7439764068b3bf7d3255
Date: Mon, 01 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764571973
