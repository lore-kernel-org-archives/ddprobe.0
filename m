Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0BD191F68
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743133794; cv=none; b=mswJSvo5vTVwybJ3QaL4DaEO8YqJQjOHK5hx0Uo1Z5y49t5Ena5WIrWhPxicR8jLBLrbVfBejkprYKYLscFH7QyTF7uNYpaYi/zwjHh4V7muDY1ESQ39tKanHFvN8FyIHbArYJAP9RBntUeYzyq66hGL1+oUWXbVI/kVMZCrjkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743133794; c=relaxed/simple;
	bh=+qU3bKls7Xr5C2lrkwY9J4/0qYm/lHMKGMViEBFNjEw=;
	h=To:Subject:From:Message-Id:Date; b=PsEbM5qiEjh+Fpa6qmthyeZX80LYEqzZNsRvT0xTKa8EqjRotxrzZfhoyQ3PNZ8Du0SA0jLMhMcPKhy5uAePhtLRxv5UEQF+ccvFa63G3oRN9ussSDeNSvevOStIYrEKnJikSTvWmm98bLzFLPMGbvvL7DPs1uXJiUiLkKhK9Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmSJojQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmSJojQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD463C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743133793;
	bh=+qU3bKls7Xr5C2lrkwY9J4/0qYm/lHMKGMViEBFNjEw=;
	h=To:Subject:From:Date:From;
	b=MmSJojQClz113Bm+kGFKUI/kuiSpH2eQHx9RB+N1xhiqJSjl8iIMO3dLLGKG9CwyE
	 SoaqlzfEotvjhh5CtXR/2TBanKJwhgPHoQPrY+95IIocLPdgMzXu2+e/8OanffE3hV
	 g7G5k6l9gml7y4IrcuLie5LtbqrcpA480cUZIIBxdVftVxDXmk2NE7GnYoTCB4aA7a
	 7/vvE242wS+JOWxhYCegIzCndRFWmJ8L6iIV+Sx27jXzLxH6lwxGjUYgdINYYJwtaf
	 kdZbhIj7FBIqis9uTgHxlHuftca+z7/9S257kiaHg0TZWkyj2C2chBfGWDXjHHwfxL
	 BAc7vOPcvXL8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C94C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313379360.7415.3533394082847274607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf192dcb3dce90b1250d98218b7697c053caa825cf70365f34af02b284f489d
Date: Fri, 28 Mar 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743133793
