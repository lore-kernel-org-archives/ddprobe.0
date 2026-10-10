Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2933451CD
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791607234; cv=none; b=gAzirPDoy3/hQW/ki8QhSuZghcBspZIQvC2hNNcvwLVBNEGDFKOe8kTLE3212ThSl3z+EszD3EMnU/7+14ih3nWvZ5PYVeZ2f5hwIvn5KBMPgZ1REVtnwrpOUJmiLv9NUdUB0xdtI49zQu3rLA0o6jXbKlyAFz954FWpAecNo5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791607234; c=relaxed/simple;
	bh=kr7vXm3BaWIIA9+lh1RBOnRtSaDh6Kkd6cK595kodNY=;
	h=To:Subject:From:Message-Id:Date; b=AGPSc5pPJYXxKHuzN8cRXgJ3EliF8UxUEvYpgBROr+F0SbJzj1ardDfzmwGC2137FyStDBXCrZmEA1zOdctYDjBveFqaR1gkh6bsQSda6AZPsXmksI76eReHae6GmaETbzA71QgT+/yKbVzqsuLlfnGi6fbupIuPeHGgXMwryV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sg8KNgtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sg8KNgtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E5EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791607233;
	bh=kr7vXm3BaWIIA9+lh1RBOnRtSaDh6Kkd6cK595kodNY=;
	h=To:Subject:From:Date:From;
	b=sg8KNgtd+r7gMcKOu59dDttGfQgh7hmqFkfn3IZk2+26dPYMDv3/eLE1uiUW7cSjp
	 bHlBg7y3G6TZY8leMDIRj6X2UNVzqnL+3NmTN4wt9qbJIHzxZM+vYUWOmZiKyd+b/7
	 0MnUw2kFZFahpFsLZPU6DgNzzisR2Iqq2UJAP46W6iCeEHkERKVPJKr1QlzNBAz1kD
	 SIEdV/UCDMGcvzd1Yys6+YbQdqk71t25PQED+Ir5fIpHaurGz0KE4w2t702YXnNwcj
	 W0TkNzJFdg9uwTZAZDl9BS3JSoYhRtQUqBVAbinqcLYTnq4NUTYhG5lTnTfut5WGyy
	 LqXbcicGEqZgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF930CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160723369.8502.18232446506370119095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632ada9854742febbddc189253d7359aa31ae2a7c81d07ae8eb3594e1d2b3de7
Date: Sat, 10 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791607233
