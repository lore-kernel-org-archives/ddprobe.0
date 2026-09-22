Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA0D1E5018
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790037034; cv=none; b=ahHNAoz/zm7/+wObUGMz4MibWd9r38XeSEPMOtD9afALrGBwC81cSthAmC3i/k2uGv+5z2CcgsCRJUPVypXUt4Olym5/fFYY3QyDXT+A7S295TnztOrC/I7Ly49RLCQx18KwDbWDDIiWUekdDT61NAVDlCAL5R2JbbYFeEWxIIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790037034; c=relaxed/simple;
	bh=p9VVRnRrKjXBZtZjTYg8zKT/YcJ47avoUmJ1kQSuDcI=;
	h=To:Subject:From:Message-Id:Date; b=F1ljQ0d/ApmApsYXX4ggb5QmTZhJcIM0sIjcLPanq+OmF1rHsmZJCqxZTGnxXqYJ25uOjzpjRYRl4B+YUFvnH8orIKHbw0Cognq1h7umd3jF9+HKq2ijnimFQsWm6FqluUP1wNC01lOzM8/h8sgLROpQbKgYGzuTYno1Cp2PlBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUGUuW+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUGUuW+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D215FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790037033;
	bh=p9VVRnRrKjXBZtZjTYg8zKT/YcJ47avoUmJ1kQSuDcI=;
	h=To:Subject:From:Date:From;
	b=bUGUuW+amgIoKznmehIL+P3xIXr9CGkBtKt7zcSr43F5Ev+9hHy7MdUkWgJ9A94Yp
	 jvsmHT3dMu27//UN0jir53KmHbFxHMHPGIcb4/cjpLfZQ2uMMpbZ8g+RocnZOVaPkK
	 txCLVTKmJLfhaPu5ddvht3nihdpU9S0MN1BbXeVhMGoj0FBHCw+Kq9UMd9zmRLJ40R
	 VpjvT5CwkVRI+Y9ip+SUvD8qCteX8XsdyqDPPKlL2I5v+L0+edhbB7Nj9JPaBmipbr
	 0jfXVPY54zu0Nu37kBbjY4mdUtvMsnDzfgnElq5tzvwaCIwF6ZsE6eCuzKXQA3Avgx
	 vzut/dqWCZo7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C46C982F0
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003703369.2576.5767580472776507997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4989de2687960a1c05f83041df6868df7360a9d046f825060ba631ae409e17e2
Date: Tue, 22 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790037033
