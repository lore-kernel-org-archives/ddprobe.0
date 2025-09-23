Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0EA224F6
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758588596; cv=none; b=JwrC+7oC5w9fXxQfOGkWfad7hSPkklvxalwOiW896aUOF9DTpIKWrZvIgLzWF/gdOqfMAPHrtDjKILIYh2FQl7zso+WqnZLUMOvdNnm4DeJR05FtFKl0NW+MTwMEfMDte7h0uC45L5WAznU3Fb1PEWw/Et7TPwPQz8Oq/5N+iC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758588596; c=relaxed/simple;
	bh=lQ5VJuEwaJWBTgXi7cudKR+ZZBnHXtoYfZ9viNA+j80=;
	h=To:Subject:From:Message-Id:Date; b=e+t9KJfrowuKB8WBpQpncLBTLkshp1RtDFWRtpW4fp/ch9HUbfXuEFNUo7Wr6OuNkJXLHmcYtLY4mKwk43XAmbciOusDSyInPAbC3ZcAaVKtycSx0Bqp7LJ4FiDAlhj9sGWpzSekiImWCgitQPr/bzB7M6KFjugU5tleJ+VO3xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9FaqPHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9FaqPHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F7AC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758588593;
	bh=lQ5VJuEwaJWBTgXi7cudKR+ZZBnHXtoYfZ9viNA+j80=;
	h=To:Subject:From:Date:From;
	b=V9FaqPHHulN2AdZcXj3/5yt2VSHij91lQ3GgldTXhp1zRSaobL7cQHyYDcBLv/nk/
	 4EWUfo3kortSALGqAMGele7va1dnOQ5CISSVLjWPd3iWycCERPkkzjgk93ge/h3cMq
	 a/1/43IMGzMCmcGytNxwN+ZMTNLt6avJi5fQzjhddx4uvJrsv5lFgpcz9RuGJyUXnE
	 hu3t+Va5p4dTjr4XW0xW18fIGd61E+2Q/Y7R2HY53BP2UgKzQVwd8pk/DlBti7yf8A
	 TcQ7Wr/nvZo+MW0xmuC4pIQjx10ftulNdms3oxRiJkbTkNmYTFjD/CO3QMDE2y8MFs
	 MGe9Qc00trzvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93491CAC5AA
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858859358.11658.4586740440382761145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55b8855fe14d5d597387cf1989b3b571b2ebbb2f4d1745ab829f4b5b71e2615c
Date: Tue, 23 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758588593
