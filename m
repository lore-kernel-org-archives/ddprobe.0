Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292E630BF66
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769697834; cv=none; b=KnNc5/DPfAGHkHNRZNo9GGCwj2wHn3BdrIiBWalQy9PFGHvuWvtRgRAou+lxdVJk4n5j4JArhmin/hXRPzs0pm+ydCn+9DGQrFPplF1y6cNORenM+dL4iWYfytH9JtGmhprVhL487nTK/yJRnarZSsfEA1tLaKcPtNPC1roQb3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769697834; c=relaxed/simple;
	bh=hDyoNTzZeUf2qojmuXuDatco4tEetvLqC6BdPJackp0=;
	h=To:Subject:From:Message-Id:Date; b=guLTY+1I64N4p2VOR45wqmK17hugmoiafz7M3JPZH6hupCaLCmOAk3btG68wImlTO7bKavgxrCrouqYwOsVeP5hW/PqhqRyCfeG5Cyjnqt40BE8WFBSMcm2c62r12Coxga16/TqHgkmQjRM3xVMa1lZJhnHltqfhiTAUQJrE4/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5UERvG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5UERvG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3A8C19422
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769697833;
	bh=hDyoNTzZeUf2qojmuXuDatco4tEetvLqC6BdPJackp0=;
	h=To:Subject:From:Date:From;
	b=s5UERvG0DzYUNORHd9LaPa3ZsadWrL1AS0AQfn4D6Hz9VtHzDAjvlIGWNiieBzVW+
	 Itjb1XfM0rZTgh8bLUhLnxMwEPWtvDPkyH7EVzdr75KrMIY0jLeeC57T29Z8wN9O2z
	 +lrbrSgAXuxVjats0gSbIzb7gvmqjtIVLui+o7WOsEJ59sqKL/kplq6fCfDbxkStQq
	 mY9VtNG4RKJcUGU/nVXrf6Kf1M3IRGCsp056cV5Iv9QgzFyEBnfAs7EmRomLo244iQ
	 gzlK/kwW6bMfP+L97D3JISRptN4djcZuciGzyAQ7Cvc78RbUcrncL6KhxTdLAtKtlR
	 fRLprExS/1Clw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F60D6101C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969783364.2233.10421093574877099621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8ba954d0d510bae34d8c4074cad6b4a97538aa3875f50c56cb66754c702f31
Date: Thu, 29 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769697833
