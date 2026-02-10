Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3170D2AD0C
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770703434; cv=none; b=UM2cj4MXu32SdrX8SYROp/AmIZvBIggJVciYRd7xyOW0BFcOn2BjH6HqsRJTIglk0oCvwkxwOmUYlMUjGwx0JGO6bKmDonR7117p5UJz4jJ/IPvJ4m3UeTJsbR5Z2zYD+vgeEj2sUPI2nyeMPzj8U52H7NlDsVL+LonYuTq8h5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770703434; c=relaxed/simple;
	bh=ouciswyLADNN0l9BS2NQoo4oDkqLEI+EnTNzGMspfH0=;
	h=To:Subject:From:Message-Id:Date; b=hzYD9gD3LiVaD9gxKPJAn074XeBZj9OHPP89ZHrB21xT9MTHay6/9cNedNqwo5Vj+vvD0gs/dWoJVUf4N4h+YgA9jUaByTWVyWn36uThbtgIbok4nRL6/OYYWauGM3woEB3WTFxGlt+Z6wn2sU/ETOybOSH3SYP1ncFRRZkcGQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQbUpZT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQbUpZT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3015C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770703433;
	bh=ouciswyLADNN0l9BS2NQoo4oDkqLEI+EnTNzGMspfH0=;
	h=To:Subject:From:Date:From;
	b=MQbUpZT0+WvIgld2tVRplNq1AfBCwSdcB1FNgjnUcj/S/AODNDbt/us36TxjDhDuu
	 UtJWM/dKAyXk32jZPfaARVjAAf6A+UL/ygehWXwaVc6RSY/MrNFySrIaDNoyAQ5dLF
	 OBbM/oEWcO3FuotgvsNN96WGiyM5UMZR5LY6MGAPP85HEYcxcl5Rx6wpYvc1/0GjGq
	 p+w3KCkQNbua+ewDu5V81c87utWgEUeHvURmqWJLE4dC7Bt1YGzGaGC3COVPLGGvLU
	 GN5yXtyqIc7VkPnWgTX41DPADWDU5y7O+nTHej+e9xaULprvtmQAw9qt6DEMe3/+ju
	 fjjMNZXScqD1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0E4EA3F0D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070343365.4712.18432178931964802879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa7e31a3730d754c83272d1c81d6400675fc44ccb1acf35541f08a90fa5dcedc
Date: Tue, 10 Feb 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770703433
