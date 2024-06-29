Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708818485
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719632663; cv=none; b=Bq6oGqepE5Tu/ZFvuROwYm8ArsZwmSFnB73y9oEDu9taGYZay/vR0krYU72cQKYo8fHuIVcysmWzAyF+TB1NE8BVRJfsq11cMtwcgYMxe2/VtX7iJqhzHt2zdbTONVltcYWlixmVtIJvx32Q945XnIzJ/SQJ7ukDMjdo0rRjXFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719632663; c=relaxed/simple;
	bh=WY1FunQGfZnO05SAw80pp1fZHDRp8aZUy+guRSwTfcc=;
	h=To:Subject:From:Message-Id:Date; b=DEtovE4bdXmVbI11jjglK/JpYv0mx3rqjVLefdZqO0sDXjQCB3Cczs2CcF0axFwOqrr/W469tH6reNeWBe1YcvIi3apd5jzLtsUNSuvDGAijB7olao88oHxUy8HOtCd4Gpgefz4X2j89jMwrDUAj292cf+pTTfMv+9ibjgdiVVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qL95rYsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qL95rYsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4ED1C32786
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719632662;
	bh=WY1FunQGfZnO05SAw80pp1fZHDRp8aZUy+guRSwTfcc=;
	h=To:Subject:From:Date:From;
	b=qL95rYspgx9T1xYw81/g22CTK1/gIIoYsqYFJfGV22nxbHxhnvXVjKCU2HPC+w6bi
	 37+djlvY5QDrhUxn6kqFQLqe+dCt+wzFuM+PckqRaQgVariOKF3uOwLlPfvTgbySM6
	 xd1ggwcQUe2ty2JmTjpkGJM3Zzio0wT7Fo1G5HG+i57UtOhuNyiEJQ3klAyafaI/Kf
	 xCXqbCWBedTzWTcLXus+XTUhFvAOm57I3Jl0mU1viDseenTcSRIcnCiD34u8jSlWt0
	 VN4JmnB+/aEsclamglBVkRsVkLTZEtEBlLTaOmaEbsrZeBVWd3tDTHF+czWZPVpkKz
	 WAJq/a1EnObzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5A6C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963266280.12120.11606015242501816996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6518973ac070af7a5210f0fa0ef14c0b1b9d68789c54c5fa545fe968b562adda
Date: Sat, 29 Jun 2024 03:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719632662
