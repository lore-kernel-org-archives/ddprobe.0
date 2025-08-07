Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F195212B2F
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754600994; cv=none; b=AEkKvXd1h2RSRUfDbYWwKn0gQHrIYy20qT3lTIEb9lbIrRSw5KEHCZKNT/nkzomN6Llv+tIM/RsTUOo67gqSfX3I93Asupatd/fNtnIq5mPSOXOr06FDSLj56RNVdZbFG7/V5ozCDiIJWMnF5RlZIw3TJdivyFX5ee5R5TmdnTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754600994; c=relaxed/simple;
	bh=uyUXIlOoHTaTVIUQtr7xsr/0zJ+S7VLjJyWpPFDYTPQ=;
	h=To:Subject:From:Message-Id:Date; b=hoW2+Idsq2zZCCWJMZbjuI/oqJ0CZ/jz89AcVWkZfepxGX1YH//ke8yv6+HNYyIl6kY+Y7MDKXsxkzudRh0InNcS934CaRc+uzPjvVTHj3HsMHmivpiqzhtGQvjJSOxI9p3eLugawFIMfBfJTTJk0bywOWSLPYdDGRL4yVx9qjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P27A1kix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P27A1kix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2578C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754600993;
	bh=uyUXIlOoHTaTVIUQtr7xsr/0zJ+S7VLjJyWpPFDYTPQ=;
	h=To:Subject:From:Date:From;
	b=P27A1kixQbtW2hM7kLrZ3C4hpInCfPLHwWK/0dzuaWfk3jYS851dNBdggQcEqgfJj
	 Twhc+HYnenKvKdi0tjMaLgQb3nO1LjMaC9E/FAmCDUjJlIH4xGkdSaHCQSONKs40vl
	 DmUpbC3P7XcA8+DmHQqjmBoP+8hAUfSWeygwjuzu5Cqx0q/B+/B0kE7x0zFuFanUQ7
	 9vTncuThEXKMGHhth14qaXO/weeSvvN2xm7fasBfgLa9TIqOtB5JiH/wE9bteitweW
	 LKjyyb4c+4AIdp6K6Sq9lWbWmofMBkUHNQiePiWY+BdRXemZhq1o1iboHsLGC4D1d1
	 PjO35vKiHfqAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D6C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460099357.19918.8030929855791595219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04fb272aadeb398e05d391fb8fe15cbfb6a1d8b13172809c4e48014a5d970572
Date: Thu, 07 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754600993
