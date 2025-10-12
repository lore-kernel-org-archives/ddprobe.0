Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAC3A31
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760277593; cv=none; b=TqU3gQOxFof4Lds9Q/ZLXEYYKFUWa/R6UiR7mvWM4EdKOCg9fg7jUQezTRxvIai1Ge510cC+U4Tuaj76jDC7lddAXnAsZBjc8nZBsmqR/hfqQiQL5yehHZt+MyfiWxoWqf7akqtJozJ/sbWaEWZTw1UQr+jm592wUQiSTOJeNUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760277593; c=relaxed/simple;
	bh=FOtHEsOLhg406R9veEt3HCi7TFAxKBlOxl2IRLCWjUc=;
	h=To:Subject:From:Message-Id:Date; b=m1nG3rcSeUMEo3ySrvG9kF6SYCtk5Pvl8P9YoMSif7fraTp49nIVQG4j9SpdzLvSpKUNWZOo24zk6nr8X9jx7ANOxPzOVxgyjn/J0V2615Fx0MVWfZ1ppCMRVdGMMuxbrRQpJGG1CeGECCUDzl4/ZQfcelidF1YPTwk2CjNwyqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ue4Zy8OI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ue4Zy8OI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2494C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760277593;
	bh=FOtHEsOLhg406R9veEt3HCi7TFAxKBlOxl2IRLCWjUc=;
	h=To:Subject:From:Date:From;
	b=Ue4Zy8OI+bQiqoYRblo3v+SHMQhQskzdef0x3Z9FQz6shiuWaQ62wLcRkm4AHg7p8
	 5KD6ZuQBw2nBNcpFYWdfN+hAGk1jWXnRf94jsCwRxFkLDmICsuNOfDbSNxHEOtiWU5
	 aBUZfWV+F2r0x+rA5tXdqwpJz/KqLJwSg9FHSOSEhbH3nOMSRS1jq3f+zgrTSu4Y35
	 QnrJCmmWZhrUUD57Gbb0HA9v8Z/ZiRanczNqp0nZhgX9joBim0jk5THjRpLna6FnJG
	 ofZreC1R/T+izkCFezg+L0BtFuNIV59ilLj3qc3luxoSC+Lru0ebPoruCTHgPnXlRU
	 b3FqscrdGEX8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E9CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027759357.24080.5255161118230656844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52565898db05c2b965b008f7a3b0124eedb8b6e4b3900748d989626f9779898f
Date: Sun, 12 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760277593
