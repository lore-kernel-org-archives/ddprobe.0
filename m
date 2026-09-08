Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439052F8E9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788889834; cv=none; b=LUpGP536saA2CiEDbfqVR87J5uRKHGYzDyAcNCADUG+MtitJcPH7uY+JzlT8e+VLBLMTGzkrgkjf1dVWlSLpvjTJjW7FNubOaThDVJmPEEnuwwCrX4kFigKAGZ3YJPasjboVESrDZFbg6qGcxEWP7nzC38cKj+AWVc5dehc+Pbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788889834; c=relaxed/simple;
	bh=mj28fPMVsPmV7LTz9fBlaYp3FAoadLGPPSLwhuyD95Y=;
	h=To:Subject:From:Message-Id:Date; b=aT5qlvLl6UmmFV4JiuZAjlHY0jm5Q1LitQigTGwEq4cr2GgwnSLeag94O9V0ESnmSStZcpuPeRI0RZf1em0y9t/IvwAs8S6solZfFt/KJo76w/OBWSSEuZxuBrq2AW8ILc8uKgrPYctwycObMd8rprcCZm/xPDfO9Bb91nOc1OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4GfNTlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4GfNTlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57F9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788889833;
	bh=mj28fPMVsPmV7LTz9fBlaYp3FAoadLGPPSLwhuyD95Y=;
	h=To:Subject:From:Date:From;
	b=X4GfNTlxYp0a15HhJodgehSmVPNlpJGVMi7zIxuRJwOjh27pr/7A2xm0y61m2UPak
	 kCSFYl3kDsXaP4tOdFZbEHa9WXQMkYoRc/HiKGLw65tHsv1WCZwjDo0eouWgMlryx7
	 6drqZz9/xm31ft933V4QR9/LvO9VZt5ZKqYJ8ZeYQlhA7622V/EfAE4hss76e/6JY9
	 unuqJ/uCxls3w+s/IMDwVMYs392ZxigmmXLZI3IwieKcpzetyDVIYJd8ho9aRaJ9lQ
	 Cnlw0uqahDooSYndFEpNTXm/4IB17lejScG2FVKPnz2xpHLCa4fSokrgqX4suo9FxI
	 UFuTc4gFmmHgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20EBC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888983371.8490.8388246269954547456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6092706b69d91d47ae13d5230697bf49dfb364167391494c9f26d53b24572af8
Date: Tue, 08 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788889833
