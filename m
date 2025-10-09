Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C995241690
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760042994; cv=none; b=TKuyIYFyRYd7RMBnqUkeBoxRm283Be0VuhSKjxrhHA7zFKkcX6Xp3GpHmUoulZ0s3V+v9U1cTJgoFciv3Oio//8jP/76QBG7B8pNn1PnA2fD14cXTKWCCp2Om9qp1DwRZtK6N6wGDPbZUHyuwDWuUEZA1U6wXru6atY+P+u4n7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760042994; c=relaxed/simple;
	bh=bUTGpqRH9IxfAQ8a7xMafF/FkjcWMKSTLK3BODNVZ/U=;
	h=To:Subject:From:Message-Id:Date; b=Am/Gqll+cEXHKnA1sGXrZgXuicPwJIB6ub4QyKbsCDeovBMKTjoXtH6+kxl7mqq09/cLiPAdsjfo3yKcn+CpmLNd9r/QMqJSTkopDDy74TBGqVIbInkin+87VPmGCwXQ4c5xlJBRenpeqKWeiITapmq1vtb+hhvFV0JVjSNPnVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZhvXJX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZhvXJX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BD0C4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760042993;
	bh=bUTGpqRH9IxfAQ8a7xMafF/FkjcWMKSTLK3BODNVZ/U=;
	h=To:Subject:From:Date:From;
	b=GZhvXJX76LLlQjqF5TxVI+XZPwOCEQn6ynaL5whuvCDSd+hP9FJuknQJ+Rsm6kyrS
	 O0W2eL1NTqO6xMc8HzwVvjIEHwn7LyQK6R1f0hUDZjtZg4d7kIPk2V0QaAHjXsB9K1
	 8Kyi3ipvq5/BcJaXpnq31z8A/gY0bKo2rvaN5LwtLgkk4O6Ie+rIvfzOdh1E7SLnk0
	 Lsi29iXw9o00O2VXm3vsl8ou6RNes6ZP/wOMijS+04/xiXENi+TnxHUwhiDfGKAvv3
	 dYc+ssJ07GGZfJy5uwyVcS2MQabwExfj1/bSw5QXQZXNXBF2SSR1D8tGrmZnof2Vst
	 A8+iu/C6NeBOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9222CCCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004299358.17448.6260492281150219757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb14eda9c963b1a8daf27c8198037c7e415513d3ec0de8b64f2138f0894b79e2
Date: Thu, 09 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760042993
