Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0514F13DDD6
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712834297; cv=none; b=EvUdSBXjAVnQRLpb/4nkT7qrOZsr+2hcw8oEuIrSUZ5w/v2j/MQkYxwI+0TVDCh6NM6Qq0oZEH0TmH/H7hyN2mjqLAxw2rZghRul5/r0bYv+RbnG8eGmn5zS+LoBBPO3RaieDfVIdmT191SzwXVUlNUa6MJ5Qp51hSNUUI1kwyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712834297; c=relaxed/simple;
	bh=03YVvyrnzeCAsHK3TKOK9QcGTFeCJ6NhsfWzpjb5bAU=;
	h=To:Subject:From:Message-Id:Date; b=Y8YIwVSgwv0NVpR/SQdsKiirA3QrkomRFGsIrtCXCb14SLlmUCFxDxp8mAXcSwpurTffdnPfot625EyVhm6N/e7TTPSJHT8Perth5HI8atGvNIKxabmP494vMGXLyV0Ff+WzviG242sLXV+YyoToZEmU22KNcseDH3dCi5VJwpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRHbUKLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRHbUKLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C83AC433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712834296;
	bh=03YVvyrnzeCAsHK3TKOK9QcGTFeCJ6NhsfWzpjb5bAU=;
	h=To:Subject:From:Date:From;
	b=qRHbUKLi09iQ0cBEkLSFqKb9q2mO0Es4J1MqSgk9yjPDFwQ3V6Xxpaoc3cCRr1tao
	 3Jgx4BFXQgee/9yc9T8eKem70IivfSVfVyYhAHRPB/Q62JlnUhDMrUQ67Hs57mDaa2
	 wy6Y7wccGW8o4/aeiS6tWLpEB3O101KAQqzCPDqY8+XXYc1MyQu43gp1Yn82Y8pT8Z
	 U2KIbWsFXQseef2bmedB+NrXrfxjccDz8v5wdzbbtg6Xrp+ng8QnqV3LnFQs/b3pSf
	 tijLTJWVf4KTClo1vbK5Ah7o2UiyWhMT0FTZVfJOmWyxiLKFF4v/ouJvLfIECSNhV2
	 HCWOrF685/W3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 658C4CD1284
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171283429640.31907.17540467731220543211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e74f349be013661f68739ea891988db6604f044639fc0ad9b294087d12b939
Date: Thu, 11 Apr 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712834296
