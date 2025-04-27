Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C946EEAA
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745740794; cv=none; b=Zo0QEQiO76e3QxN0/jGiVtxp2Q1bgCtknQlosVNT0ANlRJNYcYIICwMki+sU6U4MCsZpD7rR+dq9uljSAmgLhS5FWnhCGIDX9TxwHBUD1CL5h0BEIkt2yxwwngV+nKKu4pFvsDrZp5siuID/mz2SDX1eiv8b3sQqm8eATzY2m30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745740794; c=relaxed/simple;
	bh=r9nsk1sxNQJAMaCkNlhTpptF3QylM6SXgv4nPqIJqGg=;
	h=To:Subject:From:Message-Id:Date; b=YQqTZ0QNsEt6ZM8FUvDyTZvqsrwCXTLaJQ2WpPAZ1QzfsXP9P3DYJMlVZxrXX/gA0XuEYTki03u7yGbkzQPXG9jnj+eBQV0Ge9c7BEystMITJ3kNzpiIsP8pH4Sw+sy+gByCJLWFlWNzGiNVHC6W+wBavdaPmSVkfXM08f5QM9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxUm7Tbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxUm7Tbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED46C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745740793;
	bh=r9nsk1sxNQJAMaCkNlhTpptF3QylM6SXgv4nPqIJqGg=;
	h=To:Subject:From:Date:From;
	b=FxUm7Tbb4ewMrBXeeQ2Li9WyOeJGYOJSwD8tRoK/XAcpduaM+dMV7OjxVlizN+P6M
	 fZWeWLdGb82eoR5Lme7XipV2Rx+CJhWzd1wUikwoNZDuWshRpplENevMao4Hj/K0ZC
	 QZqIXykdbS9s/1XkV7SG2XHlNh7hB1IH1yzQYt9cjPHKNtXrf0UAMnXYAKzrlnrF4c
	 RYKc5v9t4FDlNjAayorpXdlGbufSr65/8qc7Uqwa9EKR3CS7rQ2sCfvP8yOwCgNHl+
	 4abemBBgVXdvZPkwVCKb7gtl+ABkowNopxT7Y+p30zuy73G9wsVKj3jWppg2W+jft4
	 LyvkUHXQO4D/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E11CC369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574079357.25219.947771964448639568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff1fb5266c018a7db586d87bab33c64c2a860a7f259be3247ef50014d2bcd20
Date: Sun, 27 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745740793
