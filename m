Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228E22356A4
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764241374; cv=none; b=mCKpe+cl5B3sAS81OAJAQELpijEodrnV6n+mTxxceqbuH2riUNX6YTwMw8nLOJ6S4LbcJgzyxhGkVc7HkCquVq9ZzcvpsctvRPL69hdt5HkAhgD62CdD7+riZNo1Hf7OqNO91SGdhG2TQpyXF0l6RnIvDAwsGnilzH+2LeO40es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764241374; c=relaxed/simple;
	bh=xKbP5FQZeHQByJLUZfheqjPYqK5Ky/JSxiquctwnAT0=;
	h=To:Subject:From:Message-Id:Date; b=ozCWbQSuFZ90/ND4SMvdNufXsWIMjL5SZoOIcZgo6P7o33X25+1VyoBQxrV61cqRGAKYvJAq0VcWdB4ik4RkApZ8cG5I5fRJS3Wj9Er3zmi4+YXIevN2PvDK+NLNg5lGadzzFMOvKmZNILB9fJ0B7bzOGK3vtFDhBNSbmfdskt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oL5lqsxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oL5lqsxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EB7C116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764241373;
	bh=xKbP5FQZeHQByJLUZfheqjPYqK5Ky/JSxiquctwnAT0=;
	h=To:Subject:From:Date:From;
	b=oL5lqsxIXbXy978IZ1PvYkFN8nVcji4S57xZP59gLg+0GholC2NN6mbzL6j/2EOx8
	 QB5g0Ihf4acbbry/BJZMb32Wla0+gRkmjjIWq0pQDEKxw54+zlEe+G/6jRDihGpiHW
	 g0t9cYEKPAelHVhjMpaPd3XNsDiAIRLiJNdrBNuJmb4Pc0x10vzex82V1lWj/J0ZsW
	 yNssKp6kp6T8qRhImFE7r+Cslw8WRnYx577U4WS+Bfb+d4tOa1hIcP2ZHOkkNG0E0O
	 WrUn6pU1RFBXmkc+wLhnKYoeYpdLzJUhYYy3P28+e+egDk/uOtPleCYo4Le8dP+1R6
	 aA9XR9d1942dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D932CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424137360.18883.1028210164505360300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40d89ad56dcc79c2ccbd40a282c17f75d83a25e16cbc21bd92bc1cc915369b5
Date: Thu, 27 Nov 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764241373
