Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B022234D384
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785749436; cv=none; b=g4aTK8x/YJ6vcdDseBVhX1EViYKHSDL1GEdilT4dBwhInqsWvbFn05qmoIT/ci920i9/QW2Hko4zcLhZoLJW1UKD7UYU6bPR8m20JRZ9GZZcN5LJIa3GSLaI5gkiF5oLNpABsClF/3ctwiEQzpfC08/yXuzDUxSeML4Pwdh21qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785749436; c=relaxed/simple;
	bh=vipYPXB/jjAv4OatusGWtlvHO+GzPq6SV98YQ3bclWw=;
	h=To:Subject:From:Message-Id:Date; b=gpu3H9LVwnnhstuxxM9YUVUUxZBv6OZOaxzXEewTWF150W1oXoDIW8SErTRyr591hR/WAXCUxDEXmvdOq9yhNTo42VdJk4zrFed+qp4R4U0GmaFjJ2/oyyezQiWlo4J3nDvNKQkEwCNUFOeQpgT7Zvlv21pvciKARxRzmjJ11OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEFFUZqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEFFUZqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1B7C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785749433;
	bh=vipYPXB/jjAv4OatusGWtlvHO+GzPq6SV98YQ3bclWw=;
	h=To:Subject:From:Date:From;
	b=nEFFUZqiDddqxBha1wx4eqgn2skQC0jhj4yfIOYxp5gP6FPakDmlLcSf1obta1n28
	 07do+vMLXds/USd/Vv5fpUCYBpjGejJ+sJ04EsEWgXu/1XZ0IacR2b3LKGBYQD/nsP
	 iNNUwA73ceosMyfBY6ee5VPrlZ2ftmgpWW9rGM+zPz6bK7Uj4d2gwkEvAV7PUJbML1
	 GcFuAMHQIgSkroTZ0CQpBG7jWlxpRK+i4Zx87ED2/pUhvUsP0ldNqc0U1Gx4EO3On1
	 0mJGDcvcLUZX38bRcl/EQJ8cXyWjpRF5szCHZ4gorSrrmD/glVep+xVGdVbEHoXUan
	 bSOkNlSNlodPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB01EC5518F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574943369.5749.12343313526868487559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396be87ba2b20e8d78b59cabafecac4354a0a02e69a47d419dfe39ef71e71ae4
Date: Mon, 03 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785749433
