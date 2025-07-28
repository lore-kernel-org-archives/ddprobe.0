Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C15D1E376E
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753718994; cv=none; b=Lc9TQrtHjUW5FL5hwBgxuCE5Jhqjx6gnaR68oXhdnAj2r7FFU9oKpWStuXo1cCYSergKJmxz9Gy1bteGsVloRCPAtcaHhViE/bRnw1xY1zbA09HTC6u3Lbspqukw4F6Csfxal1S4TB0fvSY16oRzmaOpnz5QiBTG596PNjESih4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753718994; c=relaxed/simple;
	bh=TXLpycnQQQUFzooK5miGwFqs4T1ggdpdHZCc7/m3Ru8=;
	h=To:Subject:From:Message-Id:Date; b=hUSD48nm6KtYgcl+S/439bBN9+IrhFgZro/Pigko3gsY2fT8y3oSQPMLHWzQAss1YFzF5EdWKRzIBgQIHQCfJhfSCvT3X86hz3/2AC+l6+yvt+hYySyvgx+7Mt4+AwXbhny3uemBPRlgsb0QK1zyPEMn+nhOpds1mNsknW+zH+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZjFF3iz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZjFF3iz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E6BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753718993;
	bh=TXLpycnQQQUFzooK5miGwFqs4T1ggdpdHZCc7/m3Ru8=;
	h=To:Subject:From:Date:From;
	b=jZjFF3izzdol69a1qVfiDlS51x8AayIOU8+3TyxGa1uA+d3Jhm+D0mPCnvDh8rOlW
	 ovnIopJpFZQwc5f5wWdjedJuzyNIQfotYsJcrfnH9jW9tF6c8/reuBP9aUAbNXZBey
	 lp6DqWvSJ7sKoppSXX90gEnGYXPO0qhP2hntAIiBvtEgZDLNVVTIg6fvvp1SvWBL2s
	 +hQWn02Fprr0lbkLAw4s9UUBZ8jUwjsQtdCZk39dZhQyHbDFRzv/jQHM0LlwPRgXEl
	 G/+SWvJ3ktPcw2lLe6XomSGlXuNchVcvTTiNdFohUvvu2xC3qYepmC2YVRQrgAq1jR
	 PkwdyHiKrnl9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D18C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371899358.25190.10797833639266928011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c937980c701e32e742583a274583ead2292cde07676683116cfbaaca355c0b72
Date: Mon, 28 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753718993
