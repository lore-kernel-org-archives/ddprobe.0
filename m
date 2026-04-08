Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE33138E5D6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775652333; cv=none; b=lrQYK1QUV/z5xr6Neb7wIbaZC/5XieS9iWk+mQH9rql7KIm52n32YNlnBiuH1mizDldZDh4Sc3wHGeZ0aQSX5NqSbi85whh0pB87ctD/wRYHVBqj2+xG4ZVX4ezLfIdD+ZNjl/pgqCHO9SNAw14ZqTZgiVwENWNLt2HYP55gekM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775652333; c=relaxed/simple;
	bh=RYCHSWIKKYPT6wH1nYp0lcmmvLVFRAH0coEruTXXbNE=;
	h=To:Subject:From:Message-Id:Date; b=enl9TPffsBcOuWpqyZFll28ip0gz0Rk9/O1EDAlI2xuSIfIdfTqQzTV/7Z2rsbtNBaUNBO00CwcqDctuwbLaHFjOGKIvZO0k6TPfdtR3JnBOSxrbVeVOffU4jT7n8mAnWnJ1yxNEgLVQTvx9yI+cen5f6PY432Opd+nwC6Rag5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4VVxfNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4VVxfNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F71C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775652333;
	bh=RYCHSWIKKYPT6wH1nYp0lcmmvLVFRAH0coEruTXXbNE=;
	h=To:Subject:From:Date:From;
	b=m4VVxfNCMXRzwm3dwhZ5gNFDc8hOVxw5Ey7oxMDW2oGNcinSB98ZiH38IkO/g3jED
	 CGdKYJOSJPGg7eRv0zZqaYPb7SqnvUb2NFA7ie5ZSJRDhYwtJVGQnW9qr031RRGjCF
	 FVQs58O/f040cM59hJxHuQJ7SYabvT+CEoDVN+k63Y0iFyw5IQdTGCueaJt5fVeytH
	 00kshKmhOgpFL7kQ19/1Cp9Agm5yQWtJ9M5bX1YFKNl+OkvR4dmNA7WFyREEr9CwZl
	 DCNiIkzD4lqdpAO+zEDlFEuCM7X6w/9e8JxJ3ZobiLR3payPt3lv20kIoOTE0Zaxb5
	 AJ72zk3+paJpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20A21073CA6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565233369.27548.13748485534059144279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32648f95cc6acbbfe5726000dff08a041577252501e591593c3555536dcb6e52
Date: Wed, 08 Apr 2026 12:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775652333
