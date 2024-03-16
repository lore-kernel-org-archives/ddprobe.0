Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092E51B969
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710614897; cv=none; b=VLE8iOHGpW/EEhD+mVoO2wbj2J4YZXN3zGUIwme+gXsAqW1mMFU/RSTv7AJadlWZDWnZRbZyGLeVL5pwVPSQClQWJsbQlD9JFVez4rSsoGFGC5bq6RdEHYzj9tfPNEb40yszwKp96jj+9t6SgnfaJFFRW0YE9pmfYWzKAl7jbk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710614897; c=relaxed/simple;
	bh=Wa8geNsfYG+WFfGauVFzwteU2ocqN6Cm/QeFs81HLtg=;
	h=To:Subject:From:Message-Id:Date; b=mieh5NE/CLzklYTCx3qtQDH01DMMybEGaeYVxUwTXOoj32cB3E/oQx+ndp3ePNSUucNKBh+FjfzuCSMIlrYkxWG+xZzMQl3lnhCkvtRSlAxWpQE91x0IJJJosJq0hP6SR4l6srlExiRTfzZyoYh62zEvG11ZV+yidry0TTAzeYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/ksgENT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/ksgENT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C00BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710614896;
	bh=Wa8geNsfYG+WFfGauVFzwteU2ocqN6Cm/QeFs81HLtg=;
	h=To:Subject:From:Date:From;
	b=F/ksgENTuVntctqHxYm11SABym9KtoBpDzM9INTDLbEuR/6kNN7wMbOptbNG0YG7C
	 X7Wdjy5mNRSXk/VU4DGZNbj84/CUgaMbV5KDLe9lK+j8G4lgfdIBIrwBybERH5R350
	 OgfFakd5HCqFw6eFAKRF28kHxoCaYzBpd4FgTqgsuvIBvriCawaJo2Qt0EEGhwRy1W
	 AtZYCF/xlaUfkmIyK45ZbO2oi8mHijfXROo/+q6plOba2aXWT5gkfgg/DydU84lpcl
	 ijbNzoDzc2AQbWKpygjMqaTV6wrYHItTt9XpVOhvBVtrI8gs+nJ8N5Om8f4MO+pbey
	 30JB24Yg5Xhuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637A1C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171061489637.27279.10052185777556214812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6961fca36725b6d2e651d28016a6d65d533ada41a3949427df2bc76c0d2ac00
Date: Sat, 16 Mar 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710614896
