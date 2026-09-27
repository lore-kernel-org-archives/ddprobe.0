Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E90A3A6B99
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790515834; cv=none; b=bOsM1mG15sijQ8KVqyuexNwWcbsq6M5GNSL0z0Y0IuUc0s0w5njKA8hPcT35VnJh1nJWqFH+xiqL1cIf8jKqFHlUXW0xfGa/jb/c9NmX7/8y2SvoZS7L2vI01VxuXL4aHVzz0VqqfqnnjW/fH1gAsI/7bgtFtNZqVd/6qdlVYJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790515834; c=relaxed/simple;
	bh=Ipa7KiQ6w5ZPb5g1hAfIgP871lbdnIlQSQ7W7qWVTaQ=;
	h=To:Subject:From:Message-Id:Date; b=jMGLQWvojRjyIlfV1E1UYxwCtaDRq3vWFbIaqrw4rwPbuxcrnt08nqHGGv/SX/WbIQzz7iFoM5zH4ymqqpCFFBNCCzSknFi8oWHczg5KfMArZqR9XAlw6Xel47ZBvA+Be7m8YttAy4eWKG9/MJyjNP81NnlGl2tpt88duiSrx4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJf+v0Ri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJf+v0Ri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF15C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790515833;
	bh=Ipa7KiQ6w5ZPb5g1hAfIgP871lbdnIlQSQ7W7qWVTaQ=;
	h=To:Subject:From:Date:From;
	b=ZJf+v0Ri9WTZTfuTHNJE7iYCB5L6eEwEpWwwsFj/y3CyxscXx6dPv6Pj0UG1ABb9a
	 ytjKwXHHr3+3y+DIO5wJxfmBavGrZHdebMH7oEjPKOEtpkLgKeOjk7EPHD78w/gDHQ
	 r0oi1doyzq0g7vIgKqNxyR0aIVtMr6WjgnWEabRcg8aACqtPJjG6JjjsVEOdRjoGbW
	 NhJadCW7PTnB7AsjY68Dd355h20jMKPhRDVe4MdzgS3H8P2s/KNaEDIlTsMFaFkQQP
	 MJiWsY/ikc56vS8YkKa6m3sC4QyyHnZqFrrhrU+EJHkMWIpGmxuV0y9GTgvKhFnkhg
	 EDn7wXLcNGMFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB10DC98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051583369.20431.6923534037143691659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7aaa4f512f0fcea749ea141431b6dd24bd35db4461ed6532e92ed519e54620
Date: Sun, 27 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790515833
