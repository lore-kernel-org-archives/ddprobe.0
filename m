Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A868238889B
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785943234; cv=none; b=TUdknhXBaY8WdQt1tyh6GfitjWbAqmdYX5j63Tt8qcIm+Wd/PlADr0ERkj/2T2274Nypv0S0Nskt4FY5zGZfopjNKamBofjL45MppWD8SFQyHpSkmnetZ0FzdaRakmdPtaBNGtykvyUOD0RK1kypUj3by5h2S9ROctOeDh7OWAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785943234; c=relaxed/simple;
	bh=NVNWa4kMGqDeOP21oiGWQoD86v6XGi6I/f13wpxiBIQ=;
	h=To:Subject:From:Message-Id:Date; b=HpxjPUNo9c77rL4GXJykvc5nnEfuK1wJqVdTEsiL6981vPEg9nfWpWHVUSKFLGIUH06L7koPf1S5WlOTm2QKq7Eh49gqmZBXuKokG7UPCCdTicJlKZGMhnfnZ9HsrqsmCA/XZxiODFlHp+L5ersHjgdkPOVHA3eDjkTfECBQ/h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOiYCNjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOiYCNjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D11C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785943233;
	bh=NVNWa4kMGqDeOP21oiGWQoD86v6XGi6I/f13wpxiBIQ=;
	h=To:Subject:From:Date:From;
	b=pOiYCNjv74J7YlxKf2SxCJ5XUgOkZf9Y2aw27amH6IeQ+x3q+R/+rB0PFkRd0jb7m
	 1hUb3x+G6p02dEUXoUtrsuhqSsCLrmbtKKFRSfiQYDiY9KjljL2CWOlLmTjT8y/ayE
	 J96U//DoOtCKEuPj1OHsu/A/VGs0Phqh0+sVN5jMdf3yVUphf5wvlWlPrbULpNoHyB
	 fONFJIUbyeULKHO6GavWxnQJ4/iaB/IuJRS5vHoyeJCashgXkJar3Zc4ssZLAFO0Gr
	 GJBzTbM4zM2jdLs3rw7N9WRz0PiUqEE0rAao7fVBi4IZvZgsMSIei2iqkQFOcja0ZX
	 POWNv+DWbb84A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1164C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594323368.18418.4017253781117359632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79c2c310607bdbbddc78e1529aa35dbe888bfabe75bd0006dba5d4aa57f81d9
Date: Wed, 05 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785943233
