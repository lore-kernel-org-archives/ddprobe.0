Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCAE239572
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738862754; cv=none; b=d5rZCEcY0wflRuWEesaUJ3Ixgz3a2XJ8z9yf0dWPO1Wl/bCZvIpOh6tLs4d580YRXzvmbJM4CtbNlfEBmGt9qI/l5A/VpssJcVYzzqCR6QPoAgBIBQdaeiPy8MQHrW/Usqxu/aRS5dZATnhcM1WPPuPVlWbeCNnUKbvBJukka7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738862754; c=relaxed/simple;
	bh=MfFG/1bbPV2ycBqWOkPCpmI+7b661iotR7zOC324pCg=;
	h=To:Subject:From:Message-Id:Date; b=OLaEIveIAZ/6jT+wXRI9QvgJFU9eTd/Ot39d3LFkd4pfzkuurR9BijOUZCv9dxmRhSxutLBUHz9Fh2JBxTjTJz4JrgLKHjKJ8XEugGADgYyruzw9FuNbwnS1riKWtdWuN6P1rcmOLFQ5TA0bRBYsAKk74Tu+vW+VcVPrwz7/om0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbA7R1Rs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbA7R1Rs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D75C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738862753;
	bh=MfFG/1bbPV2ycBqWOkPCpmI+7b661iotR7zOC324pCg=;
	h=To:Subject:From:Date:From;
	b=DbA7R1RshgtUH2Yk1hC0qqNt9yfYStpP6Oqlbxry9m2GzBkkYlWS3GhBgWbxqenBS
	 eRnN/Z1KwwsVefr3pOEzXbeY6YP4UOpLnza9vuHooZmd3PKFzagxMvVYEoUyPIYl+E
	 nURSEd0SxD0RZWvPYKoUAaRsZZaicb1HTTpaVQoryV+R6XgbTiKTP1mlfEa9FAJT4Y
	 Rc7ZqK5nziAN/opGdnctKNS4y2jXc7pJahIdlqwYVViRiti48oGFzf86VxHvZvXk1H
	 314y7xG8Kq/XmErG9nbVZRWb6KAOmEWbsKrhY3LeagwWo87RGAoySwevxe2VmlEKOy
	 sAXTf9ooRqVkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927BCC02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173886275359.10729.10848409991470943994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f1bfa033da2e865e0013ee7ec9766bb851259cd4459f866d8962245fe16397
Date: Thu, 06 Feb 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738862753
