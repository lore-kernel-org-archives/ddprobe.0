Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9261130AFC
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711352896; cv=none; b=upC99tu2vM+WWcuyBJDsITx4Vj6lCqYF+AokyHB7y6E8kEpWBxUgb1vnc5mOjyeBGAXfU6x4wkhdlGT8x86d18YBIwGAEuWt2FtgsFCe8/o3sHT3wttHOa82ZybkhjWRpYgKTA5W/glyGpK6J5qMIcIf689NAWUTEijhI0BG714=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711352896; c=relaxed/simple;
	bh=iLP/QRv10TwQd0I4Pu04u0K9SrsCjqQdsE3Z2iD5O40=;
	h=To:Subject:From:Message-Id:Date; b=nSH3gqZqfyQNRn5qubu+radzRfXLoHi6Z/kon5H427FAlq1wATTNyazy69elY5FJM6QvNR7YPplt3B7ojqnbAjZfNpsWDucS6Xtm/0g5L86G5GkCiGs0BPXhJfSL0Qs7pQ3H2D2ZJuvd1hacQreS1vZfNYvSP9tL2lv8+U8YpXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1Ugpu9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1Ugpu9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72CFFC433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711352896;
	bh=iLP/QRv10TwQd0I4Pu04u0K9SrsCjqQdsE3Z2iD5O40=;
	h=To:Subject:From:Date:From;
	b=d1Ugpu9zv7gag+jqeF2Gixdqhet6TWWqU0ve+3SdT7NdbzBmVHFB2uFzKYtfdQ8PQ
	 C3nrD0kRlTluZi9Lj8yJRFc6JsX6CcHy3NVZTBu+2lkL7buU2MQOm7jH+Y5oRmEAcI
	 VX74H+ldFIf5/buZjJUSqVt2Qg7xupf81t4HfyoEoOP13sInmlloFmlT0uh/0Qr1uV
	 PohAJOaS6JJCU6fL5LaozlURcN3TMm1JU12z7iupJZh/in5qpCmi5wsEtbdHYezYj2
	 jG3oHiCXJ0lds4jre9dFdEva8uJ2AI8OejNEcM1qtm3X6eOlsjy90uOrVgbx6lY+75
	 DBPeMPGquPLMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E9CC54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171135289639.11021.8650752042457881217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc039cd4fb0a9320a98f13798f64a5d64070e7007e7a84a346d6a52236767a4
Date: Mon, 25 Mar 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711352896
