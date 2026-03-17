Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B193BFE56
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773750294; cv=none; b=sogPYE5bRj9DQ9ECIKiEVyyquFrxuv7eAoP/7SS2h6cTcgg24vW4qjJzBMTBxXw/aCXc61tGP/eOBMe4N0sNFwnQm8W1t9195lUlmLhh2BHcNzQUsoI4QTr1jjczZlcm0GBYv/i4HopTVZ8kkk7h1Q5oPPAO/8MshCX4wVe3Doc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773750294; c=relaxed/simple;
	bh=585ytUwZ2o24ucZQO6LY680h+daOBOF/uK2WZzvTTCU=;
	h=To:Subject:From:Message-Id:Date; b=bpiRbGixZ/sTAVUmlQOLCfM1zPHDiN9g2hYPYGoXtsMCQvx/EbFh1MJu7fP+Iy3ezX3ZLr7FiMSgWE4/B0DjI2r9qTvU13YQqH17sHWeIH3ZWfSb3eQRv2gPcscJTGlS4Y5+05VgoNLsQs86r5+FXBgGxmc71i+qZQmiwFTqBeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0CfYnCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0CfYnCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7D9C19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773750293;
	bh=585ytUwZ2o24ucZQO6LY680h+daOBOF/uK2WZzvTTCU=;
	h=To:Subject:From:Date:From;
	b=E0CfYnCbTMXmGArNEPx6fiJEvzQVVk1m4yCvzGVQcQqwFz7XVOXb2Rmbxb/FRz5fj
	 rawE4KmwVWNkBs9/pl/8yFT3PxuV+NG5hXZbVdV5I2R2sr9Fd9KmQif2SBfLkZRb+M
	 w5LQ0UbNu6jDdESc//oOR9uEEaFAauxO8uvcWwdBn6+xtV+dY4ycSf5S2/Zz6Me422
	 xoLbH1zprHZVjozPvjkZBzRdrry4Mh30j+wo25iZcjPxJp27o7Mq0yxZkAQ6MXYUdt
	 HSf2KXgHsf+YadFxBEsuNXQcxsxy7Ie4Yj5xOtZ7oj/DlAVsnvKn9K9cOea7zAMtmW
	 woMImIKdGb4uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDABFD875C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375029357.12528.6235470650794190575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1f03a1f7b3d0f8a8f70e4dfd40e316ac5f9de327457f5a96c917175ef99455
Date: Tue, 17 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773750293
