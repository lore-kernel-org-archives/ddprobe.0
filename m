Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 935A03B0ACC
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782133594; cv=none; b=kY9aHuoTDvvm5BnsVjjS238gWdpEp73p7jBeIpp0WoqX7uKbfO8D8v0e/kuufitAJh6t2vaBfvJcAwyjbrDZrqhx7ZCGWXKaPVyxJ/cxE+xtW2F/QrnEkBv6mMO/4WLmmA2OkOKeB3OcmrVgKCD+aoaYD66uDpzwQ3yw+dxw4r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782133594; c=relaxed/simple;
	bh=budimZL+kzUqxU1lvK2EfJaxkF5aJJtMGAXwcCQlCEI=;
	h=To:Subject:From:Message-Id:Date; b=tK7dl9O8EwLPk+1ByYFlAvtiev2d2CDcxgECwa6N5qOrfUEzr8s81dW09X5rhKDD1qlHXXycUWs9IgbztSxY4HvqHxieIQxKMtEcvECkeQP0U2V+tkknHfVTeqPw+zOPbF2f4TJJ9ZeZayocohYUSm1prQBq+qghGHL63kHWqrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmgbYXb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmgbYXb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1BF0BC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782133594;
	bh=budimZL+kzUqxU1lvK2EfJaxkF5aJJtMGAXwcCQlCEI=;
	h=To:Subject:From:Date:From;
	b=HmgbYXb09Wk1cBOkOtiaKZpF/rGLoZ1WeyLpmVFZthB7tmX0cCAhKow8QqZsLxkE5
	 wBQbe8N/1GeVKI2X1Z+tBy8hjg/tYs1SbiCtASIO/NHP81iMNZIpHPpCKj1tGrzzpm
	 1U2N2IuJ8C0XMakZxxFr8hVNGn+DPSWZqXT8rlQUDrJ5ol+r3abhzRk0br4UEm1ynT
	 TcLqaZwoFilknbQga45op09/W9qDp+yEVWRiXHEeYU2oM3UjKZSNXNhALdbD6yx909
	 8LiifR1h2IOLuTxXHmS5zCrYbyQvJ6mBx0FfLBxOaNM7OYl8g9TXtBOB3vlVxPijIZ
	 cZT61sG6hVLSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F6FCDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213359384.5524.3517541480082086349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c703c29e24c282e3854432759d3d030da0b9920a152d81b9f92409443534e9
Date: Mon, 22 Jun 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782133593
