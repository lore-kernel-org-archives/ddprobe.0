Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C0839D6CB
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774451093; cv=none; b=nBmpETYmy8z3r+2iAg0rIhcbVs2r73nHO0P56ZqMynf0M8P3BzuA1YJKguzsH+b3Xd3bs8VCHEOUeriP7m9GJsRUZYN6w7xyY6FLvZ3Xd3Tm0uJuIxK3Rd6RgsfJjaARM8yv6Be03Oyw/agjCkK8FmfOhF8eFJb6aN6U0nsmD0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774451093; c=relaxed/simple;
	bh=TLOPvmAem31PWbEsqZwXu2YGjcOhex9GJ19PdoPi05Y=;
	h=To:Subject:From:Message-Id:Date; b=dc7cOXT1uufF10mvqBIWZ0bMUPAHZ0fYKxkFHWdoC4yrCWxlG14wzjIEubjh0dJi/hMrY4wsn3HRfQmyItU0fDoLljTvCrXMh3m0yIK/WEzhb5gBPCKuUkZX9SfRhUKvrbSC7R5xjkiFAESjrKlNsISpAWmA19bUpnXjx0m+IxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5F9uLDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5F9uLDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59BFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774451093;
	bh=TLOPvmAem31PWbEsqZwXu2YGjcOhex9GJ19PdoPi05Y=;
	h=To:Subject:From:Date:From;
	b=Q5F9uLDvkbm+mKutxHtxLmyA8CHt7ubTN56iaeECY7AH+f/ICa4NgoHpoqek9UmME
	 ABWpZAnGdHh+H1wjP5x24GClJKO9dFznOGqvoC0buUYP7CyJPGc5+Ii3jtCDGWxwQw
	 Oe3Cb0dkkPbY4yCnRONpVOFWxWMa2998niJbnB749Z2x2VkLBmMvRWbhjjBGgS+G4q
	 wcER4RB/XIIJ+u8lot8Bnj0FH8MSKjQ1gnSQCLKQ3F1QVDZbeytaGDZsWk3pVAQBKp
	 PaD6PR7oACVNxmymun9szJVmMOBu6LQa3gONlP9p1kqX8yhlYF/eQmKP891vQh1jWQ
	 04JqWCY8dSyow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9562F109C028
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445109359.21935.15980719542040770697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2a99f4cdf012e4ba89ceacf5082469f7f056a573b6180020f479c12700e3de
Date: Wed, 25 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774451093
