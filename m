Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D21339EF05
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785439834; cv=none; b=Cb480q1p68AgNJ5yxb6pVQ5tTzntWOe2SWFIC7XLINiwmmJsMSw8pS6jkRLTyElgDoIOAk02QIPFuFGXsAepenCfVeNqrYh4fQrnUErvuDicb/NWtq4Ja36T3aFeM0HMZkGEWBI5Gk+hlhXEGIeTSnhBZBcz0S7gHTIH7UhL++g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785439834; c=relaxed/simple;
	bh=29JjcTHXrP0arSMMaa3u7ekmt9gUrRynKpGSBqGcxKo=;
	h=To:Subject:From:Message-Id:Date; b=m/5jytvIj5XHbyltdmC9SE+A5//yAuhGOt8G0sz4OW0IQcInWVlI27t0K8amss208B73imT14J/3a/zvzmeC+iRdlVQVv8szYRedSa4ExLhCIEbZpgOUNlobyQ1SYZ+0o7p4h2hYCtP+YjscHAlRVSpPWzpPyiWjp9NhBkR60UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MH8imSIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MH8imSIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8E6C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785439833;
	bh=29JjcTHXrP0arSMMaa3u7ekmt9gUrRynKpGSBqGcxKo=;
	h=To:Subject:From:Date:From;
	b=MH8imSIP9vb3s5zWor+0qmNhaOB2mCud51wYJGP1fwBTprajGjJb4qUuRWBlQaTml
	 Z6iQmAk5G+1RWPEQ9sQarEwg4/hdmF7GP/jcGCAb2HUNIPW11VBoGrWqxglbB3jpFQ
	 UpBq868E2s6utuQqtavG2QaXmmxGOKBugzTfD/bt4H/o5DCzolpQbk7CU9qZHEJY5M
	 3xLcoR8evmaDB85BjaxS1Yl6do8nvv11Seefm3A6HkuULFDNuIVvhnWomwjbtPaRoK
	 XlegXpjbvWdRtMAqPaErelwqKNwMHuqELLbP+nqBHv0hWhhlzjEDtlUQ1zV66s2twi
	 rDXrWuv34/0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9030C5516E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543983368.20035.13380689544126937907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4d58844771f8dde5647ec40835f2ac478fce18e9ec9a0bcd211e231e8efb18
Date: Thu, 30 Jul 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785439833
