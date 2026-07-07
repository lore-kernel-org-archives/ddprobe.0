Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116681684BE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783385314; cv=none; b=CIYVixohdOSZcSUs/PDwSYq+of5haKKTzPi9zUqinkML1krHGR5CoilSGqvAmAKVuL1XtgzzRVc/1luQ5W8wP0VqyBzkH8uyOKDqQky2NY9JuP44YO3h/guw/45D6LAkNrbnv+sgE4uDUcjt3pIalG+haIu0OuTS/Hj7jsjPXOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783385314; c=relaxed/simple;
	bh=n/icCNzBYhHNFL+1sST9BwABH91ZFCN0AbzUXQ8sXmo=;
	h=To:Subject:From:Message-Id:Date; b=k0y1dmbb5bw+08Nd5gnC7jJ228jZC/758OgmKajaNqrg3A36JsmNmVnw5oPpPB+Jwlzcw3VGv2j1QY1ZN762+juG+bBj5KrdF8988BnILzOElwQ22YUumRSF3NMNZ+ESmPJXTFab8tEfd6loq/YXu/u0k+Tdg8VgeQFAPbhNlOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBnQCHxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBnQCHxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD29C2BCC6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783385313;
	bh=n/icCNzBYhHNFL+1sST9BwABH91ZFCN0AbzUXQ8sXmo=;
	h=To:Subject:From:Date:From;
	b=OBnQCHxhRuHL9V5q/bQLQP4MtxJP0ptg/3v6oJ2ihYLQDo8pIGiRogY1dAZx2Ts/K
	 FF1WVuWTCCqcs/qHctm9HMaAgmF8AjiWmOGoP85ImsT1yap9BdRSeFLhhRHuSrfrra
	 lcUx7Qnl/HWi6h4mn4XnNCM/egIRdlD0k175QpEqNmzTAy0CblN4PE32NED66iOEn+
	 fHgBEfqRK8TigeK5WPyBLzzmMF2laV3BvGiDd3Vz3cyKJZxT55DGQccLEQr6K1igI6
	 aaAinzu+R5eLEqQ635Y0gpDqjoTlv1zWwPe6l4pMLY2hzJb7bD0j0Xi10/T13CMtUq
	 osW9KfOLyiUCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6C8C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338531368.28962.12002364689720441456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef0dcd768303180780e6054124905942843007cc8c6eb7dbb14be5cf7f41383
Date: Tue, 07 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783385313
