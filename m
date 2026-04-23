Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2EB53803D6
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776940054; cv=none; b=uHehD2ahCzMUpuQIypM5pfUXJg9M2Iu/+QQjTAFi9OElqCg9/n18PQzZD51a01sPNA0aJM4OdosjUtDAYadioTtuB9cVkVCbNd28gT7dMrDgk2QasPVOxv6fiIoYG4KbaC55S9bnm6ZY8WTI7MQq7zwn4dKWwTQLngfddrBLZu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776940054; c=relaxed/simple;
	bh=VwSv6zrVtfpfhqvq8adLrpyDArqyOHYkYvVUM/Ncg5w=;
	h=To:Subject:From:Message-Id:Date; b=u4X6QhVaXRFocxpv/LZ5Azq+yrf1v9eBXO8RA26UlOjyLj0HZfJDsp/oYOF1n39u5joISskWEa/L2aRAVg6Uu/LprDVyGpdpV6Iz7fDZ0sojiWRqac0xuqUFQspLY9hW1YSg8Po7BEFG+yie0G1E+l4VQaNsTGxwxGwt4Vb1sso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFnpjPCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFnpjPCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE52C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776940053;
	bh=VwSv6zrVtfpfhqvq8adLrpyDArqyOHYkYvVUM/Ncg5w=;
	h=To:Subject:From:Date:From;
	b=dFnpjPCpgmYrSPONRfaZjJs1xWK+ffXAr3/YFSr7va+sEsOko51a6BUHjgupoNNy1
	 vVYFpH1WzqlTtf745/rhIBjYDPTgQ/zWUc21A/sSdcgKnervUuBkNHV9jYPVMBpNjs
	 MUgtSsPytjtJRU9BGD0wXXMIKFfzXb9j1ygJQEPpV09rgNwu+pRA2/KBUG8gR1c7Ik
	 25O7cgn6uSRowpDFqGnMm6YAxpLsPYWCgjvggDiVwdhLUPK9M73nUqGRt3TllQlYQg
	 Y2SrMWyHMQOR42wXssDMDkjgMBvIbU5V5kJzuo0up4SCR/aPDl//edH5mrKWZr0J7e
	 ei6+jFcx8Uz/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1B8F99368
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694005369.29700.5968948099396451302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bbdb875a55e30e62be7f580526b3aa47a5a3ab4b3c244db8d8ae9dbba8c994
Date: Thu, 23 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776940053
