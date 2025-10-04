Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECF429405
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759580994; cv=none; b=HLjSgjPEezU58RZrXZV93DXPRgTUiZM2TUU8gA7/iG3sqcZetXhZfQJp9XaylQx0U8FdDy46Edj/XnEcunrAjRkfcBHdKrH7AvD4zYhh9NEPvuaJLNJW7tdtPVP42SYU/19+JLPJmIR+sg1d53TIIReT4QmChwLb1Op5qmBgzRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759580994; c=relaxed/simple;
	bh=9sOtv5vccudv2HZnZkCt4XO8cRLVYxIEiGU0UNB7s2g=;
	h=To:Subject:From:Message-Id:Date; b=sEcTkEt9fGUfeiWbFaA50WIGEfNN+O/1uTDcpA+uaflQUzwcYSos8LylSXCVndFqK2+Nu2/I5Ii741FA2uUgjSIsQpzwY1PBTD44Uqu/Bcpys6KknwcpcYDg6qQB/QjQHP4/B0WH2GckXFaGxS6CvT5gnfvijJTxkJqBD6GSJlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMphJd8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMphJd8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B54C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759580993;
	bh=9sOtv5vccudv2HZnZkCt4XO8cRLVYxIEiGU0UNB7s2g=;
	h=To:Subject:From:Date:From;
	b=aMphJd8uxD0h58WN37AJiec9zz1U9OmqYYmwFCJTNYk5lL/bTivYnrvGPia7anIOs
	 TxuP7wbIBKssrF7V7yyUZyZPMYEazZSPrsluVuHE8gLOKCHD83dT5fB+2wfxftA4o2
	 nICacxO72lL1oJeSYbthGRIdldlc7YD8L7EopxCW0AZ4v3KBgWjhgFJiLTgeA+F4QU
	 Xk0izWtb6e+xituw+CoReDd9XZhLwyMPZtUtdFisZKZIuLbqSjeRjEOxf0N/CtyZfO
	 aojMYN9mB9QlxWf9Vq96psfc+C/+LXs+p7D6HT/0cxFH5EctacOE1rmhq2Yv6kIHN3
	 S1303PFHMdrlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957BDCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958099359.30832.13529971096075287302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599feb2aceb5be3c2f08b07af4eca82b6780348e652e3432b9c0291d6572a71e
Date: Sat, 04 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759580993
