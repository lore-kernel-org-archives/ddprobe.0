Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616D212CD8C
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718236703; cv=none; b=DzSisVtWSxSHOHCSBJuFCvDlouM3KOKzn7qs8/kE6QRlzrNnQEwFlBUATjU0L6DWV+xNhM89DckoDsm9qLAn3s7ng9nO/b4wjdp0LDu2RpYHDG3mEZVm+z8WSITQm+PE56k6Byl3fm8mmjbzUq/5O8CY9K70O5SNCTdH4L8VB6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718236703; c=relaxed/simple;
	bh=g7ARxZTYbivZLQxJfapweTBzEjPkQoJvgffIAybubNE=;
	h=To:Subject:From:Message-Id:Date; b=JCOQrPt5ri2cHDdHO22cJHYEfyXsBi/W9ZG6Da0oZT4AXxa6DucedmR2cMpad8CTvFW19VytxRqz2f6jfq/8fFClvODMGFNhdOVRTSesOxjcfG4gVFqqxa7EtPyKC/u9MOzFy1m3eHYwpBwZaQXsp73G2mPSEP++rtaaDq+c2dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwSG4vNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwSG4vNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE276C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718236703;
	bh=g7ARxZTYbivZLQxJfapweTBzEjPkQoJvgffIAybubNE=;
	h=To:Subject:From:Date:From;
	b=IwSG4vNCSRl0ix0w6ZhiGZOXShupGtBRC1yS+JWjYRkslYJi8y9dFe9Qu1zlLMFfZ
	 80J2soHjUMMI0wd45QDzUk8P+PN0UjJ7JaAT9djDcg80iw/YPaDaPftK22QvYO1x/N
	 yU0nMHdcXH1e74XlZFVbPeMDHFRYXWJtsjeXaw70cxH+aD6sZbrOHiA5BuOqwzppK+
	 VuJwOSO0z5eXsFiQfrpIpWVtaq+hduWPfRdx5KiY0qk3AB6bsQjsSwnp5BS9F2M291
	 j80p4k6OVKECAIPikZjWpK1aHwE8fa7vNK2X0DmFuH5rWP0HczmkAjpzWc0dbQ1JDu
	 CrodB/y08gpSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5EAFC27C77
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823670280.5698.15149937358443862981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dbeac1a90da883d273654fecb6c4faf8060ca9628b6bfdc1d9863085cb5222b
Date: Wed, 12 Jun 2024 23:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718236702
