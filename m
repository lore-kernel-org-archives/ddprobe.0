Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2BC1C876F
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730478954; cv=none; b=pEhAxjk8ttSlfFFVMDlpPvJb+82YDo5Pt6wXaEAFmAxBot9tqz867BAlhuU0mCzkxbzwO32bIrNNaTWB3MjOZk/Y0EyjkmPYdTHv+JfUvrok52t33bY1kWe6ZIrU3aDODy24vruGooVwFR+1BuEbMU/3ILQTTYlI2cX0XMnOkL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730478954; c=relaxed/simple;
	bh=qjAC2W380FjZgTUTxuukAFXYR2Q6aXqlgQgnNGEhEvI=;
	h=To:Subject:From:Message-Id:Date; b=XF9CBt2ZP9+8IxVABmy7qUc7XJG10BDQM5FcS+9aond3+DFXaJ2qwUWG7nTqutxcAyHLlCT4qFT68f9exhLaLLRtx2YoGWoKtSmqMY1nttv/eA8Z4ZYyy6SCH3j2ODs1hC9cT08qUZFUt+p2IEaU3pGKUGNG081dyugu7/h5BZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcAAX2Ha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcAAX2Ha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BB9C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730478953;
	bh=qjAC2W380FjZgTUTxuukAFXYR2Q6aXqlgQgnNGEhEvI=;
	h=To:Subject:From:Date:From;
	b=WcAAX2HaYovaW4TdiZHNlv5GGiEd2KGJ/DWbFzIFfHKEuljrWSEXZQxGVaF0yMJEe
	 qklzN/hEYNrlHgwXZR2xcas6fD00Am2VIp9x0a5gMJL0IN0uxw0LpzDLJqBCHHV50I
	 xSRN9JWH8vQao96F1wLYnuBHOMU5Z1T1z5cbvIp1ISvx+wgK2PAdPbytqEYqm6VVyQ
	 LF/HPm4BvAjetu9BiAPJkNqw4l8HJZ8hm8nSlYSmf74dwRA37O2qU+w2FwoIyAMlz0
	 RyQt0cU94PzoZ9K+/w0Y8Cpr718H2lKxDqkVYO6eXbbReWpmwJybeMNcaxXcguXs0o
	 srgEqAvB/1org==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A8BE6F06E
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173047895367.3160.5905160558295680534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd9d9c00adc2f2a813e5a49d1cf2e270291a260002f8facc488a9f365066dd5
Date: Fri, 01 Nov 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730478953
