Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28363233158
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750319994; cv=none; b=ooHvHwdyLxqJ3SUoTQVlTuI88y3EpRqzUSDWQiGFwmRgS5SQbSDpglDz900TSIm1d8Z9CNh7zuXbrPiBOnipEGqE7p/liALO03ktwkiSaMitmHwV2xR2F/mqjXQNmJZumOAG1+RHt2qbfpKgmN4+FD4uUmDxTt0BCdhF1C5ARDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750319994; c=relaxed/simple;
	bh=UUrbMjlEUtMZ6pAjmTu2SFqWCquGVl/APV5Puw+0ouo=;
	h=To:Subject:From:Message-Id:Date; b=dP87n7wBlTHwjQcmCSfO9CJrJeg+GDyIBA7yxZvgiLRd10aZ2RaHRXNo+BzYujaRZTdONDpbA92DZtSphsY5rmMck/lGfSyd9RP1kZE+yF1VnZ9CkXaVaVnfrWQGfrtEv+SK4xDK/p592sA/9qvPJABxpt1ur5GiPxMMEbqGrE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUYLv5Oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUYLv5Oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E38C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750319993;
	bh=UUrbMjlEUtMZ6pAjmTu2SFqWCquGVl/APV5Puw+0ouo=;
	h=To:Subject:From:Date:From;
	b=FUYLv5OyE5kHu532pmdWGekDkz3esTgZ4irq09ZUV0jD/+awYIHvA5ScGvW1pfPPd
	 aukAI2irSAQe9E5DChM6N+f7RZIPKtPmSZsL+ti1u3rjy13Mp1EhduTACNiAcGpvhN
	 8tmwXqKH6PpLGRhkTUwf1B7p2//8QH5AEirTkdgJnDUtuB2NBRXeHUdToXzxfo0lHL
	 a5XbdcnHMXYcadz+b3MyuoQbq2TRRKGmv4WIYr80t28EYWlcLKqY+Z0S4AFnCzB8pG
	 U5sUIhuDMXf6mMXPdVZi1lweFEBY8SVUYKMfejfenr6dWP6r7XPb1k8sFeizenYznL
	 xCJgdDjoUFyyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F999C7115E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031999358.11498.16203133358659913662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10082e58bc491e3c1053b5393cd26f771aafd815a56fe59ea328a79464ea1f85
Date: Thu, 19 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750319993
