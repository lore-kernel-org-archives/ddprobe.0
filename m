Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F6F2E0B77
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768461236; cv=none; b=E4AVde0HpB5SdOocpU4ZjQipoPrW18V2ZXkkX72fu+WQj1xmdtLl26a5ErR1SxSuk1HsIHPhRwuxkLbwuUjmdO4+ZJ13/zP2XJzPWs+M+SNRf+hULGdc/IKKkul/MoXiIuuu5/OMDkVd+jxef+B1tmwvCo5zO+Mex4jNkCn9ODc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768461236; c=relaxed/simple;
	bh=0HE/ijmYDv0zqXzBV/fflxHqmcC15EvNDaupDk6EOvc=;
	h=To:Subject:From:Message-Id:Date; b=q+h7nXWz1ziNkzkj/WS5Y1KGVvQ+mdcEVZkw9LUTAVxHFtdyWfnk8j94EIPeZO4pjrYVwOZb8t/aO5EifMGBev7/Zf0XDsX0AieJbNzsxxTAhyOqFsyromxumC5Z4Qg1We7XuhNii48avz3XcIE1f7GF/bSXB1X8cHP5jf67aqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8F/Vf00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8F/Vf00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5B1C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768461233;
	bh=0HE/ijmYDv0zqXzBV/fflxHqmcC15EvNDaupDk6EOvc=;
	h=To:Subject:From:Date:From;
	b=h8F/Vf00fLyUgDO4ZK8g1DBX5WFgACdcmtLi0n5n1SSGkfavqb/7Psg/d9eze68Gb
	 Mo1k3oV9wsJrYPZbN0//n6wsHixkDd1GohiKzqKIZEj6iEQCqmD4rHGh0KfGlV6/UM
	 fOjDKjqtl9C0UR6sBvs3bHlqhOG7B0u0v0o853fpL2jycyviOoAcTpdENlwJgoB2mm
	 caNKNobzSm0GvZazuk3K2r6nmKb1db5kYKVqTeqJLHyyUfZfRX9mvkH9rERTo2pwdU
	 GVqC/f67P1TuAEqRobVMFWCKpGwtxjwoZF/x8zJhALHFIG4zZL488A2wUq+5H0HRAa
	 +DHlpaStmDLFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF1D3CCB6
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846123357.17829.4370403159580593118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25c4d22d9f37eec78a0c1935609a77677608b869f060ebd91db63ada7fbc9d34
Date: Thu, 15 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768461233
