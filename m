Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE4415DBC1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761103794; cv=none; b=Y++1VZp/yqNInF0iAZkCxIYR5tv2oCRw2sobn4fCLFzDP5HHTeY4ihSSfz9YArgcyLLGjSl0l/hWvmHCN0pIl8kE228D+4CP0Q4wruQI0dUz8JkQkPpX8+1KJJLYK9cQ1ptPPVROQH/wef2Oh1NXLTvAgrvsiZaiovAtJrA1Qkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761103794; c=relaxed/simple;
	bh=XJ9hc9VKjIYM7qoV/nPKFom5EkWATLwzbZRPkonHOow=;
	h=To:Subject:From:Message-Id:Date; b=KD96+sW7fd8FJFigUcTB/Ke8/Ssva6E3juHpxaLAv6FTDBwzahnyXL+u5AtZGuSl48WFeuJpzK0VlV6Xxe/eXSd3GGVBz1TzfpsxJgfE1puTXL4e0esKrCcPmMOOaC4Bd/Yudp5ab0G076D9jVY7nf9HZRpBrhdPIdYKkq8sqX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmSlcR0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmSlcR0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A884AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761103793;
	bh=XJ9hc9VKjIYM7qoV/nPKFom5EkWATLwzbZRPkonHOow=;
	h=To:Subject:From:Date:From;
	b=lmSlcR0PYldt+g7dtVwLn9zeUKJZPSxLPCeWVEKb9IxxS8rbYQh+45MXAhzYbYHOd
	 OjTVaQA7qJXMMKvO2oWhRX9P/yG3x4jNM/PuKohjdS63OwZN0n+SLeajf9lZQSLPJP
	 vqot8LVM3yWZQ/ibz50A+Rn7oIPuzoTPVKbuI8JeHgUF5CP5+U3OYONSKw6ZvtmuIe
	 tErUBqVwvskBGPcpBGdvCfSDd/dYjwy31TsLKtDQrezZUQmH8dNlz0wEnsarzLVsxk
	 vCxZNLgxlQA6eAvfx5YYuQyb1pTIlbEVyy2QNPZAhbxKNxXO3oM2h4lf0oUNcOTr23
	 Xqwtz7xq+vJuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F3CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110379359.20828.7684719067532656299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7184d7597a78d4404a21767ffe47e4ddffe10e615216c278865100cb9963f3fe
Date: Wed, 22 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761103793
