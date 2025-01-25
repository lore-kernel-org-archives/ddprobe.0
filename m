Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A2D1DD866
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737807954; cv=none; b=IpNNm5mj1kZo0YPuZGIXZOcInX/N514KELUGIRjRr9FuekTw25vONTnRvipNKNpczKoPDc/xJmrvn8gxZT+rGFneV4bnglIfLnPu1nJSg5l18gA29MG39jboQtgyUZpJA1YpHzdj+AYM0ny6Meg6XMaJLHrcMiv3xmIRwus56VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737807954; c=relaxed/simple;
	bh=aGtUD3ZgmzdeDoZFXLQ1Y39ApyoNfHgnATr7CksQ8SA=;
	h=To:Subject:From:Message-Id:Date; b=bhSbYJ4NB/U5f/GBXCZs6nRO+1t4KU0zXD1pI+MRU2au30RTgufbWrosWb7DF/oMvq9ey18naA4A5atS0OGymaFxomzSlOLO+mn10pdiPGS76luNXFcUswPxbmscOGK8kjYKgsOI5Px4frr4uytrmOrtsk9l9nzON2RYrfb3FT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZGNlDsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZGNlDsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04B3C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737807953;
	bh=aGtUD3ZgmzdeDoZFXLQ1Y39ApyoNfHgnATr7CksQ8SA=;
	h=To:Subject:From:Date:From;
	b=NZGNlDsmA3eWSH/nbbEfR/MWqC9gAS/jqZ6ui2CsGKAtl1vbCQNDcj7PGu0CGLKAA
	 cvlPQK0fWB0hsOmBaTLiPw+bsZ5AMk2pyga1grce0yRjwPGAO52p1WkGHSE/moLjCp
	 kiBR+Crs0so2vffawPdG11jmQ8isgtV1etLvlwSXR8r5hikLqfozJZEsov1JiCtqwi
	 JMA73L9iRAtWLY9/eXV4r4QG/5edd+fCnun5ROmioqOyxL2hZN0xXiBrugtQAwjA5q
	 6FNS9JZzyX7NxnnMcBrU5YjDu0CK3l9clIwHJdbEq5c2t91iNPWP1ByStmaQ8woiV6
	 pLxXynVFf8Vqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92799C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173780795359.32385.9186768383621008303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66da97691d4489f97bc37d9778d5077b568a2efd03324a7adba2961aa79fee0a
Date: Sat, 25 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737807953
