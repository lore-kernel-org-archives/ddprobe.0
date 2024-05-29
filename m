Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E9B8BFF
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 19:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717010063; cv=none; b=Yu9V14j8PgqoLtcMUeZ+yQPVrqXksRoYBNuQIKa1ED02ko+4/pzkFKgh3flyd2DGOwVO9W68IgqjV/RcOA69BY51OQgZJXQ8kwwtSgj0GEnGYSeDyUWQrssJ3IRwDB8Glk+Ti6FI0u5fvqZkvkBPmYUzULIz+2O5asrWRHJN8Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717010063; c=relaxed/simple;
	bh=VLHKUuQz+po9a/La0YkAX/mwxrs9+lCZeDFfXutqDz0=;
	h=To:Subject:From:Message-Id:Date; b=eSSQ8fQ4Q3YAn6vM2VZI6hGUIQOTRi1foK058R4vOngKg2Dj7iKd2L6HsgLZLxlVXRIWsQTda/PNIwrgKuOO41YSJAXso3xPQ0MxyxstAwjP3aksCUpTcKGKbXjAWIwywkOENunGCyzEvjlX3uqUaUXXhDz6CL6Qyr3CDGTn2ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXzAY82O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXzAY82O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08FC7C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 19:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717010063;
	bh=VLHKUuQz+po9a/La0YkAX/mwxrs9+lCZeDFfXutqDz0=;
	h=To:Subject:From:Date:From;
	b=HXzAY82OUQJrEmr3+ICNfI8jW+jyw9M66S0Lsgkvo3smkXpuGBFYfDu+dxJGVAyuC
	 LBgB5XhLUJ4+yxzm7RU8PLllmHwC6PWM0+kD7KsLGInhwRnfV7kZQlMH2jYQ5X51mn
	 B6fHKB6EepocNSJ6ipo2VWiFI3czX6niWg1z68GzbOpc3AH8Qfbgv/sQeinHJbXWHC
	 1Vg+cLBadqg6UCgvYjR6fdCoBNijpkmUA5CITVV+jUzlb/gjvdRATUsFFowGEouydI
	 X6qhO3zSi2AZEVhQTzLxMUbv9+L6rlUaoZQ54E86NJhHFt9Ogejs8xQduRo/3RlxuB
	 hBdnEeqYpEDtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E440FC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 19:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701006290.5179.16860498093192778711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f8aee1446f6882ca561aa1729618aef4dcaca1ba0d13b633014036b58c267db
Date: Wed, 29 May 2024 19:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717010062
