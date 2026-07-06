Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C94C39DBC0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783351714; cv=none; b=vB0Z7NVaYxC1U1eoTSrOOIOfP5SZ4wtZ9wE/wrPj6M5RVmO6mSmNcnd/pOUgItK54L+lEYgduZINUJEkw6AmE7qcj94KhZjy5NJfxJnnQoekjLkn9qtgwMDUNE1oAdxQVW5O4jTr3GGBiJY0cx7sjqxZUd4K4X7xMgnzCj1KFjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783351714; c=relaxed/simple;
	bh=kJw1ItkwmxLk7wEo5biBPXPbXliy1mOu/2Q+neucW20=;
	h=To:Subject:From:Message-Id:Date; b=rHDW5AWXPxBWYX9ZEHNqbY3OI9L5GUpa0BI+UplRqpTBmliouXrdAejbQoUtEniC/0rQ/NEpHKAo76BDQ701pnUmizClWaG2gUu6oE56xwVXj81t3QJHVN+UKoRTSNC3dlpw2hksHBWYYb22p0MbySPVQFhyORTmbW6ZFgHwFag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+DwrLgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+DwrLgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD09BC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783351713;
	bh=kJw1ItkwmxLk7wEo5biBPXPbXliy1mOu/2Q+neucW20=;
	h=To:Subject:From:Date:From;
	b=p+DwrLgy0NnJREnMPhLchzRs89rg3CT2sM43+aZufxTUgTn+yfVF9x9kGJNBgmkt4
	 gd0wD7gmd3exWFnBnc1WHVQna0f5/2BFPb9D40s0zVXIadBFuOGiqQ/0u/+Swey14l
	 qPKpmQz+Ey94WJbRbQk6u+wiR/Re8iesjdsTR+unH7fn3tQRT2CJ799vQ+GeVZA6n2
	 NMHqRrWxE5qmn+CdIKYjiZlhgyRTG9cz5vLjkAcQfBU5MEgS/nu2PSkdSX1v+8Ukqt
	 YWVXb9OQwsim9rPZXnCh+JKz/3NbqqhUQ+oBvr3KZdFw9qvFGYbtzPqPhGnTZA7o2T
	 QkrceHqS14MUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7F3C44500
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335171369.11680.14946622041241089113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ae6162a84c090cbe0578958a82e106424d3c5f38f3b0713fa92902419a9456
Date: Mon, 06 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783351713
