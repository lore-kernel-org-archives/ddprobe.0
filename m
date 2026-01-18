Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A79A13B584
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768697634; cv=none; b=TcKxXaJHS8Q55axDMbMbd96KvQmJyf+hu4VxFoqQTBvDmhdE+Yj47Dhg4Wd8f/hhD7uaPyuXYJ8nUbQ3Pe1jmtx8zzEWIjizA+XfZRbSoxgAj//Sx4r0vu5d93pfSdGeHc5+dHyBt+C5f1aqzIfVk1tZiaGZYI0uLXC8RJyPbvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768697634; c=relaxed/simple;
	bh=fLk+i+C9/IStf8O9QX5bvP7EesOgEOO8Rcwombb+CDU=;
	h=To:Subject:From:Message-Id:Date; b=MAUeGUzvolyeUm+wEaQ/fczEyErXw6jtE7ZRt1fsd3REzxLw94rtGbzsfzs0cXuJugBjA6e12Fp0EgsIT97aifLAKUfnqcPFenxYucbhyaTfBlNh8vefdbIzpulEUEUUE0YfUlSYJfZdCybHEY5BlCITRhOnCeMqVkGrLy3UTqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwmWZGfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwmWZGfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38F1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768697633;
	bh=fLk+i+C9/IStf8O9QX5bvP7EesOgEOO8Rcwombb+CDU=;
	h=To:Subject:From:Date:From;
	b=KwmWZGfKowoohI766O5V20nmIIHDEEkpjCFPi5HKnAgtrpVf8kCNaCtRkbhWpv9wQ
	 2bKYnMFZ+DXVbG3f9XX7YInBZASgFaNBvrGVUh8ki9gyKGsPTZF59VQLTC/JP0q4nX
	 MUwtHVNbHvOr9G2cEPJKAOPyAWAScYDBAAWFp73ufVvqH0NbFyksqdc4Mic+vsqPAS
	 Jj8FASgYeUr2l03p539Yxe/GzJcaDkITRvDYql/fIIar7JRlvJS+Pfsc6TYdGzb7xr
	 PSaXoR+ZcLjnqJnzU3dCYg/6PWD9up8zP+TnmXswYt41kHckzP9jO8Gw1vYjOGZKpZ
	 J2YLu5tX4hN3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92550CA5FEB
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869763357.27083.4953141955485103143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f4f39adc0c62138d8982d8f975ccbc91480e5b7ed1509e21a18ddb402631256
Date: Sun, 18 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768697633
