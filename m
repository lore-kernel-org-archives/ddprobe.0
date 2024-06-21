Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AAB10A39
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 16:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718986343; cv=none; b=e8rU1ps+a1auJU7ErLkeDqxpV25rrfrDKuj39518HvT3C0jWh2ueAIWAAEdhWXIDdQ0ihJ8XDaOg+RRNTTg5mkGkMM51RYrTS2K2N5ybgI1XjyPqZ3rkCiFHj2x9bPcCHvXFsZwfhz9TVmYpIdl+ICEEDXcqa6Qyo/EezPtbK30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718986343; c=relaxed/simple;
	bh=IV/dkeaZ3viaRi/uNAQvfQtSI3+krqtyql9HKT9v6Yg=;
	h=To:Subject:From:Message-Id:Date; b=gwueqiHKBrofcehHc8z+ikqx94EImIVQBgiMe62v8R3PN2gQxxXvpAJU/8FDX8G6Sqvw1/8wVbbAZhCaBfsiIrxMs67dpHtppagwqGWIEDa8rqEihg0s3tG7aRzELS6t1N/rw5/Uj3I6Xc4WBS7wmkjlWV5rdwuAjgyL2gF23y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0AXfc2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0AXfc2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED1AC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718986342;
	bh=IV/dkeaZ3viaRi/uNAQvfQtSI3+krqtyql9HKT9v6Yg=;
	h=To:Subject:From:Date:From;
	b=e0AXfc2xm3+2AGCI6in+Tx4bDhWYEeAC+SolPebAKXNPLj6ExPGXvILtldY1mfVqF
	 L90E6oCNnDCEaCbi1lwvXrCU1eyB0a/SoxYOWOdTYQQBpNz3y4FBmHZ7D6v9Pox3TQ
	 RFfanbrodtHB49q1RtU2zAEw05QyMjRMVbDAK2hkR5f5YeOGKOvezcIDniRiFyQQwE
	 mWVlJcDmn1UMc+eXMOnqRQBslpZr3uE0g/BsZbwkXxH6tHrVL2V9FHJjgp9OWrp/io
	 rFAjdwLfdHbXd3TCKI93EW87DIOHx/kOynngaHdCHFdRK44hGLShOpqkt1cIsli+nn
	 CiQ8SmDNHdGQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC48FC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898634276.8749.9634800727041213095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47bf5a633e76350d5aaa2ab9eded584a4ab00de5d30339511fe0ff5c6a3066cc
Date: Fri, 21 Jun 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718986342
