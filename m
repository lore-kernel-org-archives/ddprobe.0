Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F9716DC31
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719852323; cv=none; b=oPk9rnrBINXnFZMF+6YLgiB600xODKFSUXbuX59d1SjFureqWzTs1cwwnBYFm/yhn3eaYOJkT6PQpWsSYR5z/OudEkMSjH85Hr9vcKRj1L7IlDSrIT+NZU9/H2TovM6iryluxCL1y6lmqF8k8EdxVlhD1EWcw886vdCOqdr8YFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719852323; c=relaxed/simple;
	bh=CRP31gzdwbgmc+LMWTyHvNKO4plceG5kMyvvxiawg6w=;
	h=To:Subject:From:Message-Id:Date; b=n+UfllJA5+hnOE/FfVql6xzvorCvBZcyCaB2fr6Ady9R4zA15MQAr8dSFJ9g7KjkuYRPjNiA3jy75HmVZfGpZciyotfT328DRF9nMldTTJ2UbqTKfr6hA6EIiJ0TGG6EGGjogyrub9xPNjCcmYvjZ9oVxPdxokQ2DChd0VdN5ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLZBnSDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLZBnSDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E401EC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719852322;
	bh=CRP31gzdwbgmc+LMWTyHvNKO4plceG5kMyvvxiawg6w=;
	h=To:Subject:From:Date:From;
	b=MLZBnSDo4FhBoI0BM4oVQ2A3KmAoh2Dk4FA0HrKeTd08ROXmaU1ztrgKibwRvVMNz
	 haPgBYIBm5vEhOaEl6Q05S/wByY59Ize0Q4iRZsA+A4tqYLaS2YJdqvL3/aoEtaXWL
	 7SLb7jJCxs/CCmJcJsCUtxio8FeuYOa6fpfVy6pcA7KmGP+87iI4Uyr9QnCXsj2RWz
	 16y7ZxO5CAtbBc8LOOBFX6dXLadBHc2j/Dcu2LT56kqXvxNg+eFEb5IkfKmLJqt3Ve
	 JQ07KPN+AkcgE8pMZ5picdmifim8ljzFEvHWLNluaFtIw5rJqbdxLls5ufg8LVdu1S
	 mvsbQrjCNAAvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D10FFC3065A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171985232284.3321.405058900835237520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8bea2d1f23a147ab288706728954365cfc3cbbec5be6ea63fe071153e926ee0
Date: Mon, 01 Jul 2024 16:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719852322
