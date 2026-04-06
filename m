Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD34E571
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775456134; cv=none; b=CaEpBTYVcMW+vfpClc1pAQgk68LB0Yf5mpLHV3x8M1Vo+bfCOIyxL6TNQ+JAxCnJ4LxBEB47RRIKner022xEMNmyWN0djoomTdqLumItAPrlSDA2LSAIHvktYjHXFrIXZR6IvpcD+JKbj1qEplNCuzbM9P//j4ekPbgqRAbcsWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775456134; c=relaxed/simple;
	bh=ufdF8J6C7xTalFEvInwAHLeTadmntOuyF03mWbHuHD8=;
	h=To:Subject:From:Message-Id:Date; b=faU3CvicWvrPJkEwNtj3+fm+Oudss3tiBRHtqBurQNLUIuxv13BCpfGBjjTE+tsaghN/NI9cMH7slBzbgGQsJrwIGsbcZk/7WyCo7dJsSUsc+itAeapHIcBCNtXBlXRJAFXASkqr9AQgGzIQaMC5+9KHiC/MVU5/tkoxJyyko1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbzvIC/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbzvIC/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF921C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775456133;
	bh=ufdF8J6C7xTalFEvInwAHLeTadmntOuyF03mWbHuHD8=;
	h=To:Subject:From:Date:From;
	b=GbzvIC/uKcSS1fQU7UbhSmdziMnBS9nYEP6iNRoPfrG1UbnbztD61YO49uiJnhNVY
	 MI6Z8CPh3uoRYcebKIF7c4CxfjuHBSZq3NOZqYFtQpsm3+6jGi1MkXYfdxlW+KZfTF
	 +XLAeeMe4HAUqH0lfrpt+AsuAEFY1iBv8SdzfLmWzvXGrP48ws4HodMiXpYe9MlZQa
	 lm0oZ6MCzByuuII3OKkYnqDuqpKhkJeZ2X+bpr4YWviR98JyckH8xe5q0fxNhw9H1T
	 BDWxj7errttaHXV7g/TjeQ+ntJxAVoYvuCiFrYtrjGphXmOF3bSG0Uq7otWox+zBce
	 K4LQvfnqRhqag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B069BE6400D
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545613368.2229.17114978658615728827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3870737db31fb1c033a5754666c229bca3559459d913d8bb6384147e35dd5a0c
Date: Mon, 06 Apr 2026 06:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775456133
