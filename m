Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A0F33F58E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783920514; cv=none; b=TC+7fou+7u2akOyjMMwTy157J/W/JRxX/ftxk+hQIEUTTo+Uwd/eyh/9a7DySPWU+uae51TiZ/TSiRU/ZYGD3nQrVYpm7xKqxPdlyQ5BpX9jCe9/dev2mDeRmDBxKHQj9xn5SzsQyHdXQh3gol76rALFDW6DZUd9KbZRdWkv8tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783920514; c=relaxed/simple;
	bh=ySh7zWu5J1YPn2N0oIxE7WrlDKn8f017lcZzaaM1d2Q=;
	h=To:Subject:From:Message-Id:Date; b=c9/hDdRwwl/hBVVQq/zfLcMeJGoaepStsMwmmftVjsXMbQQl1BU189q2R6hLda/rRX7hqwWP3QhUn6Kn38psNxHlBrs5iNltRmSqTxuxGyUTfr7gL9TR0tP5wmKAitypvDwf8cV37LnVvHl+eR48W7sqe7vU1CduTuYmeQcFq60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8UHHpF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8UHHpF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF63FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783920513;
	bh=ySh7zWu5J1YPn2N0oIxE7WrlDKn8f017lcZzaaM1d2Q=;
	h=To:Subject:From:Date:From;
	b=k8UHHpF4yH1Myi3srS7DXbJrhakXdgtdZThATOUA28Zj8hk7DKCfXxDPoR9uEJOb2
	 A/9q7iAEC3t5Nj1DwiVRr+PCjUb5YBHj7N7EuWHkynwNoNdq+cz2ATat01hfjc7cTW
	 iuF6kEFsKqqE/wbfUQICdTD+00DGd5YvKdmp7WRyh8QsmLR79Fb8lqJR95YsglfTdO
	 p2WRpJ/dpBBt0/VaJ/uP6xY3GYqjsZCX9HAC9bBSmZb8ktHbcPnWHPDCzPhIRS1/dI
	 5dby7ZuKE+mweWmcASjGJP6Xy+b7U0cO7/N7Tw1irAMCV8PCF8oQZyKFAjsDu7muvM
	 0R2wK2k1skfqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D14C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392051368.21355.12022666234366974551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74167c39fd1ddc730444ec42645725bb6267c213849b301b06f2804e836ccc2
Date: Mon, 13 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783920513
