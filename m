Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6043F393DD5
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756003194; cv=none; b=Dli5ZjmywYdsS3XLw/aWJVnsfyDl2UtpvmsTbSEocInoBlW5yw/T8df/cktkCS9FXrOwawsX1bjeEKF3Q8/udlu++aiG1q5o5ONWbYjx/4pIV0W4sc3b3CGNY12wiHnXZDhAKvi07TboeB4McD2QV5OO7O8KQU1pwPQv68ugDBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756003194; c=relaxed/simple;
	bh=SDnnZTkJaNwxlfmo2A3iQUBGM3DzpuFUXib/55YhP8s=;
	h=To:Subject:From:Message-Id:Date; b=Vjnk8pEdqb4s1J+aFbnvLmgWSyOBh1fLB7fnVqr7l3m7sCee/qwrG/kMov2AvcbDGoDUk0JSSn41YEt6x3uiQnbSpqX9c+Nlr+HCLqzF82D2pD748Z6SSuBwul/e7qdtq+H0aRzzj8Uh9BLWwI7+thlibCgeqsslD6SjaWOaotE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJUPVIjg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJUPVIjg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2367C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756003193;
	bh=SDnnZTkJaNwxlfmo2A3iQUBGM3DzpuFUXib/55YhP8s=;
	h=To:Subject:From:Date:From;
	b=DJUPVIjgphadnad9SQMANbxlJGogC0SZyfyiW8VaI9WhQl9+PgziQfDduU61EzARY
	 H/Fx/nlmSQguCvLDixjSAAPbTyrGJTZOxxgg+63ARTHpEq1Na6HU99keb+5+PWOtT1
	 MXT0BXNmfJJFsL1AoAmITR9xRETsDt4AzNjA+o7D0P77+gFDmcOB2LKiz1OQxxxpWA
	 7Gdo50hZ/xKwmkhSkOw+nGohf6PT4sTL17SszuzQJA2FngDvCzpVFVuycRFmVk0sgr
	 oiXE/SoVsRtKMXaEvAYS9Lbafo7SqNeuc+dXrNJ99YIyz5y6pdZCGAOqdwjGMGnKGB
	 1nZ3zrg9kjMlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024FCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600319357.21121.7585066532133690213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4070cd1e4ce830f9794037f98588f28d558f9d1fd6f9b4406b14228acfc2d0
Date: Sun, 24 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756003193
