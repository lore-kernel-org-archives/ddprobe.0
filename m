Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC0028EC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732842354; cv=none; b=MQMV5qvBODZC+G7/I4Gkm42HkSByLeRoHGQ2cTHY/fCB/C5I9PHPAekFQDgjj3DjX+k9i8nfYjWjZoMoFvapxBlbko9NL+9+zYI4uY2/zyzuYm1R22Cp3kS1OTQZj+1LC3Eo9l6EgFBHy2SfxhXvw5n2u7JSAPPWUsPwKPyZ6wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732842354; c=relaxed/simple;
	bh=PGb+9qhGu2FiNhEdMgmtyvBBe69NzZa3cGA1Tt+bxno=;
	h=To:Subject:From:Message-Id:Date; b=ifUq1/GlcQIECQvuwDBmc/Xvxc2W8q/Sp3ZRBkdAqj/wX2xcSRfaSkpE64CFEclNoxIoxD1YjmsZ9AyE3xFPDlmiGXzD9Qjui7dj+/5u2c6xq30ZBK4QoU5teZ6DK7JxuAIrZUBrQR7uBV8fKdRPMkKa1rDrCkOkEYxofIWA29U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuyKzVP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuyKzVP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E7CC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732842353;
	bh=PGb+9qhGu2FiNhEdMgmtyvBBe69NzZa3cGA1Tt+bxno=;
	h=To:Subject:From:Date:From;
	b=kuyKzVP7U0dmkP628rXDcKPA4qfpZbGOB+W7msga85u3nKZpl10WqXPWXv2KpAMbv
	 /BnfdprZJbsO/Wc8LQIbv3boRRcQSW+QTqSb1PDNUijBQMD1pEFw7j11lK38qYwqAp
	 fCTG/krBROgI8uF87Nuqn6n+SxvgLMC/orch1btKQ4d4Pv5mVpfOaFtq6IGUh8uWt0
	 I+UAMO/c9yj1nXoSkzbnLyvJXTTBAvYPmDT53A3rRUF5kecWQ0UiFZBKMExJBkZjC9
	 hp3pKEZcee7h0zbjfVfWx3UsmncbrYbfFskDkswIZOUdk8M2ZRcKnqjrF6JURDN2IV
	 +VHWDyTMnoGjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF1D70E01
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173284235358.17494.500073797834549863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca142c78f7cdfc139e4528384db5517e521016f41a33e538b4b17bc3a72698c
Date: Fri, 29 Nov 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732842353
