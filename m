Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8903451DA
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791338434; cv=none; b=TlV4M+p18ksj+bDs+EyJEEZ1yzocPgdZ/1vlf+hZXQwIYkBiFK6bfGdKmEonIZndJj3GYGHVkhEUTRdlMpEQWxd5G8ky1CqDla3e2Bindllyu1035jnOBg+oUKjheYTyqf2H6Mwlyi8WvObL+EuMQn6iHay+APTdNeI90NVMDzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791338434; c=relaxed/simple;
	bh=R/SU1ZyG2YIaJwAq6Yf3gBWZfk72Rh6R6ftR/+ivFVo=;
	h=To:Subject:From:Message-Id:Date; b=JFe9Sa0+83/PaWS2ENEW5XM45vex15ttKP7aSzfC10x9hzfBmB4JZj2dteZKD+TY4fbs/SmEhDFFD8MzrtfVwD3UAOWRqo8GeXXJF7DSCSFDrhpvPEfSGU/JSS+/0HWI6aYCC0qARCp18EkTnEuPWwhBtsyM1yY85p03yKSBOOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAGIvKIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAGIvKIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD900C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791338433;
	bh=R/SU1ZyG2YIaJwAq6Yf3gBWZfk72Rh6R6ftR/+ivFVo=;
	h=To:Subject:From:Date:From;
	b=BAGIvKIHTvo5HX0CJ4v6pZdbCzTVV3sqx6jRKU9x6HZITkpAs4mBAvQR0QdjPfo7n
	 xXkd9uKeB2PfI98mis9khmMzCkteapdOKKCt8tql6RC8bb1TS/S4R3rYF0oR1Dpg6X
	 We+urAGc4t68rV35Nh7us57HsfHWvmNfLUIwNPxWZLPM3s5HtMB9dnvnkEJIj17u73
	 403R0WEaxWyUwe2oCAeIMkKRPoS2zkqLQ+amgT2xv8QXhgZF8HOnm96Cnme2gHMsAU
	 Ss9GbyNT9x+ogOYnUo4TxA87jQ/ZwDZpebnxfdWHs32UNpNpwFxU1IlCRIf06d/qbv
	 AB66q2vwpRknw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA175CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133843368.14117.10007615570447583854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d91d184cae6b15bd66b8f9e9f28b93de761d46bdca7cd40acd2f5d1a39cafc7
Date: Wed, 07 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791338433
