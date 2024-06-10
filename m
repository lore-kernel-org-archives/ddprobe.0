Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B027A29
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 01:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717984043; cv=none; b=G95MfxwwpAqHuAjD78bFuT01M1DLbtfTKseGNE37txGSF/yoMJT1pH+zPpQciT5DEPpGRVPVUDRdm0ZSCuYqzLcuhdJLPWd7TKSxSoCRqaaWrUtL3oeScRQXhJzSi5O1EelqhAkn+7uVtTdmuqWisnSZXXqpoIQKDnCtSSoeH+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717984043; c=relaxed/simple;
	bh=KxXIkQNxhPYjk/slf6D5Bdf/cXxIAUz2tevgayUdo3o=;
	h=To:Subject:From:Message-Id:Date; b=khDF2ZZSTFHzJ3qH5I3CcDaHbbJD8Az/yCS3lNtfRoJ3f/vm4MjLqRBhLnYTENxZ6thUdtH7sMPYNSxuCpa9YVZsKp71q8foqNEPlNGam2oTfQLNxCrslGpqsX2GemP1C0wxGtIyIAf9lbTvxbt0FehRvDvrwQB5P9a1/XylhUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye9vzqTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye9vzqTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0E4C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 01:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717984042;
	bh=KxXIkQNxhPYjk/slf6D5Bdf/cXxIAUz2tevgayUdo3o=;
	h=To:Subject:From:Date:From;
	b=Ye9vzqTMmvD97UuD0+KL+dUx7s9zSdW5AKnGKAjPE4Brn7r04wbSkI2GNlk5Pkqfp
	 3QdZ1Nze2Lm5k9OBZ4qiYOobzmb+dj17Z+vockS3sZajRKZnHtqE2yObSOShrAPS5b
	 jRSSzj7IXFm2tthJ+MzTEosEiHXDTM2k++GK/w0uTG26Q88afIhfupa6VmDM259t6A
	 7SrIA4RBTq3kcxpXkDBr/yjW6zbI/xoCqYrIFKrR+0xdWI+V6XrkDoHaKR95ADP7K5
	 Z+1JT+VdNB8abPd1mN8HEY5zPaiTKX7Ob9CsaYRoJTdd4XbG+ljwibBLE09b6MGImK
	 SdXin7Y+D4jsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93CCC27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 01:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798404278.17008.9357831798785916507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae9afbad62f7fdfa09b5dc619fc24e122f22c35865486dd5e3462c8157fefea
Date: Mon, 10 Jun 2024 01:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717984042
