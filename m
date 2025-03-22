Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAE72E3384
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742666994; cv=none; b=kIEaUyzKZLZetJTIC1WcvL8ktlMb+sBQgbs6nJgVtvbtbVKluyxQ4Us5Exlbb9qspTe/aulxIIuER2awF/pCetb+KcfRKbXQfvH7oCucddpTwjyva2hkM5FEBj0glWKkKPpog5JyZhub/8eY6rH7/tz0PmXuJa8vmMBAVn6hyCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742666994; c=relaxed/simple;
	bh=T4l+qXHQ2CXeqEYnyuZT0nZbdcCVs1M6AzdGgTeMnd8=;
	h=To:Subject:From:Message-Id:Date; b=rBgNk5GCY1Ak+f/wEDdCa4BC8mtvCDoNwjqWiY/CkBCfd4wpnM+rcLJaUkoagyH5pf3uoSsj4PqK8XMtozu9gvy0R1bDSKaBzbwSJgTUU1VY+0F5sliExyfWwwRn+WgsGrkuCu3OcX5H9q9QJi1gC8M+nRZx+nnq2rIPc8utN/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGGhoRPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGGhoRPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CEFC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742666993;
	bh=T4l+qXHQ2CXeqEYnyuZT0nZbdcCVs1M6AzdGgTeMnd8=;
	h=To:Subject:From:Date:From;
	b=mGGhoRPAbzO5pBgj/UJJVv+JuMT9xAaQdVJcnOiTS+allRcWXx7MhBiDAu9FX0qoG
	 S5ZBN29KEwlE7rVET8Rf2DjzwCnkyEIKZGeHR1EaCQ0vKA1ngOnzBnuINpc+a79h/t
	 etWSKLRmJ64poOenblqhY9FKCzafF2iTRQkUEyYr9E2xwEhLJwtZfTGhH4WR5/VIix
	 O0AVALbIKLPwWZ6myDbJfB6ZGJP/+uyX5yO7Ipi26nTu6NH+vd4MQBi3dcJiJnCVqs
	 fiG1qxsOHBOTwBxrP/pP9g72TllMoDwr6b0cBApsDchtxfnWrHdtXf3YIlynHCnjuv
	 NgNZV/uPaWQwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A901FC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266699365.25916.3710659887071230084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2377d898c366d2ac0e7ebc616a8f974f7ed446d6e26da80d740e360ce742872f
Date: Sat, 22 Mar 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742666993
