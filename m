Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354EF2DF3DA
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780293274; cv=none; b=eG+GTWOnIVCqnX6W/KK4Jej5YeE9GOYlhM+Z2K/Rv3nD352zSXWlZg5wuZzlvlnSomp8SQs9s1bfrqsHSRq3Wy1oXZGukoFk9d0wSr0ka6cKjUppWr06Ir99hvNijWu4f3LnE7HiGLhl93BHLztWpBitraZa+9+NvoS/0YR82kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780293274; c=relaxed/simple;
	bh=PsyWQTYXdjQc+D5K52++tB+CawBs0YLMR9rq5a277Yw=;
	h=To:Subject:From:Message-Id:Date; b=FDu92KtvztrNvXhoow8XUBUOy7GclMtHXGqqs9iXVuFBXi5JnUKmOKUy6qAGz9vIpmqdEauA303fejM2+IgWdBq6doLIm8Vm1xZmka28sZcHYzpsTwNcbONUhcmhd4tmGtYZ+8YgeYRO+zh6Lg3oxI2NdJIOnkAjhK3PscwqGx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPSlU4eM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPSlU4eM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AF9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780293273;
	bh=PsyWQTYXdjQc+D5K52++tB+CawBs0YLMR9rq5a277Yw=;
	h=To:Subject:From:Date:From;
	b=IPSlU4eMlfesBdPT86dwtti0VgjL/wm+XbyLM4iH1Dy5txjJRT4p/bcI9dHLhD4Xj
	 kjgcwQaNhyuyeWffk9to+BONtq9th9eA3sNW7A6vBN1/wd6u6Brlf5Qzvlxanf+h56
	 yBQ3L6l/T7iYmnP7WxmJTz4iNL0tU3HaTrrZacTzpgBP7Q1M7cjrLl/CYBYX8xxLHj
	 5mUDa4ZUdzS25rJ2MqtooAYTuWM91CX1z9Sxi1KPBZ86VXXMq6EGsFQv/1QVKR1JeE
	 zdST1zmTEXXgaAWvDQP7Qa8AUBRhpvHOvsJXvxZLRtCUafxxR//HbZhJ5VBLNa/qzy
	 p635dptO0NIvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3409CD6E5E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029327372.10003.3445652602883326040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ce6889a13ec465a11060f2cb1616e88b19518c73929d978648c3b6672abe8d
Date: Mon, 01 Jun 2026 05:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780293273
