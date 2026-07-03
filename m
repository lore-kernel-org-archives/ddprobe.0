Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFFB347FEC
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783055314; cv=none; b=RcDPYLgG0zwiTehtu/ux3UD+YUOt6RcHl2Hg3Xy9OUdzqQQXWvtVaf2rpFs5cpkpiF+YuowTz7Wz42sUKXBreNi8fie5p/Ba0Es+epdTNWxKC386n/JF/P2V7bwOvzBgZ9CL+ec3x7O8lmt5xnPdmGCnh1O3IeuF2fHS+yR4w+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783055314; c=relaxed/simple;
	bh=A89YbLwonpwGoTB2Mxbr0rO2tiNF91DMt/hMbEtA0ag=;
	h=To:Subject:From:Message-Id:Date; b=jr2qYnCQc+BFgFQR16g0yoduu9V1QpU4fpmA75+x6jLnnZ21cf0l9nZCrhcIRi6vMgZoaTeG23dlwVpPSsvtAV6EiAMnZlVsjm/dwLYFCpvo9hZekrrFxtnniT/wgTpI/ONaY0F1OH6sC7IudCeV/wfEG1S9anwMSQspVfAzTRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSoSgabi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSoSgabi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B05C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783055313;
	bh=A89YbLwonpwGoTB2Mxbr0rO2tiNF91DMt/hMbEtA0ag=;
	h=To:Subject:From:Date:From;
	b=HSoSgabi7yYSBLMhZYBy8pD8bxiUfJ1whxKPOvTUTVf7IuuMuaEaAa2E16lCmAtVm
	 +DDKswzigVKK4USKuNgZPXl+vWmHSLfDCaiicQNbIt9J6A94rtbjZ4beDEzMwVCWRh
	 oNdX78Io/49vTbCHxI6wNW1OcigiuhWjLy7RYdmyb6qcacdyJapRMeSQq9cwwfPHdL
	 nDQeaS08kRZUcxAzxocmDOzreu3IGZEWtg4sFcQUdSdNxpoZHP3NMF9m3POltJrscV
	 fqrC5gdXKcyLGky3NqiOEKZo5746rQlRNJqHfTdERjLOfw41iDcqcOdvqQmomTskEJ
	 v8VjbBqQkE5ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CDEC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305531368.10677.494510307842095174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50af0386db177021b65b6c227c57f47bd85b6c064f2aeac918d5ea21c2c6c4f8
Date: Fri, 03 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783055313
