Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A72F39FD0
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718951543; cv=none; b=BwVB9LxxCwVFQpK4+DhuVzx1Wc0W9PMgbsJHccoO3K9vwOYWMkr3E5TjTjnz3PqZe1YVYPFdeH22fIbmC779xeiKFr1p5xF/VmAvouTjnpavLak50vc2YU4fHp7GUSQMYCSV88U5tDGyx6yGJ+iwi2yntQMjadpkr6L2praIjcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718951543; c=relaxed/simple;
	bh=xfaX+LNl4j/AsqNL8H7f3nM67GYcyKEOJfKyUaTbXDc=;
	h=To:Subject:From:Message-Id:Date; b=f8nmyTl9gEebJWskSC2L+5LK6n7ExXmUsvuxdmtSARCJ4akgfYpB7651yK8imW4kTlcCaWWkLUPpT5CREvhWtrloMj/PNewQnf1tMO0pivRR2bkmP4evCsbXxnIMFHBI+1Yzh2GpemA9jQAr/Y4nTuZ5whBth1pVacwpuqYwNF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaaXYl0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaaXYl0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9493C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718951542;
	bh=xfaX+LNl4j/AsqNL8H7f3nM67GYcyKEOJfKyUaTbXDc=;
	h=To:Subject:From:Date:From;
	b=iaaXYl0+8ZREl85IPezAGJiDJCAoX0oL2qCqHOob7G9STgOSMUbe+usfeSr3tawNC
	 rdIKn0OJ6/0z+8Mm5Rhx22j+PMICQ+ifm8CUTIzoejkwij8alaU3hLxqJ8cyesmRhf
	 0KZ0NY0JpLlBizAOWWXZS7b19h3fzuGKvtUKz9hWBWkcuN8SqP8VWSkY+z9BGlNDHL
	 OfWv6RouIJqAoEkmX6hYYClKiKjvQ0E7DXPNboCavaETl+IE55Pc/+dyl073xIKBjM
	 CCcrejd7X0hZtHx2DRlz1j5b7XO4hbcP1tp3kYNt3YZo7PYB6y+RITTOBAOondO+88
	 aLtT8LeeU0xeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BB5C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895154278.25742.3084586620048164066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c04e7f81c02017a17c2eca200f2975716bbd2864979fce8175f5812a1910a5b
Date: Fri, 21 Jun 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718951542
