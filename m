Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD1A125A0
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768089834; cv=none; b=OcxSb5pPK64eSHtRKaoG5GfBtwIONmUbUSZtBrX07YbgjoSlTHndJ3wZ0UKM8rk76hVPfVTkdc8GwvvYuVYPxqumUxxEFS/+VrgvUaA9qpZrdF3SayU432DCnPEtHiW+Y6U4mrKMggCe6lRpl48IAp7qoUq8Oywf2Cn7PA1szVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768089834; c=relaxed/simple;
	bh=vC3nLgfW4Rvs7nNO3LkG4lvnsXsUKUoAougzZQGVXsQ=;
	h=To:Subject:From:Message-Id:Date; b=DeAHa3xCLpSytwFWBWIaOlZQgCR3vXXHmiyuWR5Uhw0ke3iwhu3QuwqQUWu1B6SlDoySof6n3+I+t9IglbCf0Fe5bIiE0M5c54UGt6pacK/9Hrl/mJ/8L49cWR+aqrst1cSlzB7EISmbVGa7dGZNLcyrHGHgTS/zDXhTVqlJIYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iljAZI7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iljAZI7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEC5C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768089833;
	bh=vC3nLgfW4Rvs7nNO3LkG4lvnsXsUKUoAougzZQGVXsQ=;
	h=To:Subject:From:Date:From;
	b=iljAZI7Zmy7QmceytzoA1xKNXWug5G8/EcDKsQMYH9SR4t/R7dpd24O/3oXRfbhEb
	 XG2HlLkbTV6bGJh7Vw+ntEFKoMgaPxFDXEi/w6PojAK9lOhyOHJpvzC9UlmDJA++MP
	 ym7H5VNhF502p0Z9YwasczQyM31bpuPIh9/KN6E/5zzYAlqQRm5kb8zmBlySGQGzuh
	 yC1nhD1dV5lZVtqD5uCdqgM3KMe8ATiwaFmOM7V5IoKX1USyrV2XIzssyQ0Sv3G6Ve
	 /akRKqbuPnnY5FirJ4wTQqAILq11FcAcQfHPSKFHVPyvbEwtjGQA1NurGhrO6z+P4U
	 yc2xf0Fw3ShaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5EDD2502A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808983357.23207.17861015181047613699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c9a1be1265172defb943e3e50ff1224a430156e784262c124f9271dbc859b5
Date: Sun, 11 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768089833
