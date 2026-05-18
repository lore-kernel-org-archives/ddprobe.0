Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD98384223
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779079834; cv=none; b=arGM3eAHEkBT5nJvv5rk/zV8BpREUwnQYwPGqa8Zivil9nFAxJtKzPf0ERyeExTM3FYeMRkm8+eH4km2UfjyneRp0rPV6w2yMYO72NAI5qcokN0eGuSc88AxWOV4ynZvOsQC9Fjel+J9w0hOi0qLgMHVxLP0kW5a1A3YxSH0fnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779079834; c=relaxed/simple;
	bh=I4Jkp69N5L54L9wPEfMduJ/av03zdt8OeHjDAubici0=;
	h=To:Subject:From:Message-Id:Date; b=IYzJfi53MxxYc640Nvb/LM9DKr6FtJBT/1AJfyQf/G1E+lxr23ARGr47DxioqnmoQPZowUWJPlVwGF5d/RYE1lfzXIOBfhNxWfwkjrBjptixkGf6rYto0czmyPs7kyFxl27lI2B4HATfiWIUvjo2RDoYHeOkDYDtxkwdBC/e170=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMhiLZ4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMhiLZ4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD771C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779079833;
	bh=I4Jkp69N5L54L9wPEfMduJ/av03zdt8OeHjDAubici0=;
	h=To:Subject:From:Date:From;
	b=fMhiLZ4ZHyUoocwsYFSfPttqhoXyP4YvAFMRV0Sm29An+yE9rx61U3R0/k17pQ6++
	 DUqZ/mo47X09nwv5FOtD7dzbxHNQmuNjOKNnPNLbiDF3rBOWfGm4RA/SlZddFzr5yE
	 5mOb1PazERif8BC8jwxkaLLHKbjYJ56NZuiWbKBlJton+0l8qRTxeQ41Zh8hvlPB4a
	 Dkyc9aTkDygor62ET/cSmwaRdcmYuFbtqnaUn77FAvM0Ll6pZqhRaMI2h+H9sShaaV
	 fd12fBYEXhdwci9womaVvZcklNwwoSlvuXwa49dMKggmc+PaINayHhiuLUD7GEtq24
	 w5QIQoZ4qscug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC13CCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907983369.30591.17517715757882931765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46db0709789f066b5fb92edadcfba248f3b1dffb990044d1b4d0264aed329127
Date: Mon, 18 May 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779079833
