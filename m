Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1515A13B293
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724795154; cv=none; b=LKfKwLB3efx7G1F8gDzJQio4L1aDLIFISFQh2YJbPPoGEphYZKsLY25iewCku7RJAIcapEU39P5PMDXTMm0Paih50yUvh0QFAX4LjFj1ycYDGe7ZJDWRq5uB4IZEbNRWyrYnJdyXsp/gFAwDCrNgSj5xIx9rGWv98OeDNRGoFUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724795154; c=relaxed/simple;
	bh=rVmTvrrtuI4nlqGwFJvlJ0Hxe3DS/qAF0BesYXipMB4=;
	h=To:Subject:From:Message-Id:Date; b=jQCooHK6U7t1OZlI+VBv/9L8k6/GXL8qKle3spAfMhVAm2SbmXlrYuTDOUSY8wBUNAr1a2XY5+1turyAk/ETV6tvKF0cVpyV6jU3N+CGoCZrPCCt2icq+r0k4jrGrUGwNgUjD8I3cOUdgmEKwrOvNvrXz6K0ZSBWvpMRlMYmwNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERy8M+D/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERy8M+D/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8AFC4AF10
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724795153;
	bh=rVmTvrrtuI4nlqGwFJvlJ0Hxe3DS/qAF0BesYXipMB4=;
	h=To:Subject:From:Date:From;
	b=ERy8M+D/iLJM0RiGrc3v1xC+jnY7cfsAinjeLAmeppNd+iUU/3kKBbWVJOkeeykYQ
	 UZc42trmLi5HwKfJQ4JiXEuCgpNmT7IwUOv6YkLsgEPzKo1EoH++db2qPwHnfHGwih
	 uH3PCOL9pnCqwP0P7hKb3P+ILhJxyqpKODaeJWUxznAoTGcsqkdBG1rndAcvjOtS5A
	 tKvo835npnj1Yum6XSRDWyQDIs763EvpML9zbzfx0SFI395FNusy0TLotZfK367mJ/
	 tMT2hngLt5Kh5UDRLXChQOXoACImCELdv07a0MglPbfYZxmCqgneSmjorLKIGqtC9R
	 9Vy8c6Lwc99Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB31C54735
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479515360.14889.7062936367232031314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d009b977a62419a4e742e8e0f775bfa9b51e1699540c0f78c857e1d4ef6f76b
Date: Tue, 27 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724795153
