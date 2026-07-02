Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19622381E85
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783003714; cv=none; b=j/I3HrdgDZKFwKoNfDfbDCD63ZjOWkMQQdW+U10/SoreRHBWKINkyLtCorQbAsBHjX42QpdNsuSXsJhJMOsMRLEboGV9HSKo1VlD++wGxkXiqgUPljYga1+LdkQ9Up3L4FKmksdDlq7XRN6MAazcSvGEngefQIelpQqvxrfGv8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783003714; c=relaxed/simple;
	bh=d5JRR2fBQOB8DWNMvwK8OZVW3Ihi7xmI5Fvq3ZpIsgg=;
	h=To:Subject:From:Message-Id:Date; b=B7rHDiGdL3kIxtpHeS+eA/FWcdC6kFjlExArrJMrXQ23df2gC2XGx7zhu96iEti19MdGMSnr4MucPZSgr4WKbYoX1cWZsMLzhz4VuSVKVAzeUNrPLr24X5YcV0hcs1VW8/5pbme4X/Sjl+K0xPUqDmS6v4CdWFkowMFw406mENI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hH67mTtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hH67mTtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE8D6C2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783003713;
	bh=d5JRR2fBQOB8DWNMvwK8OZVW3Ihi7xmI5Fvq3ZpIsgg=;
	h=To:Subject:From:Date:From;
	b=hH67mTtTw1ugCW0lPrbG5/oe5vgf2hSjnAmWieaad8CwpYF9unsfbdpCp5rhUgoFR
	 ijt6PicPvdKE0qU5mkaJ9/4dqrA80WE4dvDPSVnzKEeppKlH3tDQl3VwFZsRnC6JLR
	 tiPHPk8CBMXhyA4JPtZ7nWwtn+LFGDasMiFxJA74GZ9kcrAbt3jkoAJMZJ91uZrcVs
	 C5gOg5mmZB96vHlatUDpzXtNkl0JNrY6HZwGhWnYdD72dDnWv67P2e3jmLz6GFcJV/
	 ZivNaRIZfBc2BrHl6yyg2Rr12jdZAG7jbBZo4KhMwh7bn0k0brNRNkCHU2h+BaOLCF
	 uuo/3xQyJvNng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A976DC43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300371368.21254.13853900085189419858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae48274a5ac2f95c905bdaf9e0ffe4ac5690978f28e300bc9fcb74ad72a8d80
Date: Thu, 02 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783003713
