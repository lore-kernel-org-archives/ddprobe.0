Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A3933A01A
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766579634; cv=none; b=Yux+1kEf+uGt15GLdJCIEYMVgrI32RoaqNwE7nzi5mYhygALjaV08oWwr/aOtCJHkvYJz3e81sDktHTujoY/hfKnoY/LCDcpzHlhDfblIWcQARhmHnBoYZei8qS+2dQcG6GgpTbSKaVsvLmwV5x0USgVf4dwZheZSI5Vg8iS9Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766579634; c=relaxed/simple;
	bh=wmoWx1Iim8RiHT7eS30QvSkTvnqg2mJzbe3Fcn4EZnc=;
	h=To:Subject:From:Message-Id:Date; b=jPNOl3gD/oJD6jPKyt2PC7ZdiRtB46FjyFrABztureVpu15SzKn28Al/RFYO1Gcufcr83sBxWqKBhYKCJoVIzluQk4TL6qrD714xF5x87+ShY58h/QhvfDxbORff9p82R2g/xiXEsSPSt/8yWjhaIfmlLAxn3EmuU+5WLMjk5us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VM2OAzjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VM2OAzjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B9C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766579633;
	bh=wmoWx1Iim8RiHT7eS30QvSkTvnqg2mJzbe3Fcn4EZnc=;
	h=To:Subject:From:Date:From;
	b=VM2OAzjP4rvu/FKpEJqEDJ737ckG+Z0OCXbf0+FebPkgYup/z8c9qewLhXRrqtXlV
	 RS6fEWtSqJnG0l1+a/hYsn5PJkQ3AAQYo3U+XBcFJCvKuE0q7csCZqef1ehY2+I1dk
	 IU0//vHFtuNK7kLc4+aSIGF4quHIj56+CK8hmnEhDP/fGksLcTPFmOJYN/d2mWX7Jm
	 TKafnLQAd26U2UfPo8pO4JHCjsKE7T3Qd9+a1UzNPIjLRVXFzwNR17g6hvG38NoMgz
	 oNQqgHt2guChzM40nl3y/mUACAKR7SRgc3pzF557Msk2Jahkgvf1CUEkMQdIQjmT2d
	 /iCbAWz6LEHsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952D7E75451
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657963357.19959.8174090117032976690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a447730a5a211f9118291269bfa91bf3ae40b385e43f45f320bb054cbcbc90
Date: Wed, 24 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766579633
