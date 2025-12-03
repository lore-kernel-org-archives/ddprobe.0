Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151AF229B36
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764771774; cv=none; b=GLIVQvcLTvGxJEc10xWkPLN0q0915qlV8SEWRLWnKdrkWb+9Uk3PgCOWg0wpV4xVT2Z1QTjOZxeIWDf3rVvipub3T7src+xcq1SUJboEWdaA4cpsketGMSa6581kxc3Yy9eSTPbsGdQRPC23eueSJV/dEAwfvwqyhLUxOvQAKZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764771774; c=relaxed/simple;
	bh=LQc6X7vbQASlDwtfQ8L2I+k7t66/qE5UnWdfhTmriX8=;
	h=To:Subject:From:Message-Id:Date; b=ZJuG4H6hJL0klyK/m5fTCWULqA9QkdfUrQNGUtBmkj2YQ1QkT7pSwmg4wNB+yacB8otE7FRDtiO3CpDW6vUBXzbmoG6MWgco5zTZM0/jJhunMTSAhlPyOjo4gpwEQlYBCIpVMhRgtYedU5ajkuMMC6pQ+qJQ7fgBPKfB2pCb0zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHwaIt/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHwaIt/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDB8C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764771773;
	bh=LQc6X7vbQASlDwtfQ8L2I+k7t66/qE5UnWdfhTmriX8=;
	h=To:Subject:From:Date:From;
	b=UHwaIt/O3C7+Dj9mM/Q6VbcP84pHUiKOSBSEw1y1Gelg+Xn8YvjofK7z+LZz469iX
	 ifuiwwVmpMZ1yA2F9RLYgWKhHP0AsdB1uuqMfg3QAvQ96waFN4mSpJxEcv2cTZdykK
	 PlmrCYID4Zx7rmk5uavaUOPt2N9T0nuTKYPYwY9i6Se89dao0+O22EB38GTY0OBEzw
	 vcxOmPQmIsynm1E1tibGSEeTdIkkz8NaY8Hoogq1spCIuXoOavfMHpChA2hwqmUnML
	 LVN4Xk0h3FxFfd3pFo5t4In8FiIgJcvWtWOlQFzLM/CMO9tP0ciIZawrdCvnw1J/ZU
	 A2efVQdkdcOPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9085BD12D6D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477177358.20872.8560568869527303848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee95b6ca9d60fb2c5f52b95e43153b5e410677224dfa2382101d9ca97d2a9a15
Date: Wed, 03 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764771773
