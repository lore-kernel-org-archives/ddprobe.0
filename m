Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32199256C8B
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779880954; cv=none; b=GLPQzfIhsT50fWS5n73j1zfGbtUlIixqEmQJdOpNIh/4/CcHJhbuIpZorYj7FfEbph5b3VOtFPXWYBIwbKylXenYmUS4HNaVmIjEK1B5U8ZPS8/XpjpFcIfc3rhjqGhPUPrXFzxoPpL5fGq0LlctSA+lWQDuP9lAmFWazb25Y/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779880954; c=relaxed/simple;
	bh=W31Vd9ox+g6dPU7zLAccUCXkPTkzXQ7Aoazq9CsNW8U=;
	h=To:Subject:From:Message-Id:Date; b=OPpWwQUSwB5w65byahIRgY3x8DCRkEqsmA39a9RXEQvAHik/i9xA35MPk2thqHeVxAKEak7+cYapP5LfbUEKYmIgtUua5A6op+A+jTizJMccmsrdJGAZHJ080s6c39nGmcvUG9Aud7jXijeM+dPB4IWLXZZUdJ9nJo2Et3ySDb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoWI+yGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoWI+yGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40CAC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779880953;
	bh=W31Vd9ox+g6dPU7zLAccUCXkPTkzXQ7Aoazq9CsNW8U=;
	h=To:Subject:From:Date:From;
	b=aoWI+yGgUL8NRtqKkA/TbSX3+zyCYyS0sL14ZgoG8nU1PLhwfI19U5Visbsrl+ZGR
	 35L3+OJ01WXh/32ahOSbGp/+KuDZeV0nzbl8ER22NJ0qM1LqynkyJITV4UrA2nU8OZ
	 KrerzhIAAPlSglVZdeGX5XENG76ngajHJjrxK6hbnHU3RinXTk4KuSOrfYl9Qt0L1t
	 4apWp8QKhPSpC0QeKXpV0ZYC3gGJfGOPT98cAP6mIhr2DHlxeFLch6dCeSvxi5HDMY
	 vLS+6WuebsT6xguEZWJpSt8R+l/Xgfqvr9xMZ12Qz6o9AmhoS0KQ6rTAemsrVg2sc/
	 ifJDwAkmMBeIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF5ECD5BC9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988095369.5656.3534264268056082605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b093094ac71324cfae285a1e0f43dceb6b70d9893ba26d8cf7eec624f07d23
Date: Wed, 27 May 2026 11:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779880953
