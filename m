Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DCB265CA2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763047194; cv=none; b=Jpqr8JBl8R9QleDepMzcnrmfCyabzzef+iKE+D4h8tXtKLMLhzoLsRz/tsTUTNU7eSnF9l7ydpwWU1Ur5Ce2d08Sc1K2JqyIW+y1JT5KxXKwVTtM7psyGZFdc6MLw0fpEkfIdvTbjCUl2s1ypM3674u5gH4iVhJTs/09ZRPZnoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763047194; c=relaxed/simple;
	bh=UABjzuazUHWLNaATW2/1Oiy/dVolQwQgGaPfMYTPFWI=;
	h=To:Subject:From:Message-Id:Date; b=dHiN0xnfXjnj5skkReImFmwE5oxlZQJ8b4o+fLQUJhOxnxiGzkmpUdRqo7GGCegJegCQ4XLAZ7HICKr7ijtLO6Hl3SSYYrOhV0qiikEV6aMMqeyV8W2otAtjSZ21fO9jBAuWvQakc1lbRAQwoA3DrItXVJNYcLghLVjRXywCqtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVbGOk2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVbGOk2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECC1C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763047193;
	bh=UABjzuazUHWLNaATW2/1Oiy/dVolQwQgGaPfMYTPFWI=;
	h=To:Subject:From:Date:From;
	b=FVbGOk2Eyd/bXKpqjylO/cZM2JFVzYcNXtkw2W0EtEvLHJ2kzqpy99niinpGRfTjf
	 PhLRL1H+2hdrMXnImliWetKgYh+70fIKpZcrCxtyWwFx+/6z9Oqk730lHk3mCRhVt5
	 uIN6650ykl4x0UnjFk19zYI4fIuABOQM/dYBnES3kQy9RsAAxlrQgVO2Z+bW+a6Ilt
	 X8r9B0l1xnmJLq8kWzZDMVTGHthkfko0dm1TtrtRBfJB+5tXGpCA83erDd8KWP+XtZ
	 kMjIwy+xr8RFh+DlN2SRqb+p0GYGLBGAAr4ABFsbz4bwpdaRab57Vo8BbcjCr07r25
	 T2znzPqVD1hWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A7DCD8C87
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304719358.25736.8114154919217665651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a48fe16ffa659339438e84386f26c293d6b0bea000a098ff32c748286b527c
Date: Thu, 13 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763047193
