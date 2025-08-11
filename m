Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3045680
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754881794; cv=none; b=rHoWO1XBYk94aOo3vnGw9505pzjmkH/eMcUFeQW9E6MWje5JL8BcBVeOFdT3n0EwxmysnMEoX8JmQL525tYtzwHjLL2p+m82xdGjoRMQnQssDJpIyuXBohfLc38mNc93cLnY4CIaeMBfoz2veueai+1HLuY/RdKD5RHGCPC1Hkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754881794; c=relaxed/simple;
	bh=KmpJx7MVOVLV+aTcmtKxyIfd85kVCDsl5tWTsSLFVSQ=;
	h=To:Subject:From:Message-Id:Date; b=oiyWf9wjloNEXjjyTweTMogsqWHk/wCUCgomsMLi7Mf3A4/8rLU6DW27A5IE6pEslM/Ws8A76e3OdoCmFPDYctalW/uGL36thtcAUFl3akyskWpit3MRRlraSOGpVc8cYJFAKbpeq9PWTSQkFMMY5N3PDyubepP1/DO2gQ0Q9uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hc3NbKDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hc3NbKDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2914C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754881793;
	bh=KmpJx7MVOVLV+aTcmtKxyIfd85kVCDsl5tWTsSLFVSQ=;
	h=To:Subject:From:Date:From;
	b=Hc3NbKDaXTyUMbswtDcen+8O4+8VzClzMPtw+JstIQiUFN6ZQh3LzxIcn4KFaWrsk
	 68PtOGRbeCAO5vjHsFh1hYzOqVhN6Y/wdCtkvEku7DhnlVNygsBE+cnc8ZSjY+6gHr
	 W3Yj+DxKiGUY7Dp09PLhnctDXYbhFr9sZkszTTD7tdHOVyIG70hATAUaFr0J0Ih3/m
	 oRjpRAh4rU52nJE8YzLn7nLbry3xRk5GLwWYW/RC0UtCXhDm57yEueqL2mcbG0BU+I
	 TPTcwvY9OfUD0vn7lewXHJ09dEutd1k/br3XUVzFisV/4u0EVvMGXptSqBq9be/Qbw
	 zaVhrUGWe+cNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91501C87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488179357.27351.8400866129805302983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5eb4e822c50aeb37b918c9ec09d5ac471dcb71fec0e09f0803e31ffb1d906e
Date: Mon, 11 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754881793
