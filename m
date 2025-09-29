Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2245B21D5AF
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759168794; cv=none; b=s9uC2MTIE2h6kzaz8NGyMmR0yDU0XouAt3pv8cSXauKKVK5muQlSlTgoGavRSGFKQ2oHCr4QhY5ZHrA7/jwA91qbOUu+rb+ZhX/V6jQibUEKZAVStZUQuCqUhEgpxhL6jHr8npZmTxscFheLmv0OVPg6DV8fgbjo0bWQC5k9KPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759168794; c=relaxed/simple;
	bh=frsSp0ALCv24wbvq2xzgNPXgVYMwgT2oCoVrKPEt1jA=;
	h=To:Subject:From:Message-Id:Date; b=p1We0Z3DlHOJlupOZMdhdwI4neM3XSEVPeMU9tVhkrIhrgSWcOV8lxtjygcdDmsEZpLV374t8uu9wvyAFxWzfAbXZLpFJmG9PYEzehdN/SFQnTjEkXvWBWoUuWPTYgWCARw/0VPqtcuNFdme3Kx+CQqNui/piTbm3kS+fu5Lp9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oApuqoUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oApuqoUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4FAC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759168793;
	bh=frsSp0ALCv24wbvq2xzgNPXgVYMwgT2oCoVrKPEt1jA=;
	h=To:Subject:From:Date:From;
	b=oApuqoUApGuRBO0AcIJAFUu0KtmCZmt89v9mxH++1Xqqk3d6X9+prVGd0ynuKGFI+
	 NdkK6RZ0I/MzNuNju6O07DgrmdFm8uoNRFrE4Kr2VjaoXDZtRQMdEMT4oe4ugPBV/A
	 jWgDmQ2hhPHFaHkbGxEFkb3f1d177RNJQGZHua2NptSnqjFir4SynEfseKKhmmiG2H
	 NHeiZftHfUR5V9OmRUZhsNAyhCHUJOhg94o/rZCexnvUhzh7acL7st3dmkiOZIwpYt
	 eioejx3NkPLF4a1atZP+Q+Y2hMt4ehc2dLEIdQvITQGxtKxx4+lr6dJXBuweVQJ9VQ
	 wxX7r74hFw/XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAE6CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916879362.27934.3151485653005451964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f088504d4d27389b6583772cdadeed37f3a99d035cb10eed07fd00367cc31c
Date: Mon, 29 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759168793
