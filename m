Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7A15FDA7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758988194; cv=none; b=poK3rhWvziriOT5kX15bPnfiBVBzu+IRyFOaFE/you7YtnQA3lOTE51hEFzInAQ7PHu6Xa6riBD6g7lFPnsI8fmne1q6odEXTaZedFRJtcUhGqLO6Yp6SeC+UYQ5usMfbZ360XWS2wlT+j+EKgSbaXznN8JPRBkA3wxbPzbv2gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758988194; c=relaxed/simple;
	bh=7RGkkNKwjU6UPiGEN0+tOaGxqMQ002KoaNluSwFFodg=;
	h=To:Subject:From:Message-Id:Date; b=Mp4v+OaEw2KLqTlckzVO6Pid8nBdnunpktFn4DtOBnBs+dBSQ3J6PH97pZCrhr9QOioNlqaQYB4Ok75RlZFbVe9EiyGS9REcJvwJz4v0qgpXfdSB2LeZKPgwrlFuITal2pZ8o0zDP4XPOgXxsYrl2VT26+rOtKd2RmDCKJ24k8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRFhfobN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRFhfobN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AB7C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758988193;
	bh=7RGkkNKwjU6UPiGEN0+tOaGxqMQ002KoaNluSwFFodg=;
	h=To:Subject:From:Date:From;
	b=DRFhfobNeICZEEu8SQH0OFyIqM+GO10Q8E4TbvIBIyjc1+G8gcqLRMmlT2422NvCa
	 UPmRPhvstKUk5eFJ6217aoJwZ4HawkgYpzGZQyC02LYoASK9ACPq5QvZPbVNbOUpta
	 JLnIacjMz9LJGic/BKUnwvqB4BS8K1bLT2Edh9Xh3LQY5tmletqnZnfsjU+1ZEJyZ4
	 Fa+kK2+uJCiD4TzYdE22WuyVun7sBDp9gB6Ox/F61BDRknLUS3CwJn/GvU0yZrESoM
	 9jFFNRkbi0erEj0SvDL/ETbDf1Yawjla2Nfw31HbJsWJR+495tjCm1mIy9xa+FTuj4
	 nhfWJFyXIMBww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA75CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898819357.14838.13468550166931582136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8107f41f38972abe553f7c0b1b3983820eeba13ec44f5092ba4e42d73822582d
Date: Sat, 27 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758988193
