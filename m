Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F882C1580
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761719994; cv=none; b=T0prnrE1P1tVcJ11sB7Wma/mHZW8798JcGBxIsPt5z6D8bW5a67JrVdfN2rjUXmuWlFlVnYWktNmwzSjFmqN0PvWUGZeCt1evzFoIdU55ITJIOIFp7YnHzdKW8OEA2C59tEni9F//vLV2W8mtVmqQnWCWz19EIGGxngYvbrqxuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761719994; c=relaxed/simple;
	bh=xTJkho9ODAm0rpxtdMiLMRJmgeIWfV51J1A6Tg6tXQA=;
	h=To:Subject:From:Message-Id:Date; b=AHdcJnPweUkDby9EnS0IH4/1GKrCjojZz9IiXRIC1201IWI80N6yobbkLdupdODS4DHeF3IjjbVCvk6WosMnCOEMRjoNtxShBzebUE6UsT00uU4Ga87wCfg26qdZkRX8kEXHr5V7rWBkKun74FICZJ3zXBS2IS0L5aqd74QcDC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQOIJF2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQOIJF2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05DFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761719993;
	bh=xTJkho9ODAm0rpxtdMiLMRJmgeIWfV51J1A6Tg6tXQA=;
	h=To:Subject:From:Date:From;
	b=RQOIJF2NU/ypmYLuuE9Kl3c5Qa1/61X8Ce6z6v9nH/4fzMvYhuiCGZMqOVkTzx0w3
	 /gCyJRvIGc+mrbC7D+h94r4A1tg0Q7KMqPpD/5h+emcr2P+EKcxXWuFZv7Rl/a+ZP2
	 6ySS/6lc56k991ED8azmwC0WGGZsnyvEPlJkqY/xfkVxjLOgDGIyVLg3ip6M59qLuF
	 ZtcFRspcsaBnXtGqtqGCkDXFLclQEbcxZwDq6rP3rDVpdO58EuMCG76IVwWxq2TiZX
	 OuQLJMExJA5CoApYRikdn3MPL44ThLhVZ+y3uZRH5naWOOI/AJJW1xrW0OnII8SRuy
	 EcXfIo36Rd/ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B79CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171999358.340.8207042377933033467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c1c6f9a55ab313d6bff8910a0989403b44f63d9574c6a019ef732e3a0ef2cb
Date: Wed, 29 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761719993
