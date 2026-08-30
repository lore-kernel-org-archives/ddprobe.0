Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D45D34F48F
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788099034; cv=none; b=rfBknRmgWBeX7MhDqL9X58w1JS2J/4pN98yYmyFiHgDqIksyVq+nuytFHycifIT8qVfKWTqs/QP5zXmuu82lG330EK8J37imFwSJsNwsnCt6+gujt1y9CNzYVUz+F6921QuDXyTgjpRlSELCR0yAstPBAmsQQtREDHf5KlcbzyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788099034; c=relaxed/simple;
	bh=TuIOvi1tQrz6zBzvpeJGxuwnoOpzxELK00omrOxqR4E=;
	h=To:Subject:From:Message-Id:Date; b=ZvpoEwY9d2ajkjT7GO745rRMZZlUqDnicttRok9vNskaqs6VoBWmgNBKA7CRaDMiJtMOAQjR/jSjs6D7iZB6TVPBolTQrw5hYTpVJSI6UNSpd9VzTMeB4q6mjA+cUJ9X6Lh1D5NPv5BoLX3D1TwP3vK85E0z+SNH/LmK6WkinzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orwa9Yic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orwa9Yic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38C3C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788099033;
	bh=TuIOvi1tQrz6zBzvpeJGxuwnoOpzxELK00omrOxqR4E=;
	h=To:Subject:From:Date:From;
	b=orwa9YicOAlffXGAT8Q0YSDKrom3kIYnC9tFEFtqz81NMP8RPzW3vxQKEU9YfI0m1
	 UchqXqlrX+pdfEJHJboVnIzwQIkVNuGTMxK5UGTSx2Akjl68g3M5qmZPFdXyX8CADW
	 96WIr6c5pP6xnvfgOC1Qr6GEhI2B3BJfBw52VPkFtPwBIVqAQlCd4yzqxOCa+t5K5Y
	 MhRzvIQ09qkvqIco53ah8auSuW4lcqH3q+/xTZmItRg3LT1OW+8J70dfo8GrKx8vrH
	 FL/3K4/xu89mHczNse/ndlZfbYiBES1HYOko1qkzGEGm4Vf2bIYx5mcWwLhpRlojHU
	 Fikc8e1dvCv+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DDFC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809903368.14698.8542051574204483227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9302e078947f51702584b4b9e4d79c3104e349b28d6554a2f0912319b3448b23
Date: Sun, 30 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788099033
