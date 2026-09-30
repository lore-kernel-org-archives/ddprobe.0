Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D23D4477E7
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790808634; cv=none; b=YYNzrL7t5xcoQ/1O76sVwhWBO8eLNJ/kqenGMy2R+13G/LMT2xnnd0qPxMbwXnu5hRCfqZ5o5waC8ZI5A2xGcYHoyo6DQxR8FigaZoZxgLUuFxpHEQ4PbncdJ1GQVp67W610IB9kh/9eOyZD5XTt66/dGrLcKZG4OAzxhutAYnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790808634; c=relaxed/simple;
	bh=OTDM1d6Z/2+8/oDmtDO3JjRJQLbXlDYRuwLpPnnhTcU=;
	h=To:Subject:From:Message-Id:Date; b=dhfv8U5IUjEnEb1EOFmaR/4GBQMDZK8MgenEMDO8SYmkmEmmvud5mlAbBWh1SCe5BPHSKKQyQlAThHlDmKj9vQrNbWA5T8UUz7Jz5gTRO8USU2SgVfdoLcY14jbHjhrOauWRTIKck3wYzMY9lY0U0yrl7mTN8MbxWhkCfHcLemQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqrTm1js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqrTm1js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD23AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790808633;
	bh=OTDM1d6Z/2+8/oDmtDO3JjRJQLbXlDYRuwLpPnnhTcU=;
	h=To:Subject:From:Date:From;
	b=QqrTm1jsPIlyH4HJAsYsyWJKvWNlogXxVH03YHo9e71cGKmCL+eAmD2O4Q4CQoszK
	 +9I9NkwjdIioqGCRIhNVvvnWtQc7rBQoIIV9jBQH+fCjo04fXav9VoVYEK2fOlgtbj
	 v1daU2JUQYZmepztC5weN43QtuZnNkZ9q/JS6Nxgrg44OfmhXlupG2vT7LZ+dLANJe
	 ef+CGJIFI3cFECdCf02LANVjjt2NxLMFwVSqCXVOT8lVVQnKp9gtHFN/bP2G7laz/S
	 vwQn30S+bYznftFfxvyBE3Y1nA/76ESzQeZaFopkWM4bjUDtGKLsl+WBr9Ks4VrHOG
	 +Lrm72J9RNjRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE48CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080863369.5288.17545625875373459087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642a8243ccdb4275609705ccbb21415451cddd48585c63ee3ad7f3585bfb9519
Date: Wed, 30 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790808633
