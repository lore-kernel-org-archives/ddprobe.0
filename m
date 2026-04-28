Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7743F0772
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777376854; cv=none; b=j6jMwjtqNJW0RoOUrF2yA/FTbdMK9p6TYJ4K09LppE8hqFL6U/aAH0DgYKSJMrOOq+ECaUl8D2+D5sPO5m8bPkewidIAxCTEXCXtDona3XnE/Y3HSwYZc/Q8ut0fuozSe4nSmQCsqpuhEZk9azM7y4vUxKIzE7uekKNjW0HrELo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777376854; c=relaxed/simple;
	bh=Dk8EzPwHm/dnpPXv3RY96wpKs3kfFkzLKdR6nTEGA0I=;
	h=To:Subject:From:Message-Id:Date; b=gGgewxJzi7LpsZOiAQbwC72d7AAvkCyTuQYF/X0txw/bgEfNBQMnGtfPCeglojeA7z2j6GpdN1Q7MPZ9j6X7TzseXLxPRZYwU4VyuzTjsCNpMS8Dqzlg6718eufTu3pl4Hl1P/fFLiSIOD10P0K86ruhtnHwg1rg4na7tNvuLTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rj3JLHlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rj3JLHlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A95C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777376853;
	bh=Dk8EzPwHm/dnpPXv3RY96wpKs3kfFkzLKdR6nTEGA0I=;
	h=To:Subject:From:Date:From;
	b=Rj3JLHlXbZr2HG5BXYgiTdbx/4AO37g07WCRpxA4TUppLJtks4EEga33bGQa+14Tv
	 +pl8IS0FtEHfKqJ9j+vy5m4rQgsnYVtvSjZI6Ts6FOfQSHXn+jBGkZkJw4XWqtE9AM
	 T2lhK4pA/Ce6yUVaULagw+330e1mc3ID7zscGoEEwrlFBiDA8FdRbUZdmPGWshI4u+
	 i+fuIkEWapq30dRQyktf/Kd7fr3vkMpXIdfbzSKJk32VvV1lKkzu1DlCLr11C6QRZM
	 sWnQY73ET+hpPrBOnOqOP5dStRSLgcg3AijCWAWZREmTHX8z4DX6hAlyu4lHQKC52K
	 jH6n37M4fhX5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D71FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737685368.20920.15382125040250405185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b64cccff05bd21f4b0ee19b5fdfb47db9c3805ac59c20fd55db700121cccaf2
Date: Tue, 28 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777376853
