Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C3728BA83
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770111833; cv=none; b=jUHupydCEEoRVAWWdS29GSyEiAK3HaqZy7+HLjXIpSp5GAd1m5hPlUlY1lKy3Rj7PzjjMpntzHZoYYr7DUGJjTvkhG4UVyn63YS0zgog7nJY53O0uxwF7jOW5vrBoS1um//V/+KXjyB9l+a6yjt561IftRO7HyFGwEmOFUuacac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770111833; c=relaxed/simple;
	bh=5I2Py8BaE7gc2j4cVr/i6IbCrukzS9unWOcoWwKspNQ=;
	h=To:Subject:From:Message-Id:Date; b=OOWTCg4u03wP5jrH+eqXlE+5gHfcvSTcUip8TVvSZsU/7ZbWzUMvofRBqMSY5jidOW7FUIcDWCn2DPXzKeHuaX89e5HNBIVIPsPidixidth/Fwn6qPWbDfCDxZ1N1yub0ny50vN4vuv2x/zwbDkx8MX8b4kagrNA90gs5aKItuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1VHcU6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1VHcU6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA426C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770111833;
	bh=5I2Py8BaE7gc2j4cVr/i6IbCrukzS9unWOcoWwKspNQ=;
	h=To:Subject:From:Date:From;
	b=r1VHcU6kqb5QJ+rReLxczwwpNW7q+uazILhc3Ak3YjuXIcQRRJnEs5VBXoQajoDKh
	 yuDhk+f+nJXWMP5mpU3WPZw+qyISDTyifKe9nx1qHEkAuAhO+60Xiil3P7mFtIaaTI
	 6NNUO9djoXiMtSVp7jKPb7dgVQj4iHdoWCc66VFYh9xbB9jssCv60obeeAqJQUf3Tj
	 l+i4II9sgM2FpLxWxjVh+w465+37wmKsmRJlU+OGmCKqbUwGSjdD4byiacZgpguUBr
	 BpdihkA0TMaA1C2MXetwVHEFmfkp0x3SBQqe2yU9jHpKiH8v3JIG/NZtROxeZ/cIlJ
	 YOnNmsL5nTNTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B073E83070
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011183361.26879.3688888455828938580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a760ba2d71972a71414f69be0496de048c71eff93145d1fee0ba604cc431b384
Date: Tue, 03 Feb 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770111833
