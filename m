Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F04149E16
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 01:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741311534; cv=none; b=HEwAl7GuSjIYTAH40dS+K/mJaTe+e9hXjOC15AQ6j8miK9DTuyRADuMcX1TDjXtt7VDi21QkWKTd9OVJIBR2vMcRKET50JctzIN/p412Av7iDcX1vWpKUmU4lyEq/xd3ztu7GNxwyJKUcMSnWWyqOhgmPAyienU4fMIwC5Qy2Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741311534; c=relaxed/simple;
	bh=tJmO9ugJsQdY1o/mV3INsmpqa5f+8xsnyQZ9cfIdsGU=;
	h=To:Subject:From:Message-Id:Date; b=lhGaqbBxKyvLd1b+kjxQrJ70iLAekEHQESp0oG8ERClWa5En2uQke44ocakmHWm1Am2cIFzYxt7FFm2A0Q82x8VcsS8OGAxVLsRfJozmviY/6rruo1ev8Fbl1QjI5RTkPUWmvNMLAjreKKB/teVDP7DAVQMEasfr1BqnO/vPxt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVgNvdLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVgNvdLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAACAC4CEE0
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741311533;
	bh=tJmO9ugJsQdY1o/mV3INsmpqa5f+8xsnyQZ9cfIdsGU=;
	h=To:Subject:From:Date:From;
	b=QVgNvdLrZlqdhMNwixVEWHA9q6eXiqbSWOrlv47orFeOgtcGXYiRUYB57J1KWAXYI
	 OmAfd1ystCiF+MuytTBNYtYYPrWLnhvxU2L+OxupSySG4/lLiDkPimodItoZRG1crd
	 K67nZk5HE8WYYHni/lD1tSNNWfKGZrbdNKYlLmBd5ZlI2+euWtwPZFFvwbGxk6X+yR
	 Nx6Uk5Yxl8Liy+Uf3MkI4euybh3noiSHhbQVm4JJCpSbncRujCUENjU4OcPYHwLtfK
	 Il6haE3q+uZ2orpmYsqp+adltS8igp8qYxJc6d9I9TGi7o2Aqhpar47hly6Bhu2BpT
	 6rMvWGOuvVdDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9397BC282D1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174131153359.23840.13504886317263706833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3514f213381603ddb9968d98d9a08b658db681959d95748f4bf1b8e05a6e71b
Date: Fri, 07 Mar 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741311533
