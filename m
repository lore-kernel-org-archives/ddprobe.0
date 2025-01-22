Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDFE8F7D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737512154; cv=none; b=tzw+lFcahQvmp9E86HBxp/zm7DTyAGNMhJpRofA+7IqICNvpdFA2uKWWxLc2Y1bsNhmpiyFqs+mkPOUL8Xhb+hAsTFhOdwm1aikYL7qaTsMZGaBYakFHo17Sx+NrSovx2JkfrpbONQQSY2Qgi+nZTIKV9xXmhlmkzuXRqYORTuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737512154; c=relaxed/simple;
	bh=RDwutGACYc2TerW/wBUDgYMRQ764krMnv7br7OD62Po=;
	h=To:Subject:From:Message-Id:Date; b=BrjMogqL0IDLSRUDJcUzV/pbQY7zXjI8m/PI866nWrBbhypklWvmzQp+934KL1+ayCLdo1ya9J5k/tP2N9hCohhQxa4jpo/kb+FSlefoDo+5BmE0ZR7n97VnKUwVkSTGoAj+V7yGylOwZn1M2gTrc+eQcbIA2KFxK48s/5/oHcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zdj8K+KC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zdj8K+KC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B226FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737512153;
	bh=RDwutGACYc2TerW/wBUDgYMRQ764krMnv7br7OD62Po=;
	h=To:Subject:From:Date:From;
	b=Zdj8K+KCzMLModdz+xGlpcxOhq4iCGNY/VWQuMu7XRo/Zy048Dk4YsQ2iwScC8+hp
	 4Q3eRJqxffpLJcfErFEwCn1gYfy7h/cOEJxdHxDPSZTwpox/fiXFa6ZObchXJhJx74
	 aiIVOnSEM351JhpCtPiF6edjlwECgyyIDX4uMZ1oNYsO73X9qqhFASaufBtO6UV/4M
	 WjJ6YNWNLgTJ7OZDhzzuVjDvGpYvgA/qzA29jzHr6QfHkkUkhpdhLRN/KBAAxnasmS
	 MzAIi/nBCvAp9bAxbiNd9H57mOSfaY9hR2vKioO56dQ9Ogb3ZG/o6Q8Fx6xP7htXzb
	 eepd1LvSjo85w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99282C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173751215358.24392.5296955372143642368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0cd9816da8b887ef8efde48c27ff69d4e310152f08457bdb26e2941cb1db98c
Date: Wed, 22 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737512153
