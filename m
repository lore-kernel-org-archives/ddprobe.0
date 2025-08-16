Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F222652AF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755343194; cv=none; b=nDKysrNkIhd+QIZ4cuS9OuMAjDXvSupLF7/nnSdNSgn+apc05cVZverSofJ/cVkMb8sFXfdoF1bAuVDato3nKF52GnhTWLmjFU8XaB15Rvm2y40PfNXlnUMXwrDLNg3XnPD2wp/ZgJyW09lJLUxLQVh7bvJ8JcVqB7aVVOHlrnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755343194; c=relaxed/simple;
	bh=F+nHJPQ3P/+641mPFsbYQgVH/sxXkPlh/pri9glIWTk=;
	h=To:Subject:From:Message-Id:Date; b=QNDcm3Fo8DnN5Lcw7jDZTHXx7nsy9/V0PbXwmP6HSJJlaGPGyxKeD5odSIUxN9rq2yUwP8zw3KAsIje6YMhRMRof5stSFV0Znh6yua84ldqFYltyWFwKwP/VwgwP7mi8qTGa2yEam9zwfpOeSQMGOJqOZ3cyZW3fLQJtMYmRKEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6UnW3Vu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6UnW3Vu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EA4C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755343193;
	bh=F+nHJPQ3P/+641mPFsbYQgVH/sxXkPlh/pri9glIWTk=;
	h=To:Subject:From:Date:From;
	b=n6UnW3VuQkB8aFj0r9aA76qIYsw+vpxUX7H/Fxo9PFtqCzDCOoX2N5SQO1Wc/ZKXE
	 LOPXg0Z9qKOd21BFIf58NQZl8MpuLiOGa8X7ThGk7rN6KHOMdXlG4ERTEup7YMy6Gf
	 k3pM5pDEMQPqQNz0Q7UlE7u7YQlmDIUZIOgbBsvZ6JM0A7oF2DMNc4s1v04bpWCIW2
	 ulxtXDu87lUCI6cTMnkWzaPDK4jZ3XoUhtTrVjR9bpcO8Ttg7kpKeo4G2ov/vQyGH7
	 w0F9q1qqYZMmqmVf1FQvu12Hs7V0zIkot1MwiHuPWzXPzvaK48GypR317T6H/X56dA
	 VcmGzBbdeKZbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9179BCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534319357.24436.8790309261250482653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d025a47770e9877a8ca3c9e0655a437c9b1e962ba16df73fb14c816c23974a84
Date: Sat, 16 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755343193
