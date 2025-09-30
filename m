Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355FC19FA93
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759196994; cv=none; b=ZEmS/pxsozgq4SIrbKKr1wrPw1LQxYcYe2MVXaZBsEzrxxmKkdEpOQgCUaKaG8AkMK8088y8xyWN93blsWK2NOO4NpuP0vgpDVz+LUrGz9pix1h7Qe2l9b7lX7hkD+zi08Selqueh30AEEanWXbK5brm9PDE3ex8muD92NY2Nx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759196994; c=relaxed/simple;
	bh=AlR6wVOXBoqsUK/b+Lm+LL3g61LWqg6Usxh5xltaqms=;
	h=To:Subject:From:Message-Id:Date; b=H4NOESfh3+xv9oRveaPI0druLW5m6heRMRii5Rq/p0u15s6gcYMsOKwnKlLrOKyblrARivxshvNYbmF2VOsjkstA7sJNFE6aBFoxxSNtXD/N3/vOjj9qL+ZrdRxqPMz7G35FH9OjGpspN7JTF1t4v+7CHz6bqEduJqlV7IfIGwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWsJDagn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWsJDagn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F90FC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759196993;
	bh=AlR6wVOXBoqsUK/b+Lm+LL3g61LWqg6Usxh5xltaqms=;
	h=To:Subject:From:Date:From;
	b=fWsJDagn+Dp18EOH7KTt/LEJ6NWxd2ggMWElHxZCF7KEq07LcgI574H9aimtd4WkH
	 9ifaUrD1O9ptRYgbSlhu3BIA4jAQUb3LuHComKy3Uwv8GYyIK3a06tFtvZdzyJJSmI
	 elCI5oTZtRU4j9Md/hmV0VKHS/gaFD95pqaeKyLJiPVLw7J3CThCaijlw8rgBuic5Z
	 3kHkKz2qKgbtBmLD0knhqwxsvftgGlHqzcEnuc44xI1dNNLDoS2qHhdJY3Q5HkUPve
	 4A4I5hClmha+ZTxOImg9IllI7CDtzje09zRiFIfo4O6eNmne0ORHqR7VsxPrS6qdSz
	 EG/7El7eCYAwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA6CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919699358.11784.12827471492230151469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 173e81f8070a900d5e7da548d08f22dfa52d2893075c43448f13c8edeabb8153
Date: Tue, 30 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759196993
