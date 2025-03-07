Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4D818DB01
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 02:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741316334; cv=none; b=DajnZp4HoFB9CrDQVNDLf97h4pwGTgldq7vFM2HRR241vJJpSekXThUA6NddNstf5+Xg/R2iQmwiv6/zFGs34QYsoFwxIXrI3xrgAeNed30b5gFOxZeepbXGYA+lqo1xnEUQ53/izxRK9UJDm+2JOMu/zVQbBkDDwimLozwKusc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741316334; c=relaxed/simple;
	bh=0PHCJP7Sxj78yX0VAFVtKUEEELu834oGB0/lfwankas=;
	h=To:Subject:From:Message-Id:Date; b=dH1n9Nbx+UPKNvMq2OvnCfxxpzMl6cTy1teoO/jt0LPkAEnrpXN9UnZYedjVwHJNNo6vCVQWb9cjYjvFF+5CXxEL38bG+pQgIKmbn1B82nsKHjn+tVKpd3S3ydCwwMzQEw3KNV62YDCr5GTuMGUCIJaSPBvKXOORoR0d492yhDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUwfSU6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUwfSU6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1FDC4CEE0
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741316333;
	bh=0PHCJP7Sxj78yX0VAFVtKUEEELu834oGB0/lfwankas=;
	h=To:Subject:From:Date:From;
	b=jUwfSU6s8fOooI4IDpXmnUBxTnlp/yYCE57rQy68F9kSpdw5NWjVkkl255oGJaQSD
	 wEeeAZlIdw0IF7Qto6z3cRNTPZ/bKs+s8aKre2bBB0pp72wIx33VgCbLOpL6scjK36
	 b2Anf3bOLvazMt7cpj7/5gglRW+vxCt21Lb/mNXfzdtdQPXPx4Ns5TpmX5pWQQ0gXK
	 RMFgPP1aui9CtzXS4OdhLWtnMenlduM+TyQnSfHzRiGZwcuVXJHbK593kZbzEP2oAn
	 MxNBknClQ6FJq/dPuXaDzJJ5kfJ6BurdWb7KY6gPEXMxY6AcVCEZXx5ICip3CEfWI5
	 bJJ3tkpWSg/HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCECC282D1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174131633362.11117.6843949987990096834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6502e63fc71f7cfa30c2d54151b050494cad842e512392b911c77c60921eae7
Date: Fri, 07 Mar 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741316333
