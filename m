Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCB02580FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751858994; cv=none; b=XhhmaGjK3iF6nOd4BpTaW1bzOJl21CcOLhJdqq7QozQGmdj+ROEkaXIPBY1yyUiTZM7CGCxS8E54Sip8eCGurjZVOHpR5gtPRt9DF+En+ZvWGmmKPqW1ma0WmYCDCuILo5f4G+nWq1xfZI7tP+cu8oqmiG/HIArTN9xclPNrrjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751858994; c=relaxed/simple;
	bh=lmW37G/ThTX6O+SkBXhm6dBt+38d+5TLGMusW9wJ90g=;
	h=To:Subject:From:Message-Id:Date; b=WfGMkZUXYdUmOAi5o8EJoJ1xnKb1i+3DZHBjOeGeja8Lbj4zHxZ05DM8EJFGrLlTBD/gMBrrJsdGd7LXltlqohNpSwzoVZfKocz+R/aSag6swA83QRyLwUB0+KQvvso4ciD+PPNcgGYTMyCUOGGWZeQUcenwVka893RnrlZ6mV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4bzTVgr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4bzTVgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E51C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751858993;
	bh=lmW37G/ThTX6O+SkBXhm6dBt+38d+5TLGMusW9wJ90g=;
	h=To:Subject:From:Date:From;
	b=X4bzTVgr2yWkJBL6xfxvWbuH+v73kyyPlrv2F7pFsPxLwRRkrxong0tfBZmtZVZ60
	 9TRWqbM8f2FlZbVM5ttCtoqgUmQRcwIl++xaol9X8dAg7VntkBLScF8GJgNwcc/oyw
	 4TvAmculK1vLGgcyERT3NS/ZBBo7l9ZncBhCrZH8ia3LUPJGmIDUB1Ue9t8FlQ0eeS
	 5q8t/Xx8NrnEXSDzWAyQcWEZx+HKxbJ5gPqlCkin3cyt8WNSDizybplSB4ahgd0Srz
	 WXV4VJpRGPhaWHUbUkIOANz3VLkCHRy7ruj5fgIRBJrlzRnpHZVYEJ/iQB8vbI1vAM
	 rQSpq9p+llDBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F702C83F03
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185899357.27232.11846367437649010505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b205e92140794129364942ef04ab9aaef0fe2f783d3c2e44598bac3e28499748
Date: Mon, 07 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751858993
