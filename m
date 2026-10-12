Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A27C456DE9
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791827434; cv=none; b=clBeMev7/J8urUvPvkbk5KqeUlRkvUNmxMnCrdD1yR2HmB/ErUJe1jOzP+CxHQQyJe0GQHB5UO0IbmMQ+C/bKDLpBgeznNwZ7rfTWGApeiEEtLey+XKA3jts7BmnAhnX+aeGC1IwdSkrsyyupCl+luf4k4qAg3DrD9f2ETlbn2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791827434; c=relaxed/simple;
	bh=L36PBLc+WPbfjZtlzbdLcYcXh/H26xIMMkwUqikF6eM=;
	h=To:Subject:From:Message-Id:Date; b=JCj7OWEA+hyTt1mDDCmVVkXo8L/PB/FxhvdIYTfu0k3j5NlingqBZZArJlWKvR4KEPmvrDZsYx3W9+nQHQ3/OenOc8JIQ+LnN2ofPhygaZe5hr/isSh13pwPJyp/wsUZ/WNHkVEa8K42bTb3kYNrUk0IWTgaC//UlXc8ICm8+dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WO4F9lLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WO4F9lLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EAFC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791827433;
	bh=L36PBLc+WPbfjZtlzbdLcYcXh/H26xIMMkwUqikF6eM=;
	h=To:Subject:From:Date:From;
	b=WO4F9lLKD1KYlCfAVnWisl42UJEneF/osibED+SR+YGzI28XaE0ZsEpR9mUmZiHXP
	 T3RTUFdod5csEotd8tVEnaAMQFlwxJNun1pekrSpiQlRaERnxfYAz9gJOpFTUHGT1R
	 wyEBz8sK7OSG8uXsLtIwt9dPA33zCDCPc3+Yki9eKHUty5n1+/ldQ3kALCEs1K1fTH
	 QrMtwyr0qSbES99fQSfQZdAi3Jqjsumlz53TOUMqAd8U7wiee5XVpk7nSoKfoPa9sN
	 W+qHkYIjJykNPvKhTznzIBw5dXbhgofPOKpVSkgtvI8qedPMddWdj8Xy+eGpxZWkis
	 nT0OWjx0l03Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD25CCA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182743370.8712.14978754030870601928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d8095cc685d63fbd212165c9426eb066d773ff28bf20f530d9928128dd2c1b
Date: Mon, 12 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791827433
