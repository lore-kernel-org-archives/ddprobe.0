Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4134F14F9E9
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725525954; cv=none; b=GkkbRd5n/3aIn4f2AeugqqKiggrFm/tk7SlcEYnYnZb+88m/notF0Vm7dJtrWqJ/wMrfAkWHba5NFfNOq12nOadJm+r1laBL3G3vbdv9saM8vh2FzT2U+n9KbVtC73KdGaNsf6OI8fiDUrFiXWlf6PH14WbkgHuoucV90DAaoeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725525954; c=relaxed/simple;
	bh=pddPnctSZEuzy4mhh0j04uD7bSdQInlz68KOW/KY6mQ=;
	h=To:Subject:From:Message-Id:Date; b=Oe89bM3IJFNdcYvEh8yLNDwr7w77VzMbvM8MXIo35z9SvizFHooGR/5ogBvZ1lvyX9Y3L4wZLbA83djYM+cIT6hrz6KeSuqwDGZ5kVZoX9Usrzef9b7oETMle7Tnaaitxerrfqht0VmKmnVBv7fsbufRGKXcNTTKXuUWSz+6UQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i50KXdXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i50KXdXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCFFC4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725525953;
	bh=pddPnctSZEuzy4mhh0j04uD7bSdQInlz68KOW/KY6mQ=;
	h=To:Subject:From:Date:From;
	b=i50KXdXgIT8BWOBi77evkDFaMdRvK6pRnICSjPBi1aFdoTOVT4khcPnVK5YJC33O5
	 AaqH9/wnjJg8braL0pd5M4p2XVFpdLpdpv7yuOEZzXu+0NzlziC/wHPjweChvxZwkD
	 aEI0KQXMLg1fqcs6wHkqkKKjhwqm49DVqeJlMSEPXFbuOQzkwvEII7cgw9aeEcWPlD
	 RJEuw6uqhXuUbhAd+y1APYnKuCvQln+l++fmKYr+IPQKA/weu/2gsGZ9CL+1w4wfR/
	 gKu9Q9epGALSWFtzLEUiZkpXroUgR61drckb9FDsRKbXIJaC3VtZidTk26/6ISkWlg
	 jlC7s2UTGEIag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC88CD4F59
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172552595368.2843.1475417781541949370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5685e60229e2c61205b35d19ae60506e17b0190a64b5409b31a5a00486862dab
Date: Thu, 05 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725525953
