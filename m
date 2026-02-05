Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CD520010C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770274434; cv=none; b=Qi/5Fz9nHQ7ZUKxFB/VlPGlTtv2oy3TQdP+lmIb95CnzDGuijCTE7lvOulh6dA/kzi7HHtqppuOBwI6OIRYc+KVcRUYMR6zN8c0Qm/lmSp+vgMWwjA0r8Pky5JYCUhpcNSo9hW9sqpoUyDFIExEy05mDP3pevk8/dc6VwZKQ0OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770274434; c=relaxed/simple;
	bh=TADg400RpwRD4e9b0VUZreTzy+Iz4HDgUrYmq34sLFk=;
	h=To:Subject:From:Message-Id:Date; b=auhO4w9RtgK7MX8K79vQWYkGd+UuMZ5WXYJXAutzRbHt7QCThRsi9/qFC1oF12Pyqd6MAXoe5TR0Kxa3YIiPD58QUey8TEOn89gpiyXWh45GbIyE3UH+ZDMHKGnaQMWKXgbD8MABQkMGyMY9ll9p0Kzm6RcKpWkuXzBHMJxxmyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikRjuseD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikRjuseD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A363BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770274433;
	bh=TADg400RpwRD4e9b0VUZreTzy+Iz4HDgUrYmq34sLFk=;
	h=To:Subject:From:Date:From;
	b=ikRjuseDLkXc7Z12Mew8MdREZUlpz0hpX6W3/Tj+gKXrDP67wRjveVlZsMuD2N7J7
	 j7e+T5VuuNaJgUWsaWIhT/LJi8QK5k0XkaYTOGxPiaEMnCo36pfY5b33BP9SEI8Kzc
	 Kbim3Pcna9N5lwkYjO5Sr5qFUDxdLI9XzRYy/yJU05tDLWQLSvi/QkQ6pN2WLXkAi/
	 i79n/EN1Zv1/4T1NT7rcBJh9CM8i7zOxrC7ExWDHRfY1R4pSYvyMQGqwYPBrIu0Azf
	 gIItLdJKCKs8dbaVgs82NOEB20kl/t+Vwoy5/i4uYZQTZGpmgQ3TP+ffy1InJaRYiR
	 FZMQhRINuQeoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91544E9126B
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027443358.24049.4439815128092489592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f956f21455b5f43950d395626b9477e1b93050634891115da4fc449a39818d9
Date: Thu, 05 Feb 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770274433
