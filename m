Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403DB344D91
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791006034; cv=none; b=JB0jgTTTDjA9vul9ijIfvauOau/tT4Qq5ghaUhYnFEcumqlRKQcOAW0KiRLSY4C9dW/Hla9HD02GzHNsiD42ANzJydK8hNlYoFDrcnL54/MycwN/kmJHCXIwGQFVPiRWIrq6RalBD/CXtK+siOrElDSK4TVGpBdlrCjtghJ4xos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791006034; c=relaxed/simple;
	bh=nM/mh5gBeaOnIwQ0GM2L1EY8lrTzBHxyZTrehSpH/SY=;
	h=To:Subject:From:Message-Id:Date; b=g5nJ2VuyNJyT7AOXA4UZrFCLlIomBcUyZZw32zzikVfwiMGGx1ccCGtxTUdp9KehZAVk1/1JMxsHtJuYK48QQw9VTpBjcHIveEnbxA0p78xRbDRoBKqNxNP8jdqdav16Ma8CWT6sfAVsdqJr7PToEVjOHgvlFmknzVeKJGHwNwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lrwt3Yjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lrwt3Yjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E61C2BCF6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791006033;
	bh=nM/mh5gBeaOnIwQ0GM2L1EY8lrTzBHxyZTrehSpH/SY=;
	h=To:Subject:From:Date:From;
	b=Lrwt3YjytSmR43qz/+OKvaAARpCQQ2jcd2jtuH+CLTffOuPkYXE/tDbMhcRbWkxIj
	 vAHNvJQ1n1APunl4b4BqNsSPLs13Yn8/plwU54FYUF1mTH2887v5muSLHmhlCEBedn
	 zv+Gup6QnRtIvO37QGxdkN9V1eALpGdlIuOThPwOISG9fpWQplQotJe9os6AhYJPTM
	 q1c/GRx3eTwvgDz2yR4zXP86LBFYoVoWDpSbVKzG9f3eWzCQT1F/EyJtTSeccCc8Es
	 YnQ4ZvopSFZz2wM3tyiDk/dDZdGV3cnVlwdJdqgSQDhPe2z4/YbaT7RmbI1Ihu7OBu
	 IAZ5TSaFr04mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A9FCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100603368.19690.1087625367014454979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b0dab6e59c73ee5ee05b421508f6c45af8f0b737a4ffbe801f8af889e83a19
Date: Sat, 03 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791006033
