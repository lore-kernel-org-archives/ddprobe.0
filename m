Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCC137BE75
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785532234; cv=none; b=UZ5x8OtmHCpQZBDETooGMAUaaRwcpjCKseGIYxy5XDFbV6gOIRLlVGuRLsFBI2wI2ni3nwnmO/XxULXudp7UulEQdizTP/LRj0uE5r8Ae58LfEyYqp9TzZJnMpR4yTDz+82dd4CkVnWq7Iq7zES9fXyg5WrmlhOygLhzqaMxAcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785532234; c=relaxed/simple;
	bh=muauVJnUsqOrgtJ8U/e8+I+UaZR7EIoCkOTv+SBlZJY=;
	h=To:Subject:From:Message-Id:Date; b=M4i281o3d5g1hI26xmbALl1RUhOZRuG2atOsdwaWgiSv4ouDWwkEaWtn4JMQju/ufW89XjfD5K6OVcYCokM2WP1m05NToQ2s4ytOlaOUWjjisWdz+DH3J07xdWg7I+FipZZL6myvLol+x8C47kzc1k+fDcHWoIZCrDF+KGN1JSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZIwhs7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZIwhs7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7484C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785532233;
	bh=muauVJnUsqOrgtJ8U/e8+I+UaZR7EIoCkOTv+SBlZJY=;
	h=To:Subject:From:Date:From;
	b=PZIwhs7PPvmGSaTe6zfsG1be76U/BUoZYlzsE7MYp+v6qi7Vl1fDSXYYFTve9pSyg
	 l/TAiC31rN71FZMiZHasqySnmgGt5TB5y0nq87kJbl3Ots48wHMHVEw7fftm7tz0yP
	 RMFGitbvfZSVhk017NdoZSHsf3rIEqRn3flptPIgYsPsAcyUsatnjjkhMH9EOZeIqg
	 bJlGu9lc6xPMhTL/M+pxDCu5IP+xPpeCKebDBorHHNOvFYJSq+Dq1QByJaiddZFDAD
	 lgIFbxyAqccOCFVlvcRzYKab/eqlEF0lCkQw+CRMQajJjBwOMT7POrA4lRkIQHJKfm
	 Y2e6KOeFzrLLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1CBC55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553223368.27357.13565248645280668152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9015e21cd386f3106f2be4f0b0bd56b79fbc7409c6d2e6d052e7996622adeb4e
Date: Fri, 31 Jul 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785532233
