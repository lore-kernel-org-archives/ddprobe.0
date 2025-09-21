Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25E5254B19
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758478194; cv=none; b=j5YN+AAAJ4jn+0+WSOs32QLxXwhTmi4emo3IsIi/xV6k5v0cPogzLtCp7M63j8pp6y8RaaXtugQFhMwbvUXREkZ8BVdMi2MFkjKxkovxVXSz4om2McFUL9uZ/TBCbnHhvSo1DBxsQZh17/U8/seMHDGd7eEkyIOmMNOE7+0daKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758478194; c=relaxed/simple;
	bh=QIzYUIsT9OZ5/EEWffwA2mmPpUXDp+yvV0Dn8IK4dwg=;
	h=To:Subject:From:Message-Id:Date; b=dnMrzwdQvzA7A+QnvDg1MK+4wwFVzpi/i7f38kSRp/naCVrA/46wT5nReQlvqJDoAXsbtF6Ag+ifGxSyCf/mxktP1hckpIzkvEMv9I/iazVeZYOWwnogvlJM6GYROdc0cASIp6qUA9k7cAiRmgoZiz2uzv9w6B0f/Yi1tLNdYsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IA9dlBuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IA9dlBuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDC8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758478193;
	bh=QIzYUIsT9OZ5/EEWffwA2mmPpUXDp+yvV0Dn8IK4dwg=;
	h=To:Subject:From:Date:From;
	b=IA9dlBuLrw8ZAI5OS6S2E3QfQSv6GJpLxH26Y0iJ/WIyWJLRkBgygGEHIAJfj/ahR
	 RPjYcbBqZlBV3sk6NmGAwsVaD1CEwUt8jDB+6Wf2sJBFTe0qgWPMHNXShBrQOpwuRJ
	 kUtguJMVHYOj58z/gx0w4pgEKqAib5gTJ96DrFZ+DKIWvMpicBl96FZ+7t+IQkLHtE
	 koxIEr+WmladI9j1hsZHGYvttKiylzLj28Mm0zOAI51Q/xNwJvq9TCCQ/ynaeKywhF
	 VbTlqucKLQgiE5jW1TqMCh3nhnCNrYOGZYx9e+K4FfjXGzssHzOy6AOLm6nB1ScT5E
	 Yzint8bvZb0eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CCCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847819357.6332.11416426195050790139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d55c9e831c2c6e894eb35176e935d65e4213f4c7ed2e2681043a87e9edb1235
Date: Sun, 21 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758478193
