Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4553A3D5C23
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785960634; cv=none; b=iZeGp4fcIHm8ayR58j9rgv+5K1sgJc4Byls99Gxl0a0BfCFwdy+zhRp3FGHz/1uPyPazX2HplRZmEDKIaQCqU181Jt+ZbP6il755sUvEV4kqi/nehXCVRhaw7E+F2NWsxZkKhY32aaUWgiILT4IbJxCvNxlMZg8KtOkZSH8pViU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785960634; c=relaxed/simple;
	bh=ipylrTc2E+FiH4Ia1NigfwfqTDFUGggEbqUOIqW6IRM=;
	h=To:Subject:From:Message-Id:Date; b=pLB39mCSajVWNsK6Q1AeYRhgsZ+DFHPCxg/ZN3a4KGMmvZBxVLs0JUJq1oYFkNuOtbqrMvYDug+pPF/E/ocoJHb+y+L43J3Ye4+Ca6UKuxX2WYqMomDy6Sjqhz+6IY1eVCi7ah+VGwVgv8lMgSjs0Af1sDstnaTPrHzqGP8x7Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9hQCxgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9hQCxgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFFAC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785960633;
	bh=ipylrTc2E+FiH4Ia1NigfwfqTDFUGggEbqUOIqW6IRM=;
	h=To:Subject:From:Date:From;
	b=q9hQCxgvd+mFaTPlseN6BFtzZTidykmGKsfm+BW7/2XfLQMOqTJssezcrh03sqpRB
	 ci1ax28BMjXhXVgvrGvvydODz1wf0sfy2dnJZ+auYmB8g6BMEUeIkl7M7livcdGuli
	 X1Ch7t8ODPeeLI3XoQ/q7dIsaHX8wCLYABjlD4IzzJ9237QJh/krYjf7rH+DsgieqM
	 lxT0WVkpR+iPPaEa6z5JsDXo6VV2UzGYpJn07ZFmazVeMqY73Uj5jwg5SEMhddJKyY
	 wItpKt+9ozkiHbyIwWisLtunCN0638uxe4wBPNoV3Xl+//yLfVHGYYt8Uzoa+MJQhU
	 IaghIwGRjnh3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94EFC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596063368.30742.5408380758858712945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96726a452527644f9fa847b035c0398eb96cdad633ca65b70b87c526f87445c9
Date: Wed, 05 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785960633
