Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED783EDAC9
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770309834; cv=none; b=AVeD44k0XUi0Q9pVjZ8k6GNh37vCD7le8/8lzyYkr1YX0wkkNypQmrOW9/paZSbrDjtPtlo3uPmoRjcqCSHHyid/AzNH0rAl0LhkSgvJmjHH1PtwmlAtElnDESLYSD3+1p6jNvcPnMlyNQ7aHj6RbvrfMCUyuKsW7GX7iiWLy8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770309834; c=relaxed/simple;
	bh=o8V5gcrP6OBjYAFBbgw2r67EEG7L83gKNuSq2XeOJIo=;
	h=To:Subject:From:Message-Id:Date; b=F+C1XwtnHY2nU5pnfHaNrjgpIfKTpwNkMVZy6wMKSCHMBCn6XdcyphS3K2F+ocZ+7XGIcicsTNwVIN0KulAY9o8Erwh+dfwmw3bUwvcfFVlYDWW+XKTA3yARYU9zgyn9FD76xa8AiZQkwaNP3kYcNdDdf54JbfuQv4WR8kGdg14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TygqeaHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TygqeaHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7E9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770309833;
	bh=o8V5gcrP6OBjYAFBbgw2r67EEG7L83gKNuSq2XeOJIo=;
	h=To:Subject:From:Date:From;
	b=TygqeaHSdgAuDMuAAzkFscKLbFxvLUN/oLtUFE5KWfcjlX5YxXzHywMiHiYrx+oWG
	 xNZySDcjBe5wj+UUfOLprhKQB6w4X8iP202Kv3uYC0IX/j2OWy7YQRSIUwQ4TYW0HA
	 q5xmWeJPs2FpDKqHNSwOMjthA3YiLEqFGXtWV530yGwbHU/TL6Nb6nunXGJlZeEPbr
	 JeE2G0EvdscQxPx3j+PMKiNuxoz4AxTcJH4zcXpKRIvNOWks/Bpu1H9P+F3AXcKiGO
	 +VIIWbYkTBPgOWYmh8BbHgcCQQpztMNxHzK7gqu09gwa2UTg5y+ryV467bM2FUQ+YS
	 jjmDTFIOAjDEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A454ECD989
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030983362.7630.12999046338943598443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f162994ebe8bb8d4ad3578f2e26e9b9c8956e0317a3ccbaf552c63125c13bd2b
Date: Thu, 05 Feb 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770309833
