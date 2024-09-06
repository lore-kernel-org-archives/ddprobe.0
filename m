Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152511CF7AD
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725633354; cv=none; b=qb3xEd8K+VpcV9y0ZYunOsx1Q+UaRG5G8pRXupQU2IoQs1OkB3p7ZItVjXj/zEASPh9Vdi9IdGw1tqDQ5tBCCqcJnFUTwxsZQsYTkguWNIIrkBEdZWXMqltTYE8K+WDCFo83GXHpTSigntIWaJLPP/0EYeez8yDTMuUNPfRglHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725633354; c=relaxed/simple;
	bh=B8jzX1seelR1Ly3uXQsoC/F0VVQ9w5Q/mw+lfTNRvKM=;
	h=To:Subject:From:Message-Id:Date; b=fLDwiL0F72Vzk59nJ20aOxLITt3ARFkb6SJp8U0s9N/tAd+r1eLJNPEDuhFWdPuWCPIYc1fiMIMBM6Cxk53prOg80tJGeyJpDiTK22JwmM5m0PVkPL7F9i2CFzgajov0VZUiSzJM17AqsPoZtLv9x0ctip+K+sEO2WDAmaHlXZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX4pSFq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX4pSFq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2C8C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725633353;
	bh=B8jzX1seelR1Ly3uXQsoC/F0VVQ9w5Q/mw+lfTNRvKM=;
	h=To:Subject:From:Date:From;
	b=qX4pSFq67AKZOTcib4pt7ANAz9rGxHth4IksjTT8PIExAYlmN08aOJQf9VjJJ5Aig
	 3cGnVgTz+82rmmHep3eqYqD1QAk4LrAte3oIJn6bA6c89+WLAQZDpNBYxlWbA3GV5f
	 v5UJ+35cE9KF0uX/ecfQzC2xq5+ND4GLHGsPf/Z1YVHmr2+tans6vczqkuTfB2Qil6
	 KyYwloUfn/MKheDOyxn0K3/naWMLGdz4SbyMeRoGRZlHs3RjAALN1WzzqDNsUFJ0vn
	 szOvHq4npl1gnvqgGmMjohA2AB79kfOdM+e37+Fhf7up/lrysLllsBnpspajvriZzm
	 JhIvzZTf0+oFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8BCE7B1C
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172563335357.7727.12596414645112397513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68be28ba569f0b348646ca08bd90006e69e4adb73965e1697dec14ad6cada86
Date: Fri, 06 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725633353
