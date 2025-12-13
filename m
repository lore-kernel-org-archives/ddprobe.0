Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC31228CBC
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765617174; cv=none; b=Bx9+3FBe/f/efnFtcyswWDxQe1HmOHzYoAV6OfqCBof83HGIj+A36UnwJYD5ASdD9Oj2D5QHd8ijMyELbo3MpN0oYcF/rbRUB/ED6c+hMhu2fPS+1sbMdDG7lcJwn7vh4BPKF14cz/Kn/yH01bk5m6NQjVTImXwyD7Q4N8T+JDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765617174; c=relaxed/simple;
	bh=pKIbHUcsZQEUZMsKl+TVaOozMObMS8fNhcKPjoBFSUc=;
	h=To:Subject:From:Message-Id:Date; b=AqcrFzTWZnUtXqRwOqY4qyXCc163UTroYaPjtZABTNBLzClW6mzDeaf0je1LLiPjTYN8TcTv37uramniFIgj2Xbz9xTp93aID6C1tCyUuJX02CyPjwTkrqySrayMAljZmPSJc4X5EqlL1V4FUx2uo4j7Bcdf47Nl0kl22g5yH7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQQiLFJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQQiLFJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A75C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765617173;
	bh=pKIbHUcsZQEUZMsKl+TVaOozMObMS8fNhcKPjoBFSUc=;
	h=To:Subject:From:Date:From;
	b=nQQiLFJq54GaAr6WJBIEMA/dYMjgyGSGd+522SNNqs+IGSJfWJdbVqywD58x9pVyC
	 O6og8SRjKZ3hoCCjCnni2ELVQVzYs2O6kphXjIlLjBcyDML4EJdLvS1IfrAYt7BQgG
	 CEOsQnYZKWFzbJY0nmXdrWVOg9zm7ZTJZpvmP/mmyuF1U9NdTecyvwEVElnRJH/t/u
	 khjYv5rwAfAqk72QfEbAC5xky93ShpyuMcX16+eZTqBJ7SF4fo4YL/jhkYIg3YCvIj
	 W5T7Yp0bnP+jzyWPhjFhBFG5wMey/hSNoFR2i7uBeb89+PyoDW3UD2TF09q4YuA/EK
	 AAnlOssXJp1EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A0D59F7E
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561717358.14433.10851060949000945040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2cc53cb0605a44bb3a27fb03b8e52dd750494351988e99d902bcfda9910296
Date: Sat, 13 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765617173
