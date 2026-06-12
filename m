Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676F340626B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781285194; cv=none; b=FPHk1ekLsNgaQQc/M2BxxrLGPndYx249BnC+QIlmd4viaItx015D273YtZVqX1+YAh1ZcL61cqmUUnODclhMTHCpIAZnoIxWa051L79jum/L9vsSPIt0vO9ii3cjT29FRjShEgwZb+nq9abnwe539bJlJl9dJqKMRegKUyA4fX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781285194; c=relaxed/simple;
	bh=g1zRjUtZq07b6Z1SXhTL71anahMZUQx96HOVccVOtn0=;
	h=To:Subject:From:Message-Id:Date; b=CTD+WpmNDgJfF+xZsXJaZLIIZlA7aSkhNzt5B27Ks4tVE9L0AE0mwNMNAzWHckfTdjS2Qg0L5tlmOjngXWUjdApsa5cczVXi28XDSFfctuRsnKrzc8+9i7yjEJz8XXneoJIb0ptZQODgvqUiwmm4EtKqIkmi9fKiVhszx+nEJBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOjQ03P+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOjQ03P+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5808C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781285193;
	bh=g1zRjUtZq07b6Z1SXhTL71anahMZUQx96HOVccVOtn0=;
	h=To:Subject:From:Date:From;
	b=oOjQ03P+dst0arp5bEJCdkk8QNzM2wTgu3nK6Q51i+VMtK0cXK+tuzZpdql8u3xgR
	 oFJkuyixPujztxAc+g+39rS/Tdtsrzg5hGOqcJIbNBw/13e0Y0K2SEI+3BXuqnm2E/
	 LtHrhyqHvQj1Lggon3ZAeXYM4O62AG4hwDzQf3YX0IUMSO4IKU0qoZkhVVdHlc+KOQ
	 D0OH+wszskbvs3FZM1zBaUfNWKj93r+vrPIoQm9SIrZKYLoR46CRn0BJcyAhzYRGCc
	 awK2AcfVDl21c8seqzrk/kjslXf1cL1Af1puPdYYOX5mGor0GeecKSVA4eOGgEY2kE
	 eQ/HjsCxRcMTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90EFCD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128519368.20083.2237240300629819007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e278eb8b3b8c9c6eaab6570ef42e1ac12f493d92baa1d565696e2ec99a7edcc
Date: Fri, 12 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781285193
