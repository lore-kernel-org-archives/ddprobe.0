Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F558E56A
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764505374; cv=none; b=rXbJv91yuyO0O0M04NH4fldvLzJtardCMEr/Th+RAtx0Q8GtEDfMq0DqgcCaaouty7LmCVf/jL2OrfpOvWdnOlGLD6Aqt1QFOivZ5qVhaL2r3IDGOmqkKTOBSpHs7+S3ZZatjM2nGIBUlolXoD02HFwJMuDG0i5CISfpAiDyXmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764505374; c=relaxed/simple;
	bh=7DXgXD5wdRiohr/Rb7L0eSz8xsX5C4ER3ZZrCA6yjUw=;
	h=To:Subject:From:Message-Id:Date; b=Myt4MuSRrif2g7CoXT6CSc/BxuqoiJtzo2zg+AKrtu6G5VCqjB+7ZF60S9UzcsopVvg26TcrNPg4bkfJIGy0BUfi2bJsvItIHCaBmJz25mlOgCOZc+qEZtfclrUbob8pJXAEAAEMoEJefe5yGW0Ve5Pa132DXWPZPuiq/umXieo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ljqrj8Wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ljqrj8Wt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26C2C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764505373;
	bh=7DXgXD5wdRiohr/Rb7L0eSz8xsX5C4ER3ZZrCA6yjUw=;
	h=To:Subject:From:Date:From;
	b=Ljqrj8Wt3IHA+O89l6/I+k9ZSoHbIF+i7LzdIt6klK9zg76AyMFywiCcePzCLZZqW
	 23H9yhZSc8ATWox+V084eeqgkSf2mBjIv+5F0oYRwhzOLacmctQKBpZUybgx2LMD+Z
	 JJJ684INE5L0o1+uOTNyl2bf/VBSklSizoUzURPtYsQ4xqfL2LYYXxX1XUlbHxlzYx
	 0lDb8WdL6OiJe58qL1oNJiq4XVZW/h4cSS4T8Xl5F8utwUIQIQboz/OdoqzpOwfg1V
	 DtEdmzdofwWZPI2nFdMUXUYIrvVFSm/e8/SLQn00qz7+rEcJiCgneOCDqquna77nTS
	 hL+wzwgD0Ep9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C70ED111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450537360.20494.4209746159015250549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c12aa094516daed3e75f4964b1f91253484a3ad3f17338a2f6203cca4edc39c
Date: Sun, 30 Nov 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764505373
