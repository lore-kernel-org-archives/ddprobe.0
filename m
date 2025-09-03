Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7582624CEEA
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756924794; cv=none; b=St1xew5ERVKcnfa+9TH+Mwai62Bj7umoivcnldfBYqjNpYWRsA3J9h9L4+jhyKP9KRT7G7StfRto4m1WlTsmrZwAAIAcMfMKkAghNdAbgBoDRSCh1QPIwfKBfzCSk7PQJUxIFeh9TaGAXNBATVP1H9P6keRjUoQoFWxrYK2xxt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756924794; c=relaxed/simple;
	bh=Q8ungYo+9P0/9e5+Thuet5oUG2ahQKAaE1UsS8gXv7Y=;
	h=To:Subject:From:Message-Id:Date; b=Xf2bgBYX6vkv7u5r+28YR1D0dYHqvuTt1YURxLzWBwFCbbU04XYFhaTVl8ejHaF3bqY/IKNSMoJ83i6iMwKSY5rP6X5xM2UTwZvNU5E7dgp2YPe5lKk+rQkX5JawmQGeSa78gXnwHlixg7KtM/5eBC1meaK56JbvZmAFaHh1YDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exOinh2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exOinh2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A840AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756924793;
	bh=Q8ungYo+9P0/9e5+Thuet5oUG2ahQKAaE1UsS8gXv7Y=;
	h=To:Subject:From:Date:From;
	b=exOinh2hn9EZCiJNC4DJmsL96qEWlmmLTR1SBIblXzozYbsCXqCC6WS+z/oO/+0vY
	 7hUpNfTKhED2x6eeTqgPcIYNvol3tQBSsSJZel8tJK6tLbCo48cFKsJGFRFPytHifX
	 kHK8WnLKoytoXp/VR0oSI+otgzYzjDVpW/lyKVvCghcRTpotsyrcmhn0CPTcDF0NAb
	 rRghQLKQT/5poKezGWoQNb0wp0RaqTEwUvEEIvouIZy5zjMxbjqWL5/6bieUl35omg
	 S6hTOVN8/y4i2970S6ksmOPNboalsr9Jm1RNlkPS/7AGYNYXcvO+zK0h/WbODIYEJk
	 pWl038rOTZIgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93482CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692479358.1328.15432923687894209661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de22199105c80f78fcd948fc52acb36a9d079b39ce7a8c483e4959a0fb5f923d
Date: Wed, 03 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756924793
