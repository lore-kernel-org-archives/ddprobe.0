Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3543C26
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748218194; cv=none; b=BI0FG4fCC/enywd9NiZoX87Dt4BA2tTxdWrmxYaC5/3V8aMfUmtrzTPzvBlzLZYdJhnwId4teO4XR8HrFux245KDQfmxKHolRFPguvTWcR2G8Z+fADKsacPNDyeEr5W+EnQv8HSmu8ZRzNMOAuyAXcd9MqpMibSVoebf5OL40zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748218194; c=relaxed/simple;
	bh=TaU9UDS7IpgU88gGRtV4C8FrbIbQAX5mgso6lP4Clp0=;
	h=To:Subject:From:Message-Id:Date; b=CF2gbNlULJ6pKqYbavwdmsQRccr3Q4Mazhvb6ar6NXSfRHx2dNjwJeB3yM5xq6/FPpM0/b38m1N95SbrhDxBrTqXAV6HH2oK6zgdqOheasFhLBRZDOeXeKa/lfOpT7grmfxl7DztHIn8iexU8XsYYjv3IEAALNiHmjmOt5N/Oas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFMwDZuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFMwDZuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC085C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748218193;
	bh=TaU9UDS7IpgU88gGRtV4C8FrbIbQAX5mgso6lP4Clp0=;
	h=To:Subject:From:Date:From;
	b=kFMwDZuEEWGgarS3/QANNxtJaee80ZtCP6WPnz6QVFtgPulYBTOwuyrlhdipfgaOe
	 j3Syz7OC6mvwCT4EtObJAcK9tfuojIvRgcmYkWYk6qkdmk+tAy+Za4c6dkQyjfl7IE
	 p+mcxkfAl2Ob1OzmqTQRgnO46MnZhaDaLG+bEBA+CFTXimlTjxsH56MZcX77CcKcm0
	 kTg3FjI9iVrz+wJl7Panff2pqr0B8xQ++kvIGI3L1pceApp6Lu+3z4VIwx+tZOXjCK
	 FtlsOEM3vwZQObFO86YxvjRhNo8ymRXxOg9wPVYDsD9BNQF5KfNaHN74YvzwI5XFxK
	 YqCLB2ZpBuQtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995EEC54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821819358.14627.16612968410959472683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c308aae661bd667d2dd3799955a986ccca2d9314d43571533d90c8624b1fdf05
Date: Mon, 26 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748218193
