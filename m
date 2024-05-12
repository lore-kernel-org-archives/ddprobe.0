Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EB942A8B
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 22:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715553743; cv=none; b=ic7wrZdtiSLWL3QBDTaVrYBoFZ5jB89NEaF0ytSa9JE6p8Ct+lWhkHOhaImbWBvUseI5dYvjTwNUoZScRN2ilW0FZLS1r0adN/r+YW0BDwpV6NdSlLt/QJpHqC4Y7x581ecpXj8HIcKF5tNu9c8SUFsIGulIrU0UjWbRmbLjTL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715553743; c=relaxed/simple;
	bh=2NGEbgfXqckdiWRBUELTVWyL8W4amLB0S+RfZPoJlCU=;
	h=To:Subject:From:Message-Id:Date; b=pecjZ5VkKNJMI7GS1ojCHhiPx6rjDdXpFY9X3SjpZDppqBOaFnVgHO5YNOBN1+kvfuoFAxABLd+SxftArUhpaEs5Fl/G9lY05/1asDgNN7Bygfh6jiDN98Hg7Xm5LTm0170q3Lq0VBiIPHxUoNBc8tOWkN7IIDCBewl8VXdt+Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWzW4bbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWzW4bbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA35C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715553742;
	bh=2NGEbgfXqckdiWRBUELTVWyL8W4amLB0S+RfZPoJlCU=;
	h=To:Subject:From:Date:From;
	b=bWzW4bboH4lh/Gd2jTFEr5QjaMjtMDjOTLs/jVN6bbLtk1RuQHDk9yX7vNa/rVxv9
	 +BCzKR5FK9aSTrbo5WuarsoZJDgG2VP2rlrH5H28UpnptjllKZ/22K8sXBahPEu/Ch
	 /XqHfo95dQjKth255WoYZ5ZxdNdGHncfODX5QRhbEOk4C1Y0JBo3BiGF1jBLet3LEn
	 IX9+DfZxzMJKsm1VmMds9LdHwKgFUl1R6yhtqV5rAxmRZfs06YJEY4pIxLtIQMmYGL
	 U5oxMm6Xz2J8kZ5RfBs4tZ6P4Fhu0TQWI/wHt2/CSQCCO3chtNLvC/K52u7/m0T7ay
	 UWQTBT1rBjYYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA528C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171555374275.20988.7398533327622997903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc83a73af6679bfe58f140feab7708f6db0c81601ae19d9ee7b7bd552f12f65
Date: Sun, 12 May 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715553742
