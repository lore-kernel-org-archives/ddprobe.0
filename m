Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B47B30F932
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782587314; cv=none; b=JUZi3tOUOZvp5RSHOKq90l7ENhIpTrx8TWBqLwEOP38II2tq4S3pqus/lUOt9trZGTnTYtFFhBko7jF5MtjFc8R4a4rHogQ4QY02oHDRjFmlHF/Xsortn4jrM/dDjkrC00rECm3HEclUutLtIACOGCpuYZ2SI6x9+exKUt8b1j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782587314; c=relaxed/simple;
	bh=hLWX/cESBrVB6HJNu0Qqs+lfeQL/ZgYjeU2hIgg8A7Y=;
	h=To:Subject:From:Message-Id:Date; b=SsIG9hoAigx1hlvj8MTgkt0X2ftOWRnlJp3pJiSQAgzteNhLVshVRfqZL2BzTxKzPkvNyNUaiztrfu/x/HsFFhv9wu9/ru+CMQf8TOQzZNx8L2YoBZvZVTZV6zLbEOT8P4H/rv0J5pWtuLk+gzMlYZKso85pcXU9BiNbQhC0jZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSzKnQw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSzKnQw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB2EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782587313;
	bh=hLWX/cESBrVB6HJNu0Qqs+lfeQL/ZgYjeU2hIgg8A7Y=;
	h=To:Subject:From:Date:From;
	b=kSzKnQw86a0lhd4RdR5SzX6eBCQ3gPkI31+SGhaAnV7cug6U5lP2FZ7YkFHdupOOO
	 ggL2vzooflv3RDmyxJZc9CV1WaDzJCy9MrzIv1bCi0mk0f0hfU8eAksvlIojzth6TG
	 ln0WfIGck5d0PL2dX9RLsH292VPeuqbEN0UEQ7A5jniXJTYM8UuTkIwsSUSCjU+wjm
	 zgYGkfp51XZrZBDmYsL6vDkvLuUv7/bfwoggtONHnFnbFHbaPBMDgCLp0/cu8EYWoG
	 Pm5w72Ag7Sde+6UdjVJu99RtiVNnsZug5V09ybWjyczlGX2sIpHfcAQojaWG2bZa1T
	 w5i+082Cydspg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9187C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258731372.25462.11140354527500750728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a612d3d6809e9695c41e84e514669178b65427980e8072ef818fc85e9abc68
Date: Sat, 27 Jun 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782587313
