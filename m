Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2BA27B32B
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755714593; cv=none; b=V7ZplMxxbmajldRX1IttwSvwWQBIKU7MxVa5tVGuv0oJsgcIRponz/kBBo0STy9gsCJKhyw0Dq9fpDV3X3JWpFM8LwhiPLC+ZA2FiOpOvSevRdZOGwjzg69B4ovUeB4PFIwyTDYT6ncyGCs0kjTbOQ62BNS4oLd4UvBNaiAEeyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755714593; c=relaxed/simple;
	bh=tlnY+da0a1txz0XtCQRe6eja7KyqT3NMFZHVXCgmgyM=;
	h=To:Subject:From:Message-Id:Date; b=ILvo8GwsJ2CCHB9DIXWd/SdGSF2VfqpjiIIZtTJVONtaIrvdfbCKZYfUOHGVNFEB/77IavXpC6hAx+shqQvFPiCIZkKjnvNeHf8EjvRv4a3jq5sCBg139n0W5ZoVkjUJpquGHvnZLMiYT2MC6TUDolaH9r/RrSuScBWSgLIa/Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyAuyQqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyAuyQqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9F5C113CF
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755714593;
	bh=tlnY+da0a1txz0XtCQRe6eja7KyqT3NMFZHVXCgmgyM=;
	h=To:Subject:From:Date:From;
	b=MyAuyQqK0RKDNyXLbwxQAmdJRlsBb48zZTTBleovvpL9XR1LeXswoUEcDAJMP4apz
	 51CJdlDaQ9LdkhWMsyXVLlLUA0T8TalDqSjws9PJLJ9zZrEA/wnaefKh302FGvkD07
	 X7C/U8KvLOgVjYR1MV8qfrm2CAeQThioqUtOhW1QRPAdX8Vwncd+QeAgkwCcKEXRtH
	 M6HFtUINA8utq0RV1Z9Dy3VP5hGnozE2gLZxAkvE5FdPxGk1SZlEBZIxZh8ojEM99+
	 NrKOO/TBD/nsKoQrOi0sDk0rKYKVtOg/JjwiX22UNzR/q2FJ+5vzkatlMPWcL8RTke
	 0dFcZLqsRtDkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75ECA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571459357.20570.15093199760545788985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78cf7d9c6f25c57e155ab72671950e874c3dbbfab652f082fc884b2ba2d21c03
Date: Wed, 20 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755714593
