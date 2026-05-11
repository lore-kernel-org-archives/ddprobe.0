Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9A229D26E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778481034; cv=none; b=ji62wCf+RSsMyWnY9O/n/xs2yLIQIbdmq9AeZX/PT5Iq+a14Rx3zWv4QjKMQNIBUI6kPV3SJ7Q9N2IOO+3cM+71xSXR8/l6BcrEPVfHhq/lHyLZF2OAuKqb8/T3x7wNxsj8Y2EZKC4i+Ua2XWpSUYL5i3329cvCx0RKs+op8EBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778481034; c=relaxed/simple;
	bh=X8lM7U5Ihw4i8RfqvzNNYFtEOqHEOoRaDY+4lp0EMtk=;
	h=To:Subject:From:Message-Id:Date; b=FHiaNgHW73pGWYMg8EHYxNkLUwLias0+uqkz1okXT+KPNdxOj5mdiSbSrcRlXq6JlYGo6A9gmdkPpqW0UHmP26WplEja4RBABkdMErunVChK16bqJpOPEigOT2kRWORzctUOBk8XOoonQgEzPcNBUuoKS0FMWfvkHQSdRymEpsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WO13QdNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WO13QdNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC7CC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778481033;
	bh=X8lM7U5Ihw4i8RfqvzNNYFtEOqHEOoRaDY+4lp0EMtk=;
	h=To:Subject:From:Date:From;
	b=WO13QdNPfoOOswTcgKIaV+CtMX0T6UNmIaBlAF9D5DkhlvOH0kkH97RSDLBFz3P5o
	 Ml7B/bpBBHdvndAQZHR5s9ee7sWU1w1RZjMreTADfEGRw4fUj9A8U0g6SKOnRdNo/j
	 ZIHTaR5MbWhBpUb0twe63Twsi00MgsrFz8+9PEgJ+DGkQEB7E1WUdBUnXbNBh1YTOK
	 ihqeNx4TQhm+dSNQY6psA9Tr09TRtF7lWgmUqMtffKWhINS/e1JXgWL3AAF7ij0dsV
	 c/zS6z1iTBzg9/QLsAhWQ35/EEnnbb6AxldjGqehX1schAlfPUwDzZSn9+wlM0zvGE
	 dPDNsAjEQWcZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3F9CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848103369.27443.4022778655787243194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205edb2755da46b73475a4e9e0b89336802e2db835efc0c2f59c94c29175c0ca
Date: Mon, 11 May 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778481033
