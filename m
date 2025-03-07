Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590E020FA9C
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741377534; cv=none; b=ruuYWiIbSjT27KoOyty8QogN3r3V0MR9X6Mb31ysnml4ElwjcGCQADOA/vmNc+gFbuwnGOINEyZ4s2YR3VJwm5zDPa18KZTyOi/b1V+YjJBFnbX1OHoimahbx+Xyi9HM6QkxNyMTDyxDQsv5F3RaRw6Dn3gvmqH+KVPd+9MF1Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741377534; c=relaxed/simple;
	bh=cPRTvEKN/bxcBQxGD17SGMrKHi1EVEjwQ0zMpSkWPeU=;
	h=To:Subject:From:Message-Id:Date; b=foqQJuYK0G9IqazI6hrtMF/hSWZ6Febqat7wrYfO5En6Iy3f+1y19M6YDDtVbKa/aIOKR1zw1pq9vcO1qkjAhbRgJRp+QtyDSKXkQoMQB+CJn/BoN2EPD61fUQqBF1iNV8msiioWTZfYWK48plml9kCSvC8GMthujvmUkMmDvpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpQIvoKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpQIvoKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF70FC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741377533;
	bh=cPRTvEKN/bxcBQxGD17SGMrKHi1EVEjwQ0zMpSkWPeU=;
	h=To:Subject:From:Date:From;
	b=rpQIvoKeuRov1Q+dNhZpUlaeN48PmSVLb/DQXfnPsneUucmI23IO/glxT2drGyOYn
	 f9I0N1gFNfRkpt+4SrUfJAbThtDi7Uo6fwIfv0MDnRzQ6Lh6vBg/Nd3IRRq01HPzna
	 T71DtEnbXsLC4j5aOZt1stIn7zskjcqwIehE7Mh8PQo/hlTDYlKMJJfzJPxoerKEu7
	 XhjJXgAtkH1kKOwpTFY1krKwEAI5BLBkDKe8tmYp+bdTpqAixd2C9aKWI/6WGL2gsd
	 nxWXJx5WDSetO4WVfHFv6P1xIugieMiiKUgtVubA3B3NCFD+fjoPriz2Q/LGkoG6Rd
	 dTIc72paJrnbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB12C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 19:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174137753362.20090.3050576694469650925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c36ea94ec56e6d826daf6540495a43c47151155c0d293250f647546f4edb59
Date: Fri, 07 Mar 2025 19:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741377533
