Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4B726296
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791082834; cv=none; b=FjKtp599CHE9Wi+GK+HxOY3Wb94JHpcaDricnY1RfzU3uVL/kpq6RIuuJTg0k3OCwFhFmbweBoAE9q0BkfhWYbyNgXlYk3NBiaSwIs5oGqKBPrwN2VVtmSARNnCzciYiTxjjrIvw6iK15Fz9FikoT3ELer5AKMXZgxn8LQ/CLgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791082834; c=relaxed/simple;
	bh=u4RxKKJDiHTPEqqwWl9+rRoaNbKIA2bgvObqS3//MU8=;
	h=To:Subject:From:Message-Id:Date; b=tB+iMMfRRo6ZEKyaAXYHYgfN4peu0f1lfVAcavdjN//BDdRD0lYPeKBqOnhYdRvZNvVa0TTsmPthRB1UL6P8otiK3wq4pI0icl+E4/L+L4JNsuQvlmYUbkY+mGm9HoYLC/PNfw1vBTlnqwrW87PBSXRDlxqHjqEgEoUrEWnNVNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0jpnOBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0jpnOBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1156C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791082833;
	bh=u4RxKKJDiHTPEqqwWl9+rRoaNbKIA2bgvObqS3//MU8=;
	h=To:Subject:From:Date:From;
	b=W0jpnOBJt6oCEEwjn00F7Z8idy+OCZmnmXtYkWHmn3qy+p3mJNEDDZD6M/kTC447U
	 mxME/OWG+L2xy+bzbtTEqrHMUWCy4hSMTt4Q2lXKU30is0Rh9c8scPnRxGvhfE/dCy
	 ne5xr4BkxAu8MdDWbswe8yjvrgwvWBAkgN0dFeMm3kHNTrC70orSU78OHoP6r2O5FZ
	 ErXm+uFnywhcJt82DSJD8hzbFSB1QFAYnovtetHHfbmlDr9iQ4ycWYOUJbXCF/rrot
	 8KvBxyLvn80+GJhR/lczxffbjsVT1Sb5l6I2AW7mFBnywKzQR1qFjfwlw5mHxpr8n1
	 tN0/Ed2rizzoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCB9CA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108283368.14716.11973513861744432635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8b24b2a117a4209fa23369ef15330796a3fef2666722344a613d96fc902b20
Date: Sun, 04 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791082833
