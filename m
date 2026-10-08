Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450753A1A5D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791477034; cv=none; b=G3dqGTebPvzLwZLDoCgsfdFk0cnWeL513bxve32zbKQ0CssBvj+n0UQnoaL6rOpTreVRQVx7DjnSWAXtdQx0GVdEFUgbGwB12Gy6TYnbixMlVpxcChLug5mhYHgs0S41+HDKYxqNkar+ZNySnBB2tr5BE6vr0+uzQ+Zv84D3RXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791477034; c=relaxed/simple;
	bh=XYC4iSwxMwQnzhiimTBp1fZ6uS8mSSsAQcPVoWfNEdM=;
	h=To:Subject:From:Message-Id:Date; b=WkL1vtLtuZpHOTxU14jeCC3MGrOq+YTONQq9Qd2IbVb9tajn4lFSqt4N45+g/15Jxm9sPov6je8gLrwlLQYjv7jBcJbjCJNy2Zc2LCkrPSA1jXcLEhfbuQ27lzKlAbU2ou/WKTsDuWrdR/lhp5YEKaYTJj9Sfs/dFkTYsU84+ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLU8cHIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLU8cHIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C4CC2BCFB
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791477033;
	bh=XYC4iSwxMwQnzhiimTBp1fZ6uS8mSSsAQcPVoWfNEdM=;
	h=To:Subject:From:Date:From;
	b=cLU8cHIt1jUJkADG82AArdZrdxedBM5/BRs0EFAvI94K3wcZ957Rb80lJrVXc0MX5
	 8zz02MkX+ChlQpoFgvqYezb4uUGSM/eGIOb768ldDsy1jqcpvA4aOVIgVpCtWxxnsk
	 BFYiB3ZXNGuvAdxWuzZCg6YO9UB0jFCRBih97mVUqT6lJbuLAJg43gPtPkEc69kMcb
	 VF/lxhWTgudcJ0YpWP9wlsAlzyIH5bQ/qGR0+t9V6eMt4s8jZfzEGQOGwhKaqsdBy+
	 6H2GPUXGE4zgcGP2t2JF4LPj3YH8HW+uFhGwvr0bfddP7xvModCPdaV4tQ2LfQFNX0
	 6n/hpjMwqVsig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFABCA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147703369.7345.10573170908196610298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f03e4b15194db30fb2fd55a8713b0e1b92e74f1e686ce96f5a0736cc12f4d64
Date: Thu, 08 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791477033
