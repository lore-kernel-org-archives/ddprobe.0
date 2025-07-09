Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291C31FDA8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752076195; cv=none; b=RNLed3SlnSNlWXj2ZG+OUv1Mapl1glirlrNofoSolGQWEM1rR+EEhy1rGs6stBh/uaatmvKMi1IGjy0Tq6HT04LmSiDFZk2ZOfs063794ie2O7lvHdxn3YNdWH3kKK0cA2L4MWLcY62Tt1M0FT8wPKGrjPhLTGoKk79vnThQhs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752076195; c=relaxed/simple;
	bh=PLUUTgqvXWPiUTkIhieD8aQU/qwhDnCZXAP6T4KyMDw=;
	h=To:Subject:From:Message-Id:Date; b=ZfvSn89gwQTbAfIJBjdS+KqDRN7SBKT61hBunwWBOrrBqnT2YHym4tjRLG1FltGO9bRMUMHQGbLKdOK94YaCF+/+xHCTJ/FeCgR99bKxy46olNN4/vO9ylu7oSDUx1IW5HKynzeX5nO+rv82PAXPcxS71C3ccfx8gVwYpDlPKoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmEPJsZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmEPJsZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0AFC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752076193;
	bh=PLUUTgqvXWPiUTkIhieD8aQU/qwhDnCZXAP6T4KyMDw=;
	h=To:Subject:From:Date:From;
	b=rmEPJsZjY7osk4z4lH5GxoZJYTFip/KmwayPw6WR0FbYytR2CdArG8jmkLsElfRUz
	 QEysldlMFREbO/KAv4Wk3zN+SX5/yZmZsP3gGuJdDXrHCK3zHCXtb0+QRj+8rPHXIq
	 4APmtK6GrUxkIgWVbRb+HnqxT+pBSIZb7kQ/oEzyGSldG+LDfVLThCBCAinb8bbGWm
	 xpie9YTyXx6b7uj3dQJgu8dgSC9l9Ndyx41f5xbeAvnl0zVqaeBse9fsEQ3hJH8FyZ
	 pA9b+EHs1EkRziK/z6pD93l7aAPV+VQudDbacaonItnu+vJ1X7YbWQQrNEg6XWAusi
	 p9Tz2VElPcnDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F511C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207619357.28713.2421317203226101303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca6bb5735dfa2fbf348122951da71f9addbbd04a36f41228fc4db41b732b802
Date: Wed, 09 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752076193
