Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEE4225417
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774055694; cv=none; b=mQyOUlIAORyZSCano7JEnQTy8EwNKl2n3EfhtJWnEiODEkze+Q8u5ORdYqyz8zeyv+1kcfalaMIJXToa6mzjz1nKWfGy7XQZ7EHhAy/0XirT+12FDhzYRKHKcEMA7Y2xhG7wlGgGFeJoKpdt/GP+y/Nmu22GVCpIO6Jbtf0fJGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774055694; c=relaxed/simple;
	bh=XybzYW4jA2EAeZMly8kmkLykSKU5sbYjlTL6LO9rty4=;
	h=To:Subject:From:Message-Id:Date; b=pG0bx079ggVPqabc0w+Ap5TftfX8H6CSYBIhQi8Y9pUfTnuAQM7r2EVX6OdCCULOLhyRm7dMzXbggM37iLxWt9nJ6Ifna9ouZX4xaLha/RDi4d8t+bM+kRN8kUsNs8JIkjjl9/bXn1gJcqOF3AfP8dxqhVTLNRQwd1nbcJHYDRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8+wEJMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8+wEJMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5164C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774055693;
	bh=XybzYW4jA2EAeZMly8kmkLykSKU5sbYjlTL6LO9rty4=;
	h=To:Subject:From:Date:From;
	b=k8+wEJMYv9VFCsNpN9qAuJCueSHZlVCsJVGC8+JEEa6X9Ex14L65YMltl4rsJYywU
	 sP7On8j1LBodx01KJKrdrMK0Ij311fYIs/S2+erOwW+wiM1LPKcjrDF59s+vhyvpG9
	 xjaaumf4u6VNg3Xz62xg63TZ61Lo57ZYmq1hBEcPcxRn6YEYuNcmYWM5fleh9sAqP/
	 F1zxvpw0QT7oRL7Z7FQnjWdCUUZl8AI6kaQW14Dv6MWH7yyvUP4nP+N0y/m7ZjJmhG
	 //Tn917M/GGHoCip2iOQ3KqkVaVJWpww5W/6WB1SuHs1h/4FGRWd7AIwQEGrV35LYv
	 KlxPxDg8HNxlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942141099B59
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405569357.10560.9186485587251894264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c550fe6172fc7f8e365e9b46e1f45f6b64ec5eec95252fe71937933340f876b
Date: Sat, 21 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774055693
