Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38331344D9F
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775357734; cv=none; b=j/a6wxsiV11ys/aURpaNgg2nNA/JMoVfUxceFZbMVeG36+v9VV6hQ6mhD5drBckvYqQ1ie1TbZemRJNbeiE4O0jHIMY3rGFGY8irIw1KxVFFH7Yj0tvHn8/9gFAl5GWHkLqt5ZTwdGxnjwPnFJWDA0RD11uLh9rwPXt0927Xdrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775357734; c=relaxed/simple;
	bh=mh9ip9+j6LldntKErk5mpxtpXkXYpZq2ebqqKctkSKM=;
	h=To:Subject:From:Message-Id:Date; b=bXnEOyg1EeZJgvmLTUE3xrOLZwOC8qdgnZQX3dw062d9OQoWBtlYubd7HppOKqP5g6kZ4Hqqp6OSWODgRfw6ilEgMBjTBUVfmzkNxmXoGcKhlgHcXRd2RV0vC9GXQPZhE6vgzjIZzzVwMcAp25UBTkTHr5EMc7j3NeCYAIVhsyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Keyjtqol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Keyjtqol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EB4C19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775357733;
	bh=mh9ip9+j6LldntKErk5mpxtpXkXYpZq2ebqqKctkSKM=;
	h=To:Subject:From:Date:From;
	b=Keyjtqol85VpxVPWhVeR41KsOoqslp/FEcmrSIhmWHyDS1YVjc5c5aD7Mo+klSCPW
	 NJ7ImV7EVniq0EVVnIaEqLLLGRfXGPn9IkwcCgGcIUViPmfOniCbtiMFBnAJ6JTtIY
	 uYH342pTvn2Kml7YDNjNRxVXVPDxPTm18qZuLSYtkFnoI3enQDaWpUlOBbkhGtWxac
	 X3rqFYDPOLa0wRqjMiCHbAGZJAklUpedEEw9zSud4Cx9XpE0HZbcXwNbMwPn11aWgi
	 MiMuRGubsdSnCYQXWEOj91GOVAlgegWu1OpZwCW/eGuU1UAfenl4XFMmYDfJQ9c2DZ
	 3kBeS1IPoqI0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3DAE64001
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535773369.24051.14632003866997312026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c61bf5586b91e507069bdeee511afee33edc84e08a0a40159a28959bb3a5411
Date: Sun, 05 Apr 2026 02:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775357733
