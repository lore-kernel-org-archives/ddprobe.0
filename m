Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E6431A067
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766846034; cv=none; b=te1HGsGJlFMAc+m1YH6oztUwfGhZ5NArY4sg47wQofqgW+6Q4OhdV6D3U5UVSNxCiiIe6mPqAGN3S5zdAeuSjJx12hdZ0s10ngJLuCFf4W2v50XfzrVuYJxyEjTo3YK5Qzpgo/egL2rGks86Q8/l4BeDsqWoGgzVBaRnQkHmrI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766846034; c=relaxed/simple;
	bh=cq1+z+OW+ReJ/wixEEw8qHA++2/TDYTNY3BafWe6USA=;
	h=To:Subject:From:Message-Id:Date; b=FUhnYiiB7vckLbAt30EUD9gySb31pibmIG76bIpYc4MWSzvuCYjBEcLbc/XDF7LOmQtOv+R9yIXRRpPCllckCVPfLEhYU1pAXIbReErLpPM0aO8Z/Iju0arFUxL7gTbcVgv6pYHtKsFI//WqO4Wv+o9Mvf1GTMS75fXoMGHVnaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIriQLGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIriQLGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B004BC116B1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766846033;
	bh=cq1+z+OW+ReJ/wixEEw8qHA++2/TDYTNY3BafWe6USA=;
	h=To:Subject:From:Date:From;
	b=EIriQLGbdTX7veIrnPN73NO8S6daBA70qwSYI/IGPudYbehmXA/tEGSrDln5tuY78
	 fL65+GswqJPQ84+gRCNEj3ytrZMVXpHR4rbzff6txv3NLLkTUamPfegqRm81poAsNy
	 dWvJd/Vj3rVxGdj5XaxikYP934kdaf+0Dh6TvCfz5YixAduQzLEIgO9lVYLffaOgY4
	 eLM8sPMrQc3WprwlX9wOPg53+xqbAPRC33Ayg6IPbRAJdBfiFRkc5FWF0IlMsV3YMr
	 co2JlTDUEwmzz/7G39XqXoifxzh2GZEnjCtaFFw0Xa+ITlIK9EGzLwwu1xNsxVLnPI
	 WX/kzeYFbkh+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999D4E8FDCC
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684603360.3738.4748279624193788528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37184c9f07097adcaa24c3016ea9db5b64e61eaadb9098e251954441b27b580
Date: Sat, 27 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766846033
