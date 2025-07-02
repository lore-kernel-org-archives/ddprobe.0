Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5971E9B3D
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751431194; cv=none; b=oY1ZQWAYRLnphaI1So60tJcgnMkgFHUAm0fN3+JGkQmnL7DIuFNFGDGNtpB8sx+axzwIDyDzEEC2wfbO1TkLw+au6za5UOU7vnmu6erDgOJ2UaAfVOAhJwycJoGYuZAGNP+J+++EhTNm6LGnbGgAApdBMzc+jDr2fNXx9BIrcd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751431194; c=relaxed/simple;
	bh=vpBFhdXtDq7NjlBHIm4fHJPKtLJyqg7rTynbh1IOqtw=;
	h=To:Subject:From:Message-Id:Date; b=DewBNtyC5YT/+PPs5SyF3Z7BJGWZi9OHd66OkI5DuqeJy155zEd9NfDFpbYmQQKgPGpdMVQbkpo476KN28Enr0btUIV25rwrRmcUGzlJ4WG0b0swaE08Fx+xldTeyu3H4zGJS8LHWgnglbWcY3tlpAsJt12+D+sujJgez/uDHfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSOA9x+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSOA9x+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1472C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751431193;
	bh=vpBFhdXtDq7NjlBHIm4fHJPKtLJyqg7rTynbh1IOqtw=;
	h=To:Subject:From:Date:From;
	b=KSOA9x+hTHZabny+l3grKJLtyzRTMTBQnCyty0ektshuZwY5Ug1xbpcD0V5UD8YXm
	 7Wj254RuQdfkRIf3taPk45/hihn4G6OX5ziuML/ChFNOD5HOcUqMFZu64EZEU/tj6I
	 +VrdQsBQSFj8lfUDKOpCO3psf25vauFw1neN0Wty7x+AbLV9N+ZDTUh/dU3WZn0iaU
	 K9ccPFQsSy8GTmxYhT/UA7pNXgzExpRKJhQEIOfRd4KDZdris9Zvu/HhAzvFz19rDN
	 djGtq/OoraQW7mRGeeIJasIiXpbJ3GWw+OSwj6ocEQBmXYYErzPTUO45SIqe46oIVO
	 u0aAkd483joTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA4AC83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143119363.19810.4042179459777073915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e9f1e7f5d130bf9afedbc9363ae8ad381ddf6c870098fc6d90137365582690
Date: Wed, 02 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751431193
