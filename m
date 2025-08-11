Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204251946DF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754920794; cv=none; b=B/2EiSu0UShx3XOOxv7kEJRJdk8U0u2fjNdhifCPB2Xxtj0B6OyS0zWHeYY27XpfwtH5ex8BbJ9KZPqzezxhNLTvocnG6EdE73kcvVuV+0gHHiX9owZo17OebCVgJ+X6PTKAxBr9o3M2rah2y87URwGHwzfBsKgAr948CMMgGME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754920794; c=relaxed/simple;
	bh=daqP5SR9TtsyxlH9O46wDFQbUvEf/trFn6uWxr93ZuA=;
	h=To:Subject:From:Message-Id:Date; b=mpOT2uUSiHfARbT/hs3leGtrg/RAJouf5BT1a7phUt1gyNCcSb9zzeY/3Mosxyukm6t+69PIvI7IdUXpXV4oq60r4C5fTJm9/xiK5f7ov2X5nP5eZNbhMKZzEMcZ3/SFF/0kR8eUB20lUEbpA7PsWAku2GUcuNBnbgO412R0fAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcYKSGct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcYKSGct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDAEC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754920793;
	bh=daqP5SR9TtsyxlH9O46wDFQbUvEf/trFn6uWxr93ZuA=;
	h=To:Subject:From:Date:From;
	b=QcYKSGctE/ZJ1V50B1cdQEyBiNegKkr2uKhg6Mjpc+tfql32dZfnuq/97/Gm3XWCi
	 KqM7o75QaxfCOe0pxOTiufW/qaMuCcmEIEYQskzPx7nsVV57bi+CkShypNj4FEApgU
	 ngSCyft+edNAWxWH6pE+4pf9V875CJtfwaM3KJ9VLyRygLKOK3zzzqiXPWIgGXBA1j
	 3MAVGEeXb16FkLh2q9b9oCwZIQgt+MPE4jJy8jT6nWbxkjhr1kCYHHzzw87zQgprFB
	 P+EmpuHQIb6Wb9BIUQvrKODcBq3HmP6FtXQzUkn2ER2Nxnyr0DRp7v5TPoPK/7/N4I
	 sHX2iXvQF6mrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47DC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492079357.19836.14707118928292114766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc39ff927f6d6470edf8cd5477bdbadd7d2a6cd6236556d467132a2f07945c7
Date: Mon, 11 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754920793
