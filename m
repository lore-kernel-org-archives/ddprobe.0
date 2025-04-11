Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41978218AA3
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744391394; cv=none; b=Z5mV5lhRL5Ar9Ygv1B6mTwl6GLyKBVPE+LXh4HeNiInshxKGJYZfTlX1vHYHPJkr4lwZOz+3PSWwevijbGFC+PYZpOr29Z5d8xjh1wmsND5Tx355I5RLixUcMW+UobPs26saiU162hYQlVKneq+BlkiZ9kYDMDQtf/oKQRdqnMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744391394; c=relaxed/simple;
	bh=huOmKDF836fqKK06zffMQwUE+GhDNN+D8ZhdHVH9vVE=;
	h=To:Subject:From:Message-Id:Date; b=YfU87vOOwADw9lYznMVkixg1L3aZSJeo/HluuHEggV4IWngHdvD0hsslR3YrkoRpVGKbst28YwW0Ue0zdD1UxwcQMDKjCHctzxmI8HhzZ+h2puWcMuJGaXYnckdm9io1nc+DIiua5ulv239ca9ccoF/dp4bsfp1hDDzV9Pi8/us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVnUFslz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVnUFslz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDABC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744391393;
	bh=huOmKDF836fqKK06zffMQwUE+GhDNN+D8ZhdHVH9vVE=;
	h=To:Subject:From:Date:From;
	b=QVnUFslz5+JHljR7B36Q8zaHPKFWWH2W6K0xwiLlGDGprmAUniLaNgnv1JBi6hpw7
	 Mtv/vkYGBYead8gmv3m+pItFHtKhURysp5ppSyAmw6Xo2gnAj5O1dOS35HV1qPGH7p
	 sJuCAuIMxuf5oSn4K5jFc9rAcS0vHxfxWYDzTohACNxPy5evtW/wy5yiHnLQFPrcMd
	 nKTW+K0DWqN+yAMRkGDJlDGzGhmAgSCKnOJYzjzpXs440jbaVWQ3VOkmzwrkZ9FMQ4
	 dVIVITKPDDo9h4YFaBzaApE4r7L1ODDd63Rv80ac29jX6VBYVzHFfHSSYNj2W9AULf
	 X4aaWWKcA3g2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D8DC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439139368.19561.8549786759615238963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c319dd7e5634d06d87ca8097c7fbcc9a9bba57fc1639648012574920f9b31eb9
Date: Fri, 11 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744391393
