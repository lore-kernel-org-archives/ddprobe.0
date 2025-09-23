Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6BB301716
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758657594; cv=none; b=IK/wuqYBVyd6lThGtOf1oGHyLf5gS7Z24KcRZbh4vQioj2inZyMtk7L+cxqgKUfawqnFkg+v1XmlciJZn0nax/v0oZbyOQOqAwRUzL9CVQjsqOKqdUylDOcQUTrUQMJCidq2lrkGffa4j4czl0J+qkcUxm5DHDuVTuuGLyWLn0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758657594; c=relaxed/simple;
	bh=PytI78gW2QSX+yQKdMsnelpW4EpIqS5UeJG58LoW/V8=;
	h=To:Subject:From:Message-Id:Date; b=ZHdLsLx+waBzm9vrEZUiekcxqr87gQf2o45l0krEC1Qbh6WJOQM0GWufABmNCH6mJQ9kV4d9lt7IELssiQpJn+6hrSslim7Zj8l7a07r3qgz/drOgKQJqT7tDiVRL6SYmAoI7BZEsHzWE3UIA3Eg5lYlrZ8JUnAA3M686iSCaH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9dnltkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9dnltkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F97C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758657593;
	bh=PytI78gW2QSX+yQKdMsnelpW4EpIqS5UeJG58LoW/V8=;
	h=To:Subject:From:Date:From;
	b=G9dnltkV6jaP4hit+frC4a6j/zz8UDPFoU4lHxdNDuZehBuzCEWbj3/Ym/SwnD8n0
	 gybpyV8CY1RPMcgbIo++8osaxAjq0x3yqszr5CfOlfcT6uIcxKOEiLBfJ1t9bjfz02
	 1TPRQR/Ve/mC0Yj97nAFhBx+Ql3ZzOMlYP8lTSYZfJkEc+f25jEPKuF5kUNmALQ8I5
	 w4nRPB7/5zVD9n3fGEUGG30Th0Xnuuts7Mcov0YLAFqQ2WcjZC/8Eq4hbx4xdNdnEB
	 h6ia76ayFHjYpAahwdH5VLqWXDUEy4lmG/I98wxBmesLSUKrvloKSvZ9pgg60l/lnQ
	 NU7ccVym9kBhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933B9CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865759358.24382.987638771769191601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d7af83a6ee3451b78c0e2c0f8edfa5fc8bf715878d57ee3847be96f1e2e818
Date: Tue, 23 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758657593
