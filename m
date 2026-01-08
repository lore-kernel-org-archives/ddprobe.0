Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A543D7D69
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767872634; cv=none; b=Soe9DlHADOyft1vl0FJ3ApnDMsGKHRUQZ7Qq9Xgz/c0smAemTj6Zsfs2GKH6W1D5rGcCWxbSD9OMUmH37ooCJTnyZxwE3xfLlbk/FmXmW2s1W9irJYUqtbiiWqcSuj+lgNnR0UCni3fPRGNqpvU+xilqnLLAG0Es2cCzC+kUNfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767872634; c=relaxed/simple;
	bh=4JfwAQ6NeojKD8PNlr8FpHOgK3WriyXNuh68YHmCrOY=;
	h=To:Subject:From:Message-Id:Date; b=Sk8E3ABOIP5Zqn6FVlHAoSggNwoy6RugVjNyjRSJUuE/x1S0W+KP3w+uJQFRemAL2GyokTVrnKZr9yKub15N4WdjRFbQV8PqH8HB1qr0gSFea2ZI515dA1x+VoLPKPCdc4bx3CsgWWGac/m3u2JIRobb5a7XPvh9ZaNgA7vet0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3tzQMVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3tzQMVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC95C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767872633;
	bh=4JfwAQ6NeojKD8PNlr8FpHOgK3WriyXNuh68YHmCrOY=;
	h=To:Subject:From:Date:From;
	b=V3tzQMVJPTwrrIhSsY4aDnW7oNwC2HDyZRgediicyddNqNBEdslCshcWo8kChT3BX
	 AlfdhsSJtTuFBPZlOVOBLsQ8rLWYHoG2YTMbeEwBHgFpVsKXLIOYPRmjeEc3yIVkbR
	 th5bzUkrQ9WeRr1dqotN+EXgaBV400pyVcoC6IgxRRmTMGzispMrD4WZiU2izKXoXD
	 +Qi8W8xvujM2wRdVqlSRPcKvMx5NPMyjwjPzq5UOxA45omn5FeouorFrqvEIcAvnxq
	 gCKlirHMe4mdQC5hAs/PJr7EJya+jZPyh/6dxtuL7XE7Ide2JI0CGBCbixLYKPKU8a
	 5ieruNEc9sIIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB12D185DB
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787263357.9715.12005474377050350996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8a03bf07dcf342c2002f59c12d0c78d2275e10f94f8d9cb09d226f73a76cb8
Date: Thu, 08 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767872633
