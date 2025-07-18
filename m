Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B8421CC6D
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752878994; cv=none; b=cXuX7SMq5IFT92eBikwX6gLNDlg3OwDEyfF1Lw3ZFghghfRRTzuoyy2UyCsO6t6gws9Z9bLFsv8LSXwkOjuyF1Hdp8/wrkDUzTXUtTK0dfnWOvAGR5h9+B/ZoQxniSrD0iKDNB1/oNpFXoBGSamvnCdr2j4FojkjXAr1+RC+a6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752878994; c=relaxed/simple;
	bh=IVYncWALdHKnn09BFaFhrEVzPwi9V1OLaVbTl4VyJFg=;
	h=To:Subject:From:Message-Id:Date; b=CV79NJyKZThTgt/fz7XKMyqeAyZv9yuKj9KykrqCHwdg7k15TLxC1R0Pr6RXZOBr9Wvyj4Ph0C1JQF8lAmX2d+Uvce9b82eT3C2l4VhT7toCsPm8wReKH+LVtxweRRJKL1Y0SZJk2DDQOPLbh2Tx7B2T5SuLbrfDZVDf0bxYeuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ff3G0e3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ff3G0e3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2409C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752878993;
	bh=IVYncWALdHKnn09BFaFhrEVzPwi9V1OLaVbTl4VyJFg=;
	h=To:Subject:From:Date:From;
	b=Ff3G0e3k0qr/OLFI4NNg72PprpRV4PUn/qf2+YoPqyZuTfBCeM8ba/Ww8RFbcHMcJ
	 yDX9IzJCd2pXqdaN7h9ylK7F76EWX3uhaevv3yaZqYcE0dLfJtKL/ekh6fQHFJHr9z
	 ukIOp/Ur6+3bfDB9al1WnGLUL3LFBb1fufqZNRH5yWh8gABnBJV5p8LYgRSfDruIOJ
	 zo09RxS2fohwhrf36JYULAEKg4+/JfCzInYl9tbkPZFfkmWWNdhG/7VyZzOLl32L+z
	 pQo6lJ6MSpa5ASHVaIvk/hEesgi7lr6oRProFr4PtCU0/LHbbAWgkd4GxbpsKIJwyX
	 Mafc9I8dFEYNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA1FC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287899357.29617.7056920798994924914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a175c5c7feeb2923ffd311a6238c3d9a4c933485a5606114840bde4459e9210
Date: Fri, 18 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752878993
