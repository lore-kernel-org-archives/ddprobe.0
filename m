Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E339235360
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 14:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740665334; cv=none; b=lVelGpxgFGyj/5FcXf4i/IxWXSrSw/bKAr2rIM/m6/Ay436NbnS9NRwElBjx20nP+YZCYO0tUtZnJxv0ZkS5zFj3D49Kbb4vlJ6zDARXy5xDE+O8OOKcPRstb6gBgT+b/qU1wsuNhEPbiJgHTy5e/9ZkiNHa8ksh6CR4jxqIDdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740665334; c=relaxed/simple;
	bh=RVuxlADeDKDRUhd/LYSgMq6ccjJPODYJNfadQ59Ll4M=;
	h=To:Subject:From:Message-Id:Date; b=PY93VpfpZcnr5p3AblZpgtszCgQohtdKrbNts+2fuNzd99/h2BFp1B6d6X+/0RZXceFkX1aarnKBsjt0e/dhRu9+jqo2bddawbeLxfQw3OtL7lUfI5HAMZBPfs3xMCX0Y/UBAyz9jdhc3YPVlRi2hCE6zlVvre4lRsTvvbaM0/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQhjZlFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQhjZlFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53EAC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740665333;
	bh=RVuxlADeDKDRUhd/LYSgMq6ccjJPODYJNfadQ59Ll4M=;
	h=To:Subject:From:Date:From;
	b=OQhjZlFsCuTanbY/TR4x5gS4AMbEcnLEp2CXTxf6sx1em/92vPRHc0tLe5rtkKXrO
	 CVscY1VsrlPoaHwBOAiLIUoUhN0GoTRkh0iCUYV49+nJXMI2B7K5xK3avwNTT9zHuM
	 X8IK1n/yvY7EPHJfEo+DrSYIxOvYcZqkgMp1Bx3UGs8Zh1Eq6zu+tN7RA1WrYLetVf
	 KKJLbs91UUkuoWSpOnZRu4bu+Z1qTWrWaWVISdjCHrVg4mk0DVvqzgGh9bSrpiloAT
	 U/Q0ANWdLPhpTs+FV9bsGwKcJaOwDxYQFNO55X2u8XX5q4BQU5H2wvUAvh9N5GJrHs
	 sETCOVRgHQJmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966A1C19F32
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 14:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174066533360.15001.3054456909621334782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c0cd7910268a11650695caa53fe64e3957224797fb56d506243d8eae18d4ab
Date: Thu, 27 Feb 2025 14:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740665333
