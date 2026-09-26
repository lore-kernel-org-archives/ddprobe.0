Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C36C331EB5
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790406634; cv=none; b=BE/jhUDk/GE3SrKqyNUw3VhBsweACT7dL5oVMuXI+L8JmH6t0zPMgg8REmfdXkGzAMkXfdfH6COiWfhqBfuWKuxSUu03985AGqW1SZPLx6xaq+5NfJIQ3Y+K52qDcXErU9nl/AzeNeVT0xsKK2YN6IljohL4buH8Z5t1qMRQfOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790406634; c=relaxed/simple;
	bh=yUIbrj3FWwRWelB/y5WHYc6DZU5+yGMV26oWNi+Xcx4=;
	h=To:Subject:From:Message-Id:Date; b=L1VqoCrdzCdorfL/KSjvYYvXw9aSfN4e7WuZ+pFbkDV0EM/6X9XVxkWw2BI83l0gxnRuYZ5o4robgrjacgSk5gc8nOJPswopQyWP11kLcS8oJwxlDcE0OqjyNXCuK8WpXKH/7ivsv7lixhx9fm74I+TpfpHjxZcoeyKFIi/WEik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7WhQKwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7WhQKwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCB0C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790406633;
	bh=yUIbrj3FWwRWelB/y5WHYc6DZU5+yGMV26oWNi+Xcx4=;
	h=To:Subject:From:Date:From;
	b=H7WhQKwY8L0dvArAtYrV/uMky/pDVHylQxDQRTF6gbTsQ7MLDt+B2Flo7A1ogbkvU
	 VgA7kej49HYudAUQLgtg7dPGIOdSVr6/mkyncCtgBqOKYGk81q9SZfvS4oKPsQ+9TJ
	 LjhuEVgNqvYVfE6YnF6XkfNVAXWpanBYEdCxVfkrVqHwyKkhRlDM/MdFVSIMsrcQm7
	 onsB1UjtEm4Vq38QNk34YUDBbivhZiZO7fRigvrMLNxD/tkQvETUOueTD6ofNDwTU2
	 0bdC0cn86Wm8+Lb92aBdD2WG5ObWUIbZRUu+3yGnDvOpz4nAMhobJhkiNOCImIHlOb
	 zx2mrGMikkkAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD6FC98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040663369.8968.5806569961434888505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add65488959cad1e6318e412b0fde9f325839d0c32b36e6da33263a9d583c329
Date: Sat, 26 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790406633
