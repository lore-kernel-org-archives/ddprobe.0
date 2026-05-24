Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C68F15A864
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779588754; cv=none; b=HBKobcxQupfOjD00CQnsaIBXCv4nVNLFev/UOAjg+bAopggwpa0mewXMHqyTHuA6i2svVcqHenzdW9xcutzwyTYzHRWqipn/3xHvqTdHbFfrDzztNtTWyXdR11eYibLD7pKp4d9yfVFwUvX+Wla55ckw9ITZ9jw57yIiVSt/aJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779588754; c=relaxed/simple;
	bh=fOJ5L2SAwUhIwrJGRFAP3onzwKCCqUOHSfc/P+ibkb8=;
	h=To:Subject:From:Message-Id:Date; b=Y6Ol6HfIEx5G+6gv/lPlpISCHGbBX/Hvm/CxCG+XKYuUr0/WF+WVOvlpeh+ScyL8NrUbZMPBs/DsTpzdwLtr3qe6QvmxF59cA2U9Z6YlZCfVSq7HewUY+mO7AjrOGG2vwKAqYFzutdUq6FIoXBMMhhuBWCPqVOku3BkFjXnz7QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kx60WZtj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kx60WZtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7A7C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779588753;
	bh=fOJ5L2SAwUhIwrJGRFAP3onzwKCCqUOHSfc/P+ibkb8=;
	h=To:Subject:From:Date:From;
	b=Kx60WZtjBDtfvbJo5MSeifE4hzwzWV+ZDHVUwB7k8BtHO8u8yu8be4s7meaG+5xgH
	 H7rqW41Rc+m3HQisR2YSv9rnWPM6nHD5fpw2La3z3q5VTBD56x1yabN64Kfd2YZlq/
	 odXEDH8XuWqicuavjJeVE9BSAbV/CfkrFbNq/O2OYyE2YnDuoZoiQNmD7YwCOd3T7I
	 9IT7DlWYwGJ7y7rfM16cGUkQhanMPUXM8B8IY4FY16JDmvrI2qJte7Bn9AVS4C5DnN
	 +Id6JsQ2YZvHEE6k2waTVWV/bkjkLv+wJpWw5dH0NKbqKv5pEKd/5fffNTK0qnVmYd
	 92FwfcgpkIP7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6530CD5BB8
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958875371.32302.8079185089685839237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4ac666f35e2e2a7424bbcedb122154aa07431b3400f9c4c5f004684e1e26bb
Date: Sun, 24 May 2026 02:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779588753
