Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBEF1386DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 21:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741727935; cv=none; b=DoGBrLvQQGJh9oY43F3j20bU9yK4/BUjFRuUSpDB9iK/ps3ZXuJJhp9dvvxG/07p0VMBas4I1zxACVacgbpVHDykWw40vaZe2mWq3sP1RVNpa2uIqPKOS0RyX2By/Pp4FDoOvXO/BtgtQW2Ex0CJo3poUPKKsts74+zvLaK9grY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741727935; c=relaxed/simple;
	bh=Nn1jLiGaoP7m/QkpbeqFSLxRI9SXvvq6Z5i30gxvxzA=;
	h=To:Subject:From:Message-Id:Date; b=PzgkQw8U2rFLVo189HYQeBeOTlUz18rxNTYXc6AiIdX80UT/zgGxtOBe3XimJvJeSztt7yPD+NnPSI1b683tp2GIQt7SjESUc0Z67hr5ZAyoJjfilAizTBxxiDi0ZoVCuEwL3k8HOK0VtDJAVEbf5yu3ki/SdUpMNGFT2b2eRrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/zrkTZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/zrkTZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71F7C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741727933;
	bh=Nn1jLiGaoP7m/QkpbeqFSLxRI9SXvvq6Z5i30gxvxzA=;
	h=To:Subject:From:Date:From;
	b=T/zrkTZNc3zS8ITPZQ0bcajtT3dP36wV2W9B92k/ex/JO7l8arZSXEfTliyGGD3Dx
	 6AUS7Z8j0zLyiIJRodS/Zqwntl68OEh/EheFvGVbc1zQg8Mv4WN40z1rQsjuDYj0PF
	 nf1mIegeePJauQvOBThnwpuyuLVVjztaTYz4Rvm+PtWM9MjCwWbVH6GTcUfRJ2Uy61
	 Pa5y2yLK1P18KsOICjpY6mdOg7NvCrn72/aP+JjBb6D0SS49/XK/CIhBGl9iXIVXDR
	 27KiZfR6QKIU+JuV4NUT1TItnqAQ2RBIKD3OQk19lwM/bqd+660/oEdF71gpbGUoUY
	 nJA7jH7dMWKdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A49F3C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 21:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174172793365.5562.7603941532965531229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758b8069df1d2ea5f2fee90d8dc645ac20dd215fb4aafffafc72e33825406775
Date: Tue, 11 Mar 2025 21:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741727933
