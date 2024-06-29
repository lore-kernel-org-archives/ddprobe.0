Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BA942076
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719657263; cv=none; b=ZMnAV8WebOvn6BnaS6iIyfIupmqZk4XSD35EXEQCAFErHbulsxmiH7kxGFHZKd9sRTeseN94N415V6B9a0smPUai5hNjy7R31qT2vIXJ/mdmzqyKXzE/Tw/91qOwrGPnIhV6G5MwLTydQyifaordRSElEDcGglO0oSjCDQQj9kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719657263; c=relaxed/simple;
	bh=IblhJz8IYqdKGiyxwu6HI3nqwapdipZxv8fg0oho/8A=;
	h=To:Subject:From:Message-Id:Date; b=na6avG8GHLXlnyetS7KlPc/nBTwuDHh1aS1+xBcsM0Q7ghTqkUuHv/gkD4Q6j/cdZmn3g7nMk8MiGl62KqlmqxtAv3XuVVEWvOnOrRrf6psHgFrsF18Ow0eQfnZT9xK9QnyMfpe4Ue037ZJbjfnLX0RwK5mFA5p7zVItwZvApo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg1PurKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jg1PurKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA4BC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719657262;
	bh=IblhJz8IYqdKGiyxwu6HI3nqwapdipZxv8fg0oho/8A=;
	h=To:Subject:From:Date:From;
	b=jg1PurKR9BqL8Px1/jBnOSzT7Adc073sZevraMBFYA0/oVWkaU/5MNupGcQSatVig
	 e6KAzDCF4V1WePA8pFVz1h4JNynsiti28C93Uz8jay6jfe7g929CAUh6e3BavQNtAG
	 PFCOYJHR0uzH0gmeFn8XVtnIihzMwR0HDyqrNEUmfwMHfamYxYzESm78nX3J7YFMYT
	 o+qVroHBLsVc3R9aeEPmj4pe5RTym85291rdJFD6i8o4737JKoBViE5VcY53I7cBqj
	 WsMibNC96gJ/74FmnhapIFERs8DZkm/X7oBUfcj+cy4vQCk9uGdOzZUpRLfSJGZXKN
	 NuV0w/zm5qHxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5693C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965726278.20467.11228008139693027867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bcd6847599cb88cfb7648a708a245c78be6fe46d96c3a722a2aee7f5174cef0
Date: Sat, 29 Jun 2024 10:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719657262
