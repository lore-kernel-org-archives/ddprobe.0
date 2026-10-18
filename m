Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C31B32AABD
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792365034; cv=none; b=Ps7qhsBRtMnOzpjgowZ7JFwcgp+dLaYeInRYAhjf2I3F07q0H6YGbpsIvrXDV59jucSln4WB21fpIEasysfAvWpngPUasOLYyX25UQ5G6rVl4dhnhhfoQnE9nb/ktJOag89KqOyiL72g+jJErPJ2DZHY7XKE79hZQB9UTNchtM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792365034; c=relaxed/simple;
	bh=ucoRv0dYm5uvatahAjbV5f8RyKYlReI3pEYhfCCtOhw=;
	h=To:Subject:From:Message-Id:Date; b=mU3XQzNitEWqmdXbhfJsXdnAaQmGfDLhKa2HoLeHFm4tDhTc+6Fhs589LB8FfPQ5fM/LduOQvv0NpALbH6O4PxZfwQat3Ns5+F/UYCNtyt61LEw4fb1pB5kUSKJCf3Fi2S1TCpDEAoSHTmdQ7p7PuZcZH1qu3NDOGUcuLYcvUv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3aTu3w3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3aTu3w3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF26C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792365033;
	bh=ucoRv0dYm5uvatahAjbV5f8RyKYlReI3pEYhfCCtOhw=;
	h=To:Subject:From:Date:From;
	b=R3aTu3w3SHLjBh0UlwKd/aW4uPiQAMGyoff0dwDPxpAHXRVYhxNvhWdi8S2Y6rgGo
	 FVbZQQHIkoUsxhIFP1lMkEUox/nSa2X+eWUJPDQUxMr6LSJEAf6Mogii515/evZNML
	 mmJs5yhWkwEA+wuxVvmKueIkCCrieU41QWF05WdMTZlVdkOsV155X39Mn8qx6jp/nX
	 FAdQP3937qoW3iFqIq6ogAyg77ctP3KWkcaSzHqpOU8rFVEJx1YM/kcZekKRDPEoUL
	 pWHgBQkhKhrendXW51pW70pROeD5z3A5liih1w+yx4FbTO+yX1BiNJ/MUvVLbNPanh
	 1h5W8UpNMTcTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADA0CCF2D4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236503369.21494.2495977678723752663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b23462929e584c37ab6248c4fd2e0839e085fdecfd5b8106e40d4942a55007
Date: Sun, 18 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792365033
