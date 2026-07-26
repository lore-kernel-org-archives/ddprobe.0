Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CB2173
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785099634; cv=none; b=rofXDytB/h5BYC2LQboomFhOu/I7qKws70f3GT+PF3upFk8M5CgDiiW0zvRbiH8aebZppABihmqfWVqDTrt6Dc2Igo/dOU6XEyN2O/fsFXmPZmibELybt9hPQGsjh7c9bXNWSZhjBw+49k8w+6COWeiZTS75IPd0DgaF2gh56P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785099634; c=relaxed/simple;
	bh=C7k6szA587V32BMpd/MrXHMkSkCQrIpUSd6cxixzPgE=;
	h=To:Subject:From:Message-Id:Date; b=T+OiaV9KjRLr6iREwwXMKOHBQGoaZvVTAWW4/cMx2D/DfYCL0ZkH3SuFzBxucBuBxZflysxEvCHRUfFLMRXfme1oX+5+A7CvHZKkPENwikiRlSDc91WpoX5uRp4yMdAHrxsXNy1kyxvxxKE/HN/wJpGRrvAyahAMLzOxXIeEXyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXlCLpil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXlCLpil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D91C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785099633;
	bh=C7k6szA587V32BMpd/MrXHMkSkCQrIpUSd6cxixzPgE=;
	h=To:Subject:From:Date:From;
	b=WXlCLpilF3GsaNsuLYwCzR3PjakOiB/I2c0b2z5getxdx5RRzn6ZEWXCQn/RF2O30
	 Y42bMo7dTiTywBsLShtDLwJwjS7Z8xRRkwJ9QOEIdD+MqyNY8v9fp6X3vtDbLZWh9y
	 f4TWEnwul1JFIY+/CKtMJXtv2K80lYP/Oagira2VZY4nc/dz8D9OqGXJUBEyptFv0v
	 QrBVwQjvip91a0k0ycaFCA+Wly2Nvdlj5xvHcjPv0jjos//FcK193j3ihlbQsaWkuc
	 QUHbGn0uhtMcx0C8XFY7PMA1rKTO3tZ9/eriPrTHaeNsfDGhdDHkrdWYDQ6JkfRMeO
	 TJ5wKpznZVM1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2D0C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509963368.16655.18308046400881362189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc2ddfd9043c72f69f989e28312baa0cc4955f4ee9fc83c4a573b9a14d71b9a
Date: Sun, 26 Jul 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785099633
