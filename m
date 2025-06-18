Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1FB283FEA
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750240194; cv=none; b=bVykhkOdoCGHwe3c3X7YBW3aHmCI5vHKQkBXvLs2bzDYJFcUsi96GiKswKFYNCJn6KpnYCk8oq2obykrl8iYcoDnGDu1IfsFk/o25eMyODqRzzbt+gRYPYEvynXGwRXobN/ErQYov/2M/m6yVRgujByrmZgo/5DyRHSs+gCcj4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750240194; c=relaxed/simple;
	bh=Ok5UKgVIYboqBqDwAClOIysM/MrJq0xh0WOUlcR7AkY=;
	h=To:Subject:From:Message-Id:Date; b=c1eifxLOo/TG5rDFIVPrI2RQ9HMh6Jq9xvl7EoulwvmxYg6dSM/ZTPLtS0taP+hfEub3pvF0HP09XOx0TfQMo+5GY5QV9ixrl1jOGgw1MwUMMdi9WsbjkzAqIHhsjwOrgEptzl9NMB3X4hHzWBvA3iRqeYTZcEKYF5p5m+vnvXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4027HyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4027HyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A462DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750240193;
	bh=Ok5UKgVIYboqBqDwAClOIysM/MrJq0xh0WOUlcR7AkY=;
	h=To:Subject:From:Date:From;
	b=X4027HyMHZe8xzLbAfCxlqyXL7TTVOy5b72fBP/FWW+iWdxCEN25DGiuWbmxNHw4r
	 jyNBwQxmy3hLwLibN+rrE+z6ZRG1vVTaM+k+ufT0DzTlRuU1O6I5K7dMn4tWvy54zL
	 Fhq1DDWSCfPX7ju7xIZYYaNEcr5BbwNoPP7tszrDRzEoKQnbfirtCBAh9P7VQPznTT
	 FKwtwT+3bbKxGtKBvRUCF8+6Ptp+SxrJ/94Ck9rf757xJJbh7SzQlcwvF+3I2yV4Vq
	 PdLqhi15g0lFdqiVwUGs3IdjceOHlJwmcthzntmJXDpThmu7VrTQsRwGuHclv1tM0K
	 zUGGdoLFupyRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C4EC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024019358.32010.5965791938415972940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baeae7111d7564fc7f4597707675da7da4132dac5b5da0b4c0cc10a3b01408ed
Date: Wed, 18 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750240193
