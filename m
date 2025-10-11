Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDA234BA2D
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760194194; cv=none; b=f9w6CTipqz611/OHRoGwSFhnN0l1HyXsSG/B2VoHb3hXdd41rVkoCdpJ+bRzSPNHiL5j7K7I/zGcem7UnRrcyX9CZuVLBzhM67t9W4ddw3s5BJG8GR4WN2pj3BXHw2YLPflIZIrvM9Mpvkza7LZxDWUzYBEZ/xys9OpuUxtbyak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760194194; c=relaxed/simple;
	bh=jpyIe3G7AEoLnEYzhdobzGdvgxJxaOQ+TJ4EGzKk/u4=;
	h=To:Subject:From:Message-Id:Date; b=lg3Yic+p+agMPg/AfFePATbaUYe1lK9qD8jCYz6fhucEZtdMhQr0uclt2b3jvU+nIPzKq+u58JKrvnZ8ZMaG7CcZU8WZ0FI1DHKGuPrpTxpvjdCrVqoYsYWVDnLAu3oS562CfK86KyYMfQkYl0t35hM5Mz3EFyr6C3V7cpGp+Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKGjw7X+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKGjw7X+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E320C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760194193;
	bh=jpyIe3G7AEoLnEYzhdobzGdvgxJxaOQ+TJ4EGzKk/u4=;
	h=To:Subject:From:Date:From;
	b=iKGjw7X+78q5dBaj1+iF4cyAeZrfD7794bzDrR4jc7IJMR69h9WqKLJcpoZubFOM9
	 FzxtAVC4Q2A144JT0b2cwGcofGNN9KXkYfc69WxOBa51FMrdxvOI8o2yITPCTTbd6T
	 2TPg2LArascl7JahcuxSQoOE2qUFdXozKhPczDxN1hIXD7MnJC22ZW751vY2r+mxFa
	 aMF0vDmV9RjC7iUNTrX1N8uAXHBSjljFu+YPrhB+NaK0QPO0wzrwOZ7im+6qHRonww
	 McmAHTlGUpDnhbcAPzmGIPPHs+BaEWvpbeuPFEnDQYcHWQcyueU9uE2X+WZS9SF8g7
	 wXYFEth9wvMug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F258CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019419357.19176.7456646016778565661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb74320a6278dca9edb6f4763f616e5ba3d1a38c72c44e8829f31d8640ef09f
Date: Sat, 11 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760194193
