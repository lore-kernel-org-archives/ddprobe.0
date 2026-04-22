Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DFC340293
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776872254; cv=none; b=f04DDAWPUA8l2hD7wwDUJnV8zcp08EBojMfBorxyUaGt0IDeJXwfbDueEp1RizAxtXptjyCQPrn8YhHIEb6Y8HJYH+RY4VVCndYInpei58f7b+gvxzt1fzbxY6iP7SG5tSC0P12i0JpIEqPbKclDRJl/kXjWKLCdnd/MBiIFRus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776872254; c=relaxed/simple;
	bh=COx2HQISDTp2UK2puYj/04FmZsQFwIBJiDC2Ps8QUYo=;
	h=To:Subject:From:Message-Id:Date; b=rCi8paZB9ZrrGR7xseqfXQW7uQqcg05wJsTMwFu7uCvqfNAhnJ5A9sU6rSdrDghDeC4tO5nlkUICbDAWOE+WY12YryLGQTk0+OGYcyCGfWWGiDDunxy48p+2i5XwXHmkLgajZgNqma0TA3f6eCUA8jfk4cljcdKwOWMOx1Ya+e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5u7mS9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5u7mS9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0B1C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776872253;
	bh=COx2HQISDTp2UK2puYj/04FmZsQFwIBJiDC2Ps8QUYo=;
	h=To:Subject:From:Date:From;
	b=O5u7mS9NIBZtMbWs5qG+PmgWK7x9Rh81uQ2WnIoBTNR17ySmG76l/aLc3a11brRWk
	 NvP05grVjXZg6AkiQVZrNKtRtxkxHLDd1q9Wa6mwpHCXbY35K7hmgytJORRsPNNwxP
	 +N9Ga78rsXvV69ewxohGaVC+tmWQvjS8iwuVjiKo54rxut58KIKB+4NB42dK3PSgFs
	 VJQ8JeVMIHd5mL1i6GBzIbOBL4XZHeeIblBqysouSLqjStlyKnYS1vyVtMHGoPG3XK
	 6CkSWQm9jeCUIlR+/+HoACxeTs/JuXyMA2QLp6iFINqeOcP8txwYg5El9jpbbDFHSZ
	 BrmizfrLdfebw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB47F94CBE
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687225369.24500.9103747062906541874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1637763957649e12cf022a93c3d02737016f5097930493d9735bc6e6b07ff060
Date: Wed, 22 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776872253
