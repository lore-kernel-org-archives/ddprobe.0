Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36789D27E
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758766794; cv=none; b=HxoEbTJ4sX8JVMG5k7XL0XhG9Y7hbv51HMs4z00cBnCf6FXruKvbMlze0+qIwRIeTGaCNy/IR76sHQzD0eRCd1viEd4i7u50n/zhmnrXUacjxR1zy/INp7AVLkiURhHoodRsbkfEn0Dh0nkphJQXZpViuSLAxodmsXXTu6M7Csk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758766794; c=relaxed/simple;
	bh=/Y2z1NVT9+zXT3cK15iEC+kETaAeetNsNIe/QLhUG1k=;
	h=To:Subject:From:Message-Id:Date; b=KzXjnJhyOekTFb3164+TNN/QMOFkJ/xfNVJvfrotDpzVtMQi1Zmzpu+B5YqL41saF+A+GMoSmqSHnoyE1cnFXuJFDVfbp3wG+msBGIbWRdTBj13JO/4TvLI+fff5Xfhap8KBgpraA1S/RBngHPJeXtKDCxxvStLLQcMJcfH29LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smmbRhO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smmbRhO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A985AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758766793;
	bh=/Y2z1NVT9+zXT3cK15iEC+kETaAeetNsNIe/QLhUG1k=;
	h=To:Subject:From:Date:From;
	b=smmbRhO7dGVmLtZBER4XPQSVEFJKz75fyfIJIbmAzSBM7pAydsai88oTI6pfoaV5q
	 tzIzioX9WTn+5NvUDg91JLkb6lHfloQQICWieO72+5N+j1g1ksGCu0BZGZUI4XobZm
	 szsIj+pepQLGX0n1+ycwdYXUxBJ35oSIKYDfIYeZByeotPBY53JaPKveUf7tBbFV7V
	 ysV23LKfaR6vLzZMFaN+TrkDhYhriX3LdiLaNvJIw7aU6ch3/SNDNWTyCZIhxxQKay
	 21aoOMu/7U9xbrGT3k8thu+OpJMwa5ndlPEfGKFT9aUOPVR0842jOj9rWRBGWsqFVB
	 FqgBDlkne20Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954EECAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876679360.2347.12225132618594721679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f4aae2ec5d0f67619f651b634c2d821caab92af8f4fca777a23efc279a5d3a
Date: Thu, 25 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758766793
