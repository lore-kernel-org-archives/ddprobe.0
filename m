Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358C11DE892
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739114754; cv=none; b=iPglAS4zuOhoC6aH0y5eBTQ8/yG8hnRwrvbZw8MVaUtc2AbxSGaMIWlYyeMisLa+2Wp2UopgMKF9a8FparoQL2FF2VCRT0BEETLT1/OSkU0dc3brDVWbT5JAOmPA40gtoecVZh6ZO2D5rtDcIbUP2LGl+U9IlXxnkv3mT45Y6hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739114754; c=relaxed/simple;
	bh=1K9AGCdqCR5ctXYQ2dN1CnSktLS903Au6dGC8eBFWOE=;
	h=To:Subject:From:Message-Id:Date; b=tbHj0oIQJFC4aDEKDvyC7s2FfqY9F5FGYrBP3DNSGA/hC3rNGvsI9SXX64FW0IN6nG6QNwAC1opfBCEXTnrDEcZmtpT/WGAzN2njdoA08MoNUeHfP2glyhu+/WOwF77DIYyyxDQ6gj/3kflPCIo+OA80vR9zQgPrNTTvRkPHJfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7P0XOyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7P0XOyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC424C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739114753;
	bh=1K9AGCdqCR5ctXYQ2dN1CnSktLS903Au6dGC8eBFWOE=;
	h=To:Subject:From:Date:From;
	b=g7P0XOyA1jiPkiAK9myOrHqtjP0QIoS5Uz7r/jLSyZPTUj41rHZ1M82oEbzOMIYU2
	 2wQwN4jJJaZLfaSDYbF3FuCYjHiyPSpSszEQXw3BVoUa/mbZuuqZYORN3ZuGWop0eh
	 YGqaJXl/kTU8QPTmmt1cb0OnGKf2pif1EwqW17SAyvPRP+47xfMOUo06QGcEdeoj8Y
	 FSh8K5frcamxyRhmAFkshsDXydaH2DBJGPnhHaTOks7mazR7mvnpRIU5KO1mZNY0PC
	 QDF4VGIZk37WKQ+EHRPDOQHR/S43CfBImU/Hd+rlfEm0biYQC8MDQoYLq9Rw87kqd7
	 UHlwhKQ/nqY9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C075C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173911475362.23530.5972596390457307515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 065ec87806ac9ac3d929239b304b7a823329716d51050574c7edb1ab05cbeb88
Date: Sun, 09 Feb 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739114753
