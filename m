Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D018727A47F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783053514; cv=none; b=OGMnoEbZ6IV5Xovt5eh4uack35zkv2hiwSYClXyzSR2TQ1z11Qv/24d8fG8zU1iGEw5rTxlEWVCs1KLkb1FPttXEIobZCGRo2BWrsdQ3NtRwrT9fi1UqWYpa5V3Aaa8nRMpwJyGkpZDDVw+DLtc1rZYUqL9stFnhBxBql1/NldA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783053514; c=relaxed/simple;
	bh=s7Uzk9fSeLxUsObcfa49vvn2lX42BFx6Dri9k4p4SnI=;
	h=To:Subject:From:Message-Id:Date; b=OgEvXbxvC03pIutfG0XKc97xFuFUmR8xJcia/za+ldFixGXbSXJzU3EPE2TefR661E/vbOOUkTAtDU4tX1o/TWckgo+Djlge9p0bQ1c2okdH349lZR7tEcEFOS/HNFi+XzsrSLdJLNY67r45XHCFQmxIEFygL53UGkProLpXZ8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJSCJGZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJSCJGZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB343C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783053513;
	bh=s7Uzk9fSeLxUsObcfa49vvn2lX42BFx6Dri9k4p4SnI=;
	h=To:Subject:From:Date:From;
	b=tJSCJGZz8FtQtcdUB3LUGLEh8lxBEyKgJEgUvwzTqy4EmURvgwLYKVxhore/B+5ie
	 HSHEg3xZxjCIwT3BH4llGksvN2U+ds8PBt/WMV/cWYi2IOiaPTvpFiEtQ/5QuTW9v4
	 P5l+b2YVFG6ZgKuy+7bt6OLbKN14xm1sC0fPE6JdN2ylzxHapRRwmwX7NF/AKhbgkK
	 XTcT+GugF6m5NKYKLnNQyE9lvqShEQ94kkV/wg0zyM/JZI287XBhuaHPlk88R6lDmD
	 gyniTX2CaXW+V0Nj8s1k1f1CrnzMfjEcAvCR9dum9OrnwzdSgaO9FsrpHpWIDXLQam
	 yqBtnj4PDJOwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BA5C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305351368.29344.12902934040625472603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6ab5e4141e9eaaa1483da28f9bd5ee3397cab4f5e19c63bb7642f8ef9842a0
Date: Fri, 03 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783053513
