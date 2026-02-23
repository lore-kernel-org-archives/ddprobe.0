Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CE335C1B4
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771848294; cv=none; b=bEpNJ700VV5M5bPDdq3YI+3SDxMrtsjuwvAAl+j9cEfHA5c+HrxYY7CDe7nRI5Sx+DLHtS6aG+2mXLT4eiRgfo3F4Q2FKWzjuapZNcHss8PIgCBKeFtK+Tfyqg2k3aDrpYeqsV+oE0b0DcZDxHxqdtSz94Xtt82YQMlsn6V0kOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771848294; c=relaxed/simple;
	bh=eNq9+WjOw+daK3AabbG8Ekb5gWuy3zqT0ScJhXa6xGE=;
	h=To:Subject:From:Message-Id:Date; b=n2bL7TDeUbb0Cge3svjRJYoB2z+NHbB0PNp0DEH6JP3QWDH5XjoZdymu0TWsybi8sYbCP8XoA6owbDQUNXQZCakDc/zIeYwPU6nnljJ3qSXee9rooPUgXEGJf53pKsIELiNs2CFMq69IRzKrtxZjohQN3x42xQLKIf1ZDaeZA2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LT/E8mfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LT/E8mfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4403C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771848293;
	bh=eNq9+WjOw+daK3AabbG8Ekb5gWuy3zqT0ScJhXa6xGE=;
	h=To:Subject:From:Date:From;
	b=LT/E8mfzGK+hZ8/vGIfUCqw/ke+6uoLdR0va5KZ5iLTnwGkg00P7YFMCbm8RjwiU+
	 +ICU2MTg2rhHUuy0sKE/wsyANZn87uyFW6Iabigb2mNEtlPGuf7r/E+j5Hj0t/m9wz
	 1xxkpwIcsXQDXI/JBRhD5ugyKJVXrZEebqUV8ML1m62lroiI7f9uw23CkX7Q9XdW3Q
	 rtkbFsakrbiva/KLKGvN8F1GqOXIKNLHTrlVvHgpJSilyXJeyeWV8mvxBDXp86CxRr
	 kdvwnGK+djjr5Zz6iqVWRXjeDHeTg4QVAKMyrXkXYBZsnAF7RBgKiEO6BcwVuUqgoc
	 fBBCdt82eU3kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95215EA4FB2
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184829359.30771.14551635563187107789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c717bef0666165507b929c4fd7fb52e5980f0b37445b802e9eea2ee6e5eb05e1
Date: Mon, 23 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771848293
