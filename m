Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B3A27FB0E
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762187394; cv=none; b=ouPUxLswHP4wslSRgnVw4W0W1U5A/oFC5bazfuw7CwGPNWy73ID9fSN/dw2bIka2lEve8WJKCwgqD+KlG978nCia1BLOs2JdF6SeLL0VhM3vJbLdfX0+p2kuRWpEyfViCmTEuUEiQ4s/ozhIP+8cQXFuGu63Z0p9QMAX3/sG+qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762187394; c=relaxed/simple;
	bh=XPb+vCKq3Af1zm3ENsdRg4lZT7/r4lmGPXbBHSfvIJY=;
	h=To:Subject:From:Message-Id:Date; b=nJXxhF2DF8c8fe7zQVUTd/4kW3LkCI2Ifvp5QcbU9CDU81K/8YLHq+tZf80ymWHBNHqcEq3pThyxI5slmaiqJx6nb3EYAAmp7vYsEUFDyzOOrBzBZTQCmhpaU9rie26HcBenseG+dhtFcmJ657B1DdytU62TWB0ivxYOp8vWci8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thZd98Y/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thZd98Y/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A646CC4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762187393;
	bh=XPb+vCKq3Af1zm3ENsdRg4lZT7/r4lmGPXbBHSfvIJY=;
	h=To:Subject:From:Date:From;
	b=thZd98Y/QVxqdWKOQR7W36T0YQSeIHjaI/y8YT9l8KqjkJqOX6Xo7MX0tW/e3P99M
	 yrUzXmZzuhgr2C0vBxUV7dV83lan0XGmiwkKUim93GjO6Uv1JaPiB+3S+Nat8CKy5/
	 WNHXwR20XmTWXT1ItB4ji7zvhGFfPug/p8t4X1OFCfgyaSop8PZlGXP92J77RK7GiV
	 W7r4tpQkMEGlzUAVwKpMOvUeUWfZ0Bse9Vr+4OK7pp6BHWyFwxDi+1SEJy8Wj8AoZ/
	 KaE6IzQrKU0+dJS767kLkuFk8WQZawY+hVfVvE3ya2vay7xENSOThkmciBOKaet9BD
	 Uc00YACH0HTAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA1CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218739360.24938.5831738779260400947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da29137ae34a9be15eb8a73ab3c6c6b74cdb205cf2ba908628338b0edc1fd189
Date: Mon, 03 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762187393
