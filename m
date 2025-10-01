Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196A91E1DE9
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759279194; cv=none; b=vBm57E99ElsHUGLKJFR1VanlZud+9zVDyzA58vtLsVlDsjqDadWHx12sgsAf9qaoj5vHVtmGpH3FqhbPfCltMV5m2ieR/54CafhkJXUIZoxw/uruDN1Fqp/h/NKXLDWqaZ8fw86s+2LvcU+3xyE1Ijm27UDwgWhF33yXbSeNwjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759279194; c=relaxed/simple;
	bh=8nrtfyseBAIjBIaLsVvy6UwwagrABwIwSG8Bv1R6BZM=;
	h=To:Subject:From:Message-Id:Date; b=mDBYJIUkwDHop1U5dm4ruN3FV0kb827BvgxIgLU/FX9AcMnZikVefPDtMV6VrPQCFYRGTDaoPvrOHipHtrzyOYk2dMwsRJGPoSmVhImzVUCVZXoalg4hzBaLC+no6fKW9fD7b463owQSkearH2X3ypzDsLyMHN3HbE1EUeH4zRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7+An1ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7+An1ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6653C116C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759279193;
	bh=8nrtfyseBAIjBIaLsVvy6UwwagrABwIwSG8Bv1R6BZM=;
	h=To:Subject:From:Date:From;
	b=V7+An1ejWzLqV+1kDGH0MC/vD3T8Ewp8bfRohHqKFgIwhCNwYR0qtcanlBc/vAciy
	 /XC24EhrnbnFwlRuhUAW7r5b1Se7OQdnbftkMpTK2gyweJ1qICtparsxg6qp/ExJkn
	 TPHDS/c1EOCv0rpujzfOQxJCi7vqQyECzrc3RptonSE61spwbMqKksGvS+VTcv5Mn3
	 tjod3cKEHWYJ/AhHEfugCf/QY+L4Hoxv4HWMWcyWryih5J5mPWEzqvdV9Ji8Yp0jnQ
	 EubnMuDyqOU/I3i3sezCJ/CWLfYM8YzwfzbCaN0OKwpueouavFBi/XctOSCW0t5Aq3
	 r0M3UPAGzl2JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B00CAC5B8
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927919358.11280.9763686460135032363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe11465d9e1cf18980e54d08a908aafe6b56e83b69e201cf891b9b66c13cb9f
Date: Wed, 01 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759279193
