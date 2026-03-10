Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59D73E314D
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773146694; cv=none; b=KqCIK+ZU4lMG33aWXHcsabhTiAxAJPI/DL4AuVEAedW3yeAzpi1E7aoVC9lSomeDNnWrLdL+R2J12lbC8p3svHfXXvRf9GQ8EVG/Hj1gOTfgOCEJaxk9cvO65kpHztEbgy8wXls13mh+f8D5FmjG+UpRFoVbYXQSyT61WvxasPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773146694; c=relaxed/simple;
	bh=UmTM8UyVhJYT4Dydd4TMmKl1YaJvKVL5wzLluPrd1w0=;
	h=To:Subject:From:Message-Id:Date; b=Opu01jLs/M1IbQ2Y3hsihI7nId4mxoWrhdZm/8dPfzLr0RX9Qx+Zi6tz0M4hvn9cQEtFYeiY30rmeM8UzJGUSInBqxRvL6j7FZeJFCKM5qtScu8g/TzSzOYG3+FKkH/Rb6EroT3Nsp3hH0eoeWf57M5JTljWrdaTlGn25NtBzX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQkophiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQkophiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F953C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773146693;
	bh=UmTM8UyVhJYT4Dydd4TMmKl1YaJvKVL5wzLluPrd1w0=;
	h=To:Subject:From:Date:From;
	b=QQkophiLN2yc2Tp2gMWKU0gI2xdxSIBS43BxNflIbtVsFIhWXbuTcRyICLUUxbyHg
	 Nwrku09HK+BFqk6MV3+sRfKW+fmAWrDIDCAUkA5pKPutfRmHK+50j/7skwWoE+SHpX
	 mUaDMcfA3CwOuC0vDu6kD7LjBLdP/1rpWMEKXfAQ93hbIbhr7etZdBDUaA/KhJI9b8
	 yxbB27TpyQ2Pe6VKG9DJaMVFclbevvGFRIXsNWir1h9e+reqoXIyCzDACg4F4ASz4x
	 uHrWlBOfaGmRKfBfqkH8pVsxYd1kGvQc1tMX2VWeKfW1abNUXv7yRgXiZ8FsOWdODz
	 ETOV9vlWJKvew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F96FD2D6C
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314669358.17453.435538652224278527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5e76d2f382e4a3a4ef870d3f6e54f2a1f930b7c50d0e1276a5990828f60848
Date: Tue, 10 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773146693
