Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3563423D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726884954; cv=none; b=MTiPZKHaWgU+ZeV9A49bngxcwXYFikZ/XMalSWtqrIpENdMKfSXtFOkxuCys+1HQmyNkLwGIXp7kRb+tE7iuSFuunWXtOZdU9hdwQ2hma/0nbQfWHeJDeV5nWQ7M265jq01BNUrRbWW5RJi1KEczeLOhY7FpBZmOj6FeE0spFd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726884954; c=relaxed/simple;
	bh=YFg9ghSzljNlxuKOzj7XjeoRaCW1gVpz0N8k5Xe7fnE=;
	h=To:Subject:From:Message-Id:Date; b=MFPMgiGrBLxHdf5t0aIJ6ViSm3NQDrzChtcXOBSsW7vtTg1MfdbLBJGEeXl76ewe/CDVLjuf4nIk9GxppIsPujCAddSpKXKlqqBXj7Uhd5hIcvV0SukITuod4L0Uu7n1UVrnkRBtffznnwvAu4ZuzSPTqC17/Gi+WVtSUItu6V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poTdaGLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poTdaGLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E50C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726884953;
	bh=YFg9ghSzljNlxuKOzj7XjeoRaCW1gVpz0N8k5Xe7fnE=;
	h=To:Subject:From:Date:From;
	b=poTdaGLTTqC/SszW/rP9IfvCH7GFSmZlPVIK//iYnNxEF8XD+oSexd1zrLe1WZ/Xs
	 KKTrCXzgXXpPzmKjLn8GATWE11k1vL4LtSwp4Mme2ajtlHUyQbEJa2RQ4Sg+Ff0E+Y
	 EfQVhaA1l3bRsZQAYM6UjqMtKuyhmOJ+uRdDOj1QMSUvglXZo2tNt3LL/3qRiZvEIf
	 4GVKGvHYfdB2Z6daPX3T+cKERD2AdU2yxrH9oEvNCZlkovEnWpTpE0abUJZX33MYNn
	 +T93FzpTvbFtqC9OW63jZB5acy8RMvlO7PdfWunlrP/EyAcp0EQDDwZrneFavh9ft3
	 VeiDcR+ISsyGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D7DCF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172688495358.18285.16502733986094851710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b851a62a1bd1a8d73e557b43beed573ecd55416e14ff0e58d649a3c62773b15
Date: Sat, 21 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726884953
