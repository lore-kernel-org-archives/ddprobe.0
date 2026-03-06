Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93B72BDC27
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772756693; cv=none; b=iU+nl0s0e0tNvWq0AWDZgvjIVsM/OdLU5TmLi5TVSxvfEhNegLnrB7PJDyx6Wrmz7FzEXG0U8t0iigdnr4129so3aTap1HQexyVHgFCadc9M1SfIgUbDQGCsigq3On04DMeTqEGhnS3Qeh5ECtoIssZOJf7JDte2iPEsQyNQmZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772756693; c=relaxed/simple;
	bh=0JwUw0n7VBmZeJvKpiBVEuQKJl3TzGLhsYDmINLlAWo=;
	h=To:Subject:From:Message-Id:Date; b=L+Um4LtcVdVtar0uuYKs0y+w4vbP8nV0YTA09APR6KcQ0s3fNi1sGvFzCbEl8sOctki/a16gACibNokRi3ltag2VLBdxVTZqAeT00ee5IyXSuDLvlhs2Xa9R7N6VLjumyI+GQvPWaGYL75vHYfa6UcuqOrRZeTXCZNBv7cWCwMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrHUQl8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrHUQl8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D423C19423
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772756693;
	bh=0JwUw0n7VBmZeJvKpiBVEuQKJl3TzGLhsYDmINLlAWo=;
	h=To:Subject:From:Date:From;
	b=rrHUQl8n6js/9MserCqw514PH2RWINuDpzIB3qu3fFy126p93T5iIylHPTrsw7i9v
	 0ip216RXOnL7loi/Q36btfG1fEignp/NfDekChJPB+BNpq/fHLnFcRObMZ676psyLV
	 GfbzZYxRhTfzEM2vaYdfe0qcZ0qGnv2sj55P7CR7PwfKnlvaU1oPc0WQUxuMFuVArd
	 SXRHlxwGpKCb+4dNfHdIxHX2ClCh22G48Xviiimh6k8NIaC/j/C5BhUpPXxm7EeCfi
	 DgXBpRC10q/daJThpSytsbkao+2xZuH2V+vL883I+8IX6SLSCTSV1bNKi5XTdJcKJy
	 gJP7sk+Z5qFGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE91F513E7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275669358.8303.6371733072246627188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07bee672ff9d401aea599fe63ae083173e14b2b180277804742cc2c034664a02
Date: Fri, 06 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772756693
