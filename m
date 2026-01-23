Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CD13195FD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769156634; cv=none; b=EEGOU3SQQjTsSAViuroTPYy8N/bfItKTHN7W3BpDDvJiIZuUQ0mZ2XBky+r1eux0HIl984zAvdy0RroKs8VABmqJWxBywnyOI7GIAVsLs/5LeaOfhd4evsQnOBEXuY+dDdbz8DBj6wS0DtC7+8pPRP1XUdqDqVwSyNCA8pmdoP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769156634; c=relaxed/simple;
	bh=MKm7t1E9k2yRLjlew0AWHnDkPkwg2BPJU+2nOfDMVQc=;
	h=To:Subject:From:Message-Id:Date; b=VRq60uS3QEhcK9UAoxzuAYSvcZ7cQM3qrI7GVypDlFoPPMbX+7VrrFPbv8EdOjOyPsqHK9z/VBI8N/uK6GBZWwhOO+X+OYsQzKDpilzvNoHLdxrm3GCEXJVb977BMc61/orMJQTGv2RK5XsO0qf+lcbNPnX6k+GMCDWNIXCpABM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MISHoAk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MISHoAk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD40C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769156633;
	bh=MKm7t1E9k2yRLjlew0AWHnDkPkwg2BPJU+2nOfDMVQc=;
	h=To:Subject:From:Date:From;
	b=MISHoAk6AmoL7bnmFymqnmxWhUI9IiJ58g617shFVoDoJqCcVPkqzWK4fehXqihhf
	 8h4FJLrVMDHhU+rnTY6G8pshO5PThekn/xLYkRArs3mgMO1OrG0V51kdrWsyJ2WDTL
	 MW7OZ4/AEfG7ks4SgRDyyPMUSPAWCL8YzIkqEhdXnnBtVpr1qXOYlHQf3rtmKcg0ZF
	 CK8EZKIXIGGFZ3pYyjXBrANo/ZcTNg5z+cWiIS6Orfa76/o93cuqMPFHx9e266FKZc
	 rD67dPmEgvgK3lNw+SXTkHdB6WxlGauLm3KekX3Cv/YdUm4W14WkLydEv6IY5Bhstp
	 1vcgA4P8WNX+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9BCD72347
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915663358.30320.10484031275247973309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70c2d32b195051e863da7c51c128e079bc0f91ba65c13b1cc763bf62c298ae1
Date: Fri, 23 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769156633
