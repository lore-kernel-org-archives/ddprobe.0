Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D1E23F417
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757615394; cv=none; b=raw4cIkcIBQwIovHvfRuDYtMDaClf8ygoZyayk+ATYj4CmgivDXlFOxUUS2nY+kBwwX1O4dP7n/ZdnGbJ6SgIgRqpGWdeSX5kcSplcZBOgOfsad6xC1XJhcEmNUNSrXZ2YyhRqq2TLlyZ+aTWBH3yy2YuDCfRMc/qTnR4x4iPgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757615394; c=relaxed/simple;
	bh=Blffbl7h1mkRg/yBlUNbvzSERSk+PUtUTlGSWp9DLr8=;
	h=To:Subject:From:Message-Id:Date; b=d99bUtMSuGgeoreoX6fGwDHwsuUMJbWmVcp/qRpbxH55joE1gGU2xqoAJeTu4DCtUfAP42DS/RTv4NSVlCqLx/z7PU6Em/OfGuvyAJ6+YLZvT+1SSWD0WdqdXD0FfyWN1vYaCGmKiLr8+U5BsU+hiU6RXUUss0U3zACxPnzJq8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7juQ50O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7juQ50O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D874C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757615393;
	bh=Blffbl7h1mkRg/yBlUNbvzSERSk+PUtUTlGSWp9DLr8=;
	h=To:Subject:From:Date:From;
	b=W7juQ50OhXqIzbuZQxXQRnkNGw8LZsd3SEl0caA7rtsShutm14xqfRF64ey6wNJ15
	 JfUpmQ9V+bFI9t+uMALN3npa0lLgwEg75gN1Rlzvd04S95WaNjJ9DXZbDV0NegP8/J
	 2fKx9SXy68dIOWdoyASvhDjLoCiP2cTjqnzYiNLD7CBxfsIQxLoOMzvQv2t4Lka+7G
	 zd56aLOzRT19IzQW9JJv2CWhLd14UvdyTD666IorHIHcdGC9/traCrynjmJz1Ii6Jv
	 4mhfGsQzQAUr2yZe2Ot0GjfJ4+4BBAVlVus4GhRNWT/GBvWsCbxhVT7+jekfglfJM6
	 wOcrzDZzMEm/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F70ECAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761539357.30058.8043064310624129608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b32d620a4e02f6b55a90eaf391c2616dfd413c0bdb28a5354552f52eebf4cc
Date: Thu, 11 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757615393
