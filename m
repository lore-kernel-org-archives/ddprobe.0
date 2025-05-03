Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312E8266584
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746288594; cv=none; b=DRxRplcNug0UC93Ze1FcAPn7qkVcL/O8lK0PYoguJ11EVUczwIwjVzI9682fb1ckZPnLejkJenIUNG/uO0bZiBAVUe6Wr3CTL0WKNNfj/R6H7DQhBFye/aHMMh9JIbBfdaaEqV2hL0MCAZXjEvWz3yJyTdM8qyjnqp1fgFXEFws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746288594; c=relaxed/simple;
	bh=UneZiz16VFFx5RB3W2oO/ZxUY2VQPyxyRZZGMjVM1I8=;
	h=To:Subject:From:Message-Id:Date; b=H+LzYbBLcQUT+e7lTKUg0MO2G/mSNpv58ADUK+kVhTl54wWVUSmTo4WzwPAMlBbA9Yk13AkVbjEn0vnHJpC8LYNC/AtByixNDaOfPcpmRSOlXayWAYMmJYtfcsqPVo1kPWGOWBeooECKQ7eBZfL1wUAZUd7xPCYMn4wAT6N7ylg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAC3mHsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAC3mHsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81C6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746288593;
	bh=UneZiz16VFFx5RB3W2oO/ZxUY2VQPyxyRZZGMjVM1I8=;
	h=To:Subject:From:Date:From;
	b=rAC3mHskyzb7nG4AfEqBL6kaJEyPjUb6hRnrarurO56axGYWgrJxtIwsXUVxhzG0L
	 RSicbhskS572fk5LQbYdsve6yCQBF49WEHZworJlHHVJOTdiNw+03Uwsee5m2EF8DK
	 S1yrqIYaD5hm5SgmOAgB61yNqkY/wtW8P8+0mE1z8lE66w4tG+Crc1HviDARVd5BXn
	 Ajod/E4hjURRMIYbVqbrNN81AbOdkvKUQ8HIeJl9qkfYgATxIqB8I1jiIvydCZ9jeK
	 bFPum6tjtchRE+ket3SjYTRVH4jqJOlzYGl71nVN6LMTMpR5l/nv8Ex91JAoznhgrN
	 lD3scj4ZCTjWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914AFC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628859357.14064.14416451650174908448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 571f7093a53a6b3651732de576ae13f1fc0bb8c3d0a900e38a09582eac6f0120
Date: Sat, 03 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746288593
