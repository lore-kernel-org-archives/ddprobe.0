Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3D6374178
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785751234; cv=none; b=GEKT9QVRrLlZJZ5DEsx7HoiBeiSWXp8wGc9dL/mLPp7feIZ8mBafHHTull56a5neH09FKvMFuYz7NUgJEUkI19BT1DO6GaGWaVDhdYFsAivhxLX3T8pNwBZsxnZMyehlzsFxQxu4tji0jfRJexFTmAeZC5YrvUEWWVv92hHoGJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785751234; c=relaxed/simple;
	bh=NaYUFbwE4+2ZS7sC0Gs9s4tAcoJ52gJS4EZ2P7gRVWM=;
	h=To:Subject:From:Message-Id:Date; b=hI9LZudo+dhNUuC7Z7n94xPpDmZn6vDFupWUCwIX9fWma6GdSxKpQGrCcppFTSPsRWgkSgUSKpYdZwWZOGNuBX+HR69YIelwKtsmsyBmIGraAc6TDdfp6RgRj0cmrC5+A7XZm7L0i/wTjqPHflqr90r2+kad/YnmR5z55MqPgoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyvecCyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyvecCyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8007C2BCFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785751233;
	bh=NaYUFbwE4+2ZS7sC0Gs9s4tAcoJ52gJS4EZ2P7gRVWM=;
	h=To:Subject:From:Date:From;
	b=HyvecCyq3vSErmlckuoue6sM06xX6ji4fM6b622HqpkoCBl8QswBhLOfW3+8xprrK
	 ioCWD13NeRsqEnGJ/OlnTAJsTGlpNRALgWMipRRC4YhqoOL1t9U6MfZeVIK6SrlTh6
	 S28kHhicu+JwT53FFiSDg8yBgJDupWxBQ/dDijA297KEH8PfqoN6AKh5NOYCMu2b3R
	 lvZRhgzL1/50/553WflnCg8335dl+GJY1rddUPcBJ1eXdVyVvcpX73IH684jlXJDLE
	 gO6WmzMdk0Z2FiZwamKZu3Qy5At5Nsm1LjcVULEUZsuOktSGk6+Of7d4gX5Dkhg2MD
	 rk3nTMG+KkdJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6B8C55175
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575123369.32002.1570903180031764268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52a71482031e00cdea3d920fef640628b9917ff6625fd211a238a0340bcfab7
Date: Mon, 03 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785751233
