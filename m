Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1FFCA6F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770694434; cv=none; b=R9uzEwrNf70Pe/yfom90mSS/UZczW4nc8O/s7l7OcKRjC2JvZNKk97SzdHVPig8ZQm/ehGa3KGjUF6I71uaTohjPYD8awcMBt4z/9lPHJORE9I6iqVtQfKjUn7aRLmawljbCt/HDJON8CvDez8zRqtqM+JP4OaG3MUFX/sMw15I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770694434; c=relaxed/simple;
	bh=Ybj2xrLKaiOh1fse4AWNLtNK/m3/a/cDUpz8SUPrBvQ=;
	h=To:Subject:From:Message-Id:Date; b=aeEvHFwJi6UMbyseCpeDm6xeQYt655GTWTWobKRmsCS4ucYGZMMv1L3voJZp25G3pO3S6uWQqZ82zbx3dt9xt6FWYNnejzQi9DMVDHNJB0oumea/NWf2cA0iFFaUAMglJsWW761A9vfcNUN4lQVDxe3G4EgP9wr6V7jH32BZ0Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3Sh16W6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3Sh16W6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4308C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770694433;
	bh=Ybj2xrLKaiOh1fse4AWNLtNK/m3/a/cDUpz8SUPrBvQ=;
	h=To:Subject:From:Date:From;
	b=f3Sh16W6HRfoH+5vCBMNRODKQZAE7XoviYGGIKze8rXgIl5T3kRrh1RQAVaS8PSVN
	 0Ujozhhyu9L9Towk73oroHAEWSreHczV4Fh0TJbK0TavI2HT8sZHMa2bQ3NC4Llhib
	 I1Wj0AXtSKZ7j1zv3EQTgPNBD6r0IVlGqQwujeUeP+ZZVw7RcEaDJK76O9/NM8xPHb
	 64n05AL1LzEgpJJozDmqZ3sjd8Ft6gKidjjt4mMxI6XyvCWdN0MojC0M9A9vs+WAXn
	 GAlWEUQ6drFLX5PXAsde50ycPFj0EqIBlw9cnBm29gBztaP2LSiYUqHCe9uj//olpx
	 p2F6injZ93hIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C170E9463E
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069443361.18928.14028429604059147302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4613598e7717b71e75960c43eea0c21f6f5028432b8dace31126195887f22cbe
Date: Tue, 10 Feb 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770694433
