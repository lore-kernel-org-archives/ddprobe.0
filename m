Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A4C1F8908
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739522335; cv=none; b=DpXFsedWskDOZqxuFmStg/r3Dy5YsJenyPdBScjAEgFJEgtUjsawwdK9RX8MAyoUnvNTz0hh/Fzdjz2Jy/HokINbpVh1jZ0TW43TVAWaHsfvtWnKZSxop3zydBnU4dRzODB8RIklep86erZMctSfYzL0VKRBLOu9Uo0RE12Hjbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739522335; c=relaxed/simple;
	bh=KMnPfLXA2U59/re4fH9dsZINkJbgWuH21k+bJ4t20+Q=;
	h=To:Subject:From:Message-Id:Date; b=GnXODdYDxXnHsNLBCrqbiWfATlNUDimRZSUu2TvVQc9ZGEeiixIsFPN6dlcqbKFCkUfdRxNkterhX6QE6ZdBZ/0plLzhWhsBTllwEZ6NPvcS+62V2T0ZKfMSJg+0N80lGOx1zxQvwK6aUIHRynpPZinD2hlvvmVoK+i2y+aOfUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqsejKBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqsejKBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B485DC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739522333;
	bh=KMnPfLXA2U59/re4fH9dsZINkJbgWuH21k+bJ4t20+Q=;
	h=To:Subject:From:Date:From;
	b=rqsejKBt2HYdKs3h053NSewlXIC9EfHYL/MZd6WV6umGGnPJ3DhTo42e27pEf/tEN
	 AHJRqXm68fPBGWqyv1HESlYYFmVcl3xzyyXh6sD4t3wkLhLpwfilEE2nfcCCGm04K+
	 QJKgBHTZ+lwsmy2B8SC30RoGGBGX1KhwbJq7f/F+yGe2pj1q5R87Zgg+hgbXQOAbQW
	 DX4X8ykMksoEI8YfqVu6uaLySgvmhG9DHNU5D8zZmrhMNgJ4KzkT+pklrBcfdzJpcz
	 un1b/xag83xIvAN/BaTLh9CkuKXFOOcRyAEDNGj1ktpsIcPyV4RE0kWuqAMKx1ayKQ
	 D2C+2/vaz33VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38E0C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173952233364.23083.8629555120921963753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b686236da83f37cab8c563da14824795b2bc90ac7fca8f57472f05d426fa279
Date: Fri, 14 Feb 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739522333
