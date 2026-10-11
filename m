Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C6E375F9E
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791703234; cv=none; b=P26NbjWodY3NABhAIwj3S2MyfUzGrLlC6h9BkTexvQzlx+bozYMkveo+hQvDj+4RoymRnxGrPNGS8K611q1rFYoiDxDriTNxxXB4xo4JBV/ID873nWcOnJLxEZwr4mc5nptxv5/r9tvx0ogRu46+1tON130+FSlEHhPV1NaseQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791703234; c=relaxed/simple;
	bh=RY/dja/k6tsnjygA4WX+WiumLU5uwgjLPAFc7W8Y928=;
	h=To:Subject:From:Message-Id:Date; b=W+xYllPXmXOHIt2SsQ6IEF25QDpl1AsE4Ik+OCd1mf9qJhVZ7K4o6EuMg18MCqYhrYiGgm46he/Ykr3X3zOHsarOHC4JOE9gzJPftmmi36djb2rC9Sc6Tb3IO1tDeTGZ/3GPUSYVIAltQh+nqMEcBgBu+i6KH1WB01Xtp0nq/9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cboQERC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cboQERC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6424C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791703233;
	bh=RY/dja/k6tsnjygA4WX+WiumLU5uwgjLPAFc7W8Y928=;
	h=To:Subject:From:Date:From;
	b=cboQERC8DyIQYSj0DCfrC3HCoq0om8dko5xaVaLaMj5NY3SmybpwhFJu+V+M1EPF+
	 K1zcEMdcbSF0Oy1xIXxTn+V55g8JCTI3DxR0R4Pp/8RrLjtvBuIIOS1c2oDZ63CWMx
	 cRJw2AXlf+nyEvYM6B31p7ew3lMqNy6UtciNlRLfFPrrGKJuMGvzoMU3M5M2fp9mHR
	 SEOoEohuz/6xLt/3HAHmfuKgqf7k/w6Qas//l8rEzX6hzVbas5/PNefPkXZhrlESoj
	 fQWOXtyC2kzbsbQ49ZaqSl9i5cyEhkE3zmieIfkzN7HqoblZ1C78v/rV3CF1q7PhmD
	 cN5grJefYodtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC54CA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170323368.32432.10553369904021314901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43859fc5a3f13cc230af7ec1755d3451d97d851447ec6d6e16de34d0328d925
Date: Sun, 11 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791703233
