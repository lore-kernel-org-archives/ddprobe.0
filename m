Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F42C2F999D
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755113994; cv=none; b=pwAtdXut0nQFtOvp9bUCU5OVuDgi3W3sRFw/BEdgIavFaFNOS5eTMIIK/tHS4s/jaHTRdimVrvEWhR1dvasfembLbNv6xL3PDwjiHh9/5t8dRMxJkHIq5wKbYATqk6oP3BGMmB2tnRB1utavL7j75mGjyjoBqRajfsDVB93aAJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755113994; c=relaxed/simple;
	bh=EI2ecWpncdmqbg5ofr8Nvh2l9JL+u7m9itAd0BfGeDk=;
	h=To:Subject:From:Message-Id:Date; b=Ul7+sqPQc/J0DmxK2f9+kONk7T7VT9JbiHqzi9SjztDeKAx+dJ7WQlW/gC/Kc/o39lDfd9Rslt5g7kRFuEq3zEXIqpS56GbTlfFDrEP/DW1znRrBsvIUGDGTqBLAUS5FoR39j+ia75tyOLsrLLDMcBlKLzKEaKn0SBOcfHzanJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIshXP1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIshXP1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9089C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755113993;
	bh=EI2ecWpncdmqbg5ofr8Nvh2l9JL+u7m9itAd0BfGeDk=;
	h=To:Subject:From:Date:From;
	b=mIshXP1kF9HpBD9exriAXiwP4VgQiwJ6QOh1BP8ljt8uq3ic1fy22awyQHv/zyILk
	 m/gvE8TsQ3IOiXNXTYaBeDOWlUn3h276sDPuiknbylamngnGarZGq1+E/aMkxCuPQU
	 0THSqfIdMd2jvWJcJNb3OiYD43qJ1nKW52Kxa11x1DMm0tl4LinIj0nDsD3sJE3TmO
	 r2iS0zFG7+aOoH5EPyIegrk7+BjWf/e16LsZX5nGprkgYHIMZQwUg5sm9sEHRY8OSz
	 JQpDU4l8jDMId91mklXHfQomnMh/PuwfHl8GtCkPucVfrdpgxC33EhJl+WdOIexKrY
	 ITh9WQ67yDRAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EC1CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511399358.23393.14333304872096220931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e839b7be739c4efcbd6ed2dcd22c65bca429d291224d3188b2ddef8fa71bf1bf
Date: Wed, 13 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755113993
