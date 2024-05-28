Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF151361
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 00:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716855263; cv=none; b=hKpZgqsYZNOlm6sLyPbcniEk5MLjP7XXn80cqvHedrHzVn26MdzAWFCghWuYb8MkgCpf+itJYamRNe7IL3dEsQ8C9ayCIOnuInzUrYj08E5Rl+xuS82vLRGeoCREc4V1zRrQzj0SVE6ptESLeW1yYXvwJ9Pg30rhc4BpSiZQlfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716855263; c=relaxed/simple;
	bh=kMwJl8ETrjGUwzFDRKP+ERJ5YetLZ3sIlfYLjqj0D4I=;
	h=To:Subject:From:Message-Id:Date; b=lN/eOvLCg3CAPb3Q7asBrnw1sKBo+HIn01uK3bD7vCjeAvkaNCxU1V3Fvc6NdwU0Kly+Tm2w19k4FZqp4dhV4ix58+eUJp4vbInykr05f6g1BO2run2nz2fjWursSArK+zv/Moi3OmR+raGeM7aIPG/w8xxylQagoF+vhYazKGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDnfG0dG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDnfG0dG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEE8C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 00:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716855262;
	bh=kMwJl8ETrjGUwzFDRKP+ERJ5YetLZ3sIlfYLjqj0D4I=;
	h=To:Subject:From:Date:From;
	b=tDnfG0dGaxtFD8LbR7UJE+xHSjIbcxsukglCCQIgAZzyAWJ+2c2N4HJjqdKeac9cw
	 nKGlm0vxXhcx6QE8NUUAo2YOWC9C0Z2DMwnOHm1z7vbYem0PMpgKS4o/oOEWProF1i
	 jWeA+RBBaybbZ4FbRApYTxvaL9JKSSO1qNNZWUS8wgyLluJFGhWAz7nsVs8TFVdqEt
	 tqYJGlRS8Ow3w0jQeATCs0f3HIbISPes/dgNpj62LY+qMSeGTG4MpksPiVbTXFAqzy
	 pdK1zLgFB9eBRNdMtWBRpmtAFGaWBxTJo2OXGLjBTq24v46njzSUYiTGcG0WhITtkR
	 PLXsATcssvElQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7539C25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 00:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171685526278.3170.9577049739770409925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f16a405c74cd23bdefcf3c54d748c0e1cd166949a2413f34873f7fc4fb8e1bf
Date: Tue, 28 May 2024 00:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716855262
