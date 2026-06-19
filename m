Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A47138237B
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781873194; cv=none; b=HKqtZ9cZLqOtQf9x0j5XGJ+H/nd/2aRixL10ehPBnjWUIB8D6ti4EWe5ryiLzTF58NgdMwOsGdkZxjXecfmI4LvHlBuiYFlOmFNYC1l2X03+9X3QTW7znDbK2GSzu+QVwzS4wIwDMSk0eaYQNJ56jRq+o5OnNzcmY78pceICEN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781873194; c=relaxed/simple;
	bh=AynKgGeKWgyUbkmZrY2e549xm+10JpyfAzdlu/SCKho=;
	h=To:Subject:From:Message-Id:Date; b=oRwuBjq4hmLsMQjzxm4dRBO6hWoq0+C+4ui1AAE7yHnAy0B7GEakBbPVC8jfFs1IwRdYW4DQYrrP32h7ttO9fe/Inye9aUq7q1dkZKHPEG9lYvVX/KFXtLojhqkHbIOC3pFz1UwxyP7Im8JPeMYliHJWXsOCsJxAS6BE9kxCua4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQpOZfGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQpOZfGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9303C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781873193;
	bh=AynKgGeKWgyUbkmZrY2e549xm+10JpyfAzdlu/SCKho=;
	h=To:Subject:From:Date:From;
	b=SQpOZfGhAMKlpjXCr060+9LI0ivET7rjkHTw+fi5gzn4yNzJf5tbX+04tdOpzSON3
	 jSoS4uOGfW9bil1XGYFQe6tGUp8T9n/2m2W3zzUQd7UvkidEFVNb1/pjdFgLS/fFzC
	 f7xrbAOrlzsNaZR22Nsn2euI9C3y604iSW2ANp57fUoB+dyINh/O4V0xk3bXQFKP1a
	 O2pR22KanMowrHPF/bdK4q0pBpvjV+cZtFbtlZXO2IM1Ss52jsFNgEKJthUDZJI/q3
	 ddTkRh58wJHwG8p7LwGwNngCoA64zZAGXMBQrAzz37oiQh+xBuru79BLo2+7gjBQvl
	 a+xUiGyoD6dgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA49CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187319369.15641.427382316442729808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91ec9ff8bdefbbf387e6f0e6df37621e81b21f96498ae7fbcb5ff0b68b5f0f6
Date: Fri, 19 Jun 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781873193
