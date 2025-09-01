Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051462FE596
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756716595; cv=none; b=jRTAfZw0zgPdr4cUMIBNX/2VZtxubPNi1tLjhdYUAD4ywZszrXVsDa7QPuRPwCE7Qmpb80niw6wrfPbx+ReR1QZm9PswTu1ECyS83M74AZpqAk5zEB+aKo11CJv87ZvGUcO9kH2NFqToDLZfVrTGtE3AdhhXyi+U7VxLJGAFD70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756716595; c=relaxed/simple;
	bh=VBSRkCIKTEp4V21o/NaY3/vyLwxQbTeOjWEYZ8MpQVY=;
	h=To:Subject:From:Message-Id:Date; b=ubh7B0rskAU+FhHQnQ3reeIMPBermUnPfMH1EWo0UMXmFS3ftputUSY4EbyMftyNw1/etWoZhsiBrq3Z+0ydRRpTNUISjN0IxJvkFR3Rv1JoekvC23MWZT5VhGDvzImzTNYPnZvAEWvHdJAbSxjtpo8vPZYZ6F+Sz2bzvXl9Txc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofgn/ejH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofgn/ejH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E386C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756716593;
	bh=VBSRkCIKTEp4V21o/NaY3/vyLwxQbTeOjWEYZ8MpQVY=;
	h=To:Subject:From:Date:From;
	b=ofgn/ejH2uZRLtjbRJZxt8u63CS9tI+uQrbGUSBVzAKlGpK4bYoYLexAwvE4B+seO
	 XnoUodDWQgck6gFi/KtG3jgDdlbAQrcJqgCSJoQB+jHw09M24DYuMUxGzIM+SXXayW
	 GbJA51JX59SEyT7AGyuRDfis8TpA35SQcB3D5aOd9mvbwvSkEWAEMCVI2CwkjxKrh4
	 Fz41fPQPVc7EcQFuwDpuSpNPoT7seWWioha2l3TLy5OCjTX44IkKjKqOu1aBJ9jVwd
	 9QOlntjrM5to6Uz9B5BiegxVCLN5B3nJhnh7K2cQwaft6CqfigE65opspGb03rroAH
	 0cfUlywDFzG1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34ECA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671659357.23194.16375670823642281009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d8114c56667986af2372add5837fb344340f277bb41c29d3efc15d6f1e5430
Date: Mon, 01 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756716593
