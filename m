Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293DA19CD07
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750119594; cv=none; b=h5CWT3eCjVdy+IlTiKdU2JPanWMhZ+jbtkwER8wsjT4Sb6Oojqh8DhmTOY9Ab7Df0GSnkdUV5fQMqKeNHMFevkwKxWiaS+xgn9SsB1ikU8Fk1XeJ6XNL6JsUjFhWrewZtKmTZT6v3o3M2e37AK/77jxP8scjAZlWP+KEMrS6L2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750119594; c=relaxed/simple;
	bh=hk67qd7CuGZRrctLW6NIVKJxC/sUo8XPqcS7wwXSJZI=;
	h=To:Subject:From:Message-Id:Date; b=W8yfr6GtcCZ3aeo9o0ieQTBD+fTiBs24g+SAhZijFNzQwFrf0Sud5aHppNXt/qygZwkh3f6vdla9BJqabqKDuiKYrDrLfElv/eU+KjG1kdQuAhnnph1MZas5qMAJ8wMj30I/AdffQa6Pk/8fDMluhmiqzGTuCTTQKMxo2q4XwMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFfQrEMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFfQrEMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F48C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750119593;
	bh=hk67qd7CuGZRrctLW6NIVKJxC/sUo8XPqcS7wwXSJZI=;
	h=To:Subject:From:Date:From;
	b=NFfQrEMGL3Hn8Kq/qj3oyuW4e1eUEKrk8pWcdH8ECIiT7PQSWETzynU/HgotMx3ng
	 6Cjq4kmNz6bE0avn/77Xx3wIobkqudGVaI2WmMJkKn5uw6oMJrZn3Vt/W6FFjYhJZK
	 rAuXlHc2QhzIAsnru8MasksEDd09CLxwXXJ044lVFEQhYj9l7pGu/ZyNjA7dfbnc9y
	 fSueYY8WF56Wff8zkuI5o/LNfLAxUudX9ezsTFRQg4ttNGTsbrA8uZcvTUWrVN+htN
	 Crensu1cW61xyGJ8QkEO00wQPylMVDITgR9A4SnBoylAVm5ZZcavgm7nS/HSXE+iUT
	 1MYLWQdmfkVQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0BC71159
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011959358.11300.15453362826002248636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f40217405eede15882c4282c39360ea4625fc7903f9f15dde8cab498cbf5b5
Date: Tue, 17 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750119593
