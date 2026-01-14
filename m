Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154842E2DD2
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768410834; cv=none; b=X7Ad2L9vde3miGvbr37icvCoMU+0XsjY0ScyLdqNIjAcLKv0lQ/GR4STEAIF/O5u5NTyqFsKTdKDuIqHLAL3UhJWUR8KSIQVdYFCCLbfASDjSIV+ipD1q4YoZhDzImACVGIRTwi/F0TsMAOEQTPwES1X+0C4043RKk2cyD+UFbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768410834; c=relaxed/simple;
	bh=hPS46pBl5zBByEOEAed3S2QrjM8iUtectenp3DVz6/0=;
	h=To:Subject:From:Message-Id:Date; b=XmiXgajGnxszrmcA6BY/zvDqMk6MZ/GwrvZ3yyuFGd44c4P1mRZ/22CP0SNDfOx18Bh4xz2m7XXbosRBi7BLrmu6SPPjJqT9V92bwCXT+rq0oDMD8kjDudVi03WxJE70KyaF6Xd+xgMehGNhBgINdfVo0PxzePabmEm7Aghn4Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5qXZGVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5qXZGVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3AEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768410833;
	bh=hPS46pBl5zBByEOEAed3S2QrjM8iUtectenp3DVz6/0=;
	h=To:Subject:From:Date:From;
	b=M5qXZGVGahAmlDoMZbREIiVyxpV73QdMKNiEwTNrYFjH+W7DLpIEw42gCdyiYgbH6
	 eAjK2xYegUAJam5TNbdD+Lxs6SpOKmepdK/ZVssi3BtLQBG/uJ7pfttxOcPqQgbjJK
	 q2ZLggvtfTfRx4TuNm6XNiWqz2v2EjcNtjRrXD44QnfLdjVFKE6Xgwn4A6kPX/CxHc
	 HVq45hErbZJOK6CU8ebS8qovT/yPwOgK4OT8EUX3U3hEaaQp3hXb+s95PfT7SHOXL9
	 0hMdInihPxTYzYg1rm0q07AJ5qhEnfaMvoKi362m92V9Mgr0Pw6SUWLpjxMXVFhs9Y
	 Ik/P8aH1UlUPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E6D38FF2
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841083358.29109.8005624156931056530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c05c191a4ad208f5d46c518ada6e93f8a7b70577367a316d6c568e1afac2f32
Date: Wed, 14 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768410833
