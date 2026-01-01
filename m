Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1870C2367B5
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767236034; cv=none; b=HXVCxl0qvZvRTZehs3pGOVAyK/MH3duHfoWFwxQx0cNOlfnSMunRNQOo0gf30CW2JSfALpweMHg4CJAdZgodGJqf2AC5whTZEFAWzQcSWlpOZcuwdFI0iE8tiG9dJLvWxOF/xKmqT7xMTkOE/CrK5qqBBiuPqQlEkBcoim1SL/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767236034; c=relaxed/simple;
	bh=H/033lyYQjWEGUIvyDrM6IozFZLHD5y0oTnE/OqE3YY=;
	h=To:Subject:From:Message-Id:Date; b=nm+S821pwl1A5VcmlOBsqFSirQV7TxY1H9ieMfg5oMvevTUDGr1bFfzBR97/qElfVDC2SJ8II4+Zy9ajljC+OqdvjdBNbMYhtqhbTACgy9p0of6pu1PzoILa0roW5MuKf7e4OjO8s3c8I63F5gXChTszxf4UvzMlSF9FVWSxApA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1yHu1vI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1yHu1vI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D03C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767236033;
	bh=H/033lyYQjWEGUIvyDrM6IozFZLHD5y0oTnE/OqE3YY=;
	h=To:Subject:From:Date:From;
	b=K1yHu1vIVIhPG6lgwCyC+G17U5uohP8WTy40I9Ng6BijZwaVbi8ubNuAplBsDFgXk
	 TW3YlKd1lauiSXBQCwcqioK4N30af1fisHGFeWkn5SfQ7RS+s7ZlZIpwu2B2xxJLWY
	 fQFHREjIT4V4HlpCrWMTWp88I+bZi8JhxqKRN2LyTJdE/kjo1ysS+GqXC8pJSgDYzd
	 mBP5W6fzCmSuKNh/rb+qbZ1S1xA15eMxSsx+qnQauaDJ9TrnhbmdGIBpf4pkytA3uZ
	 TdTyjmr56OkQgLH2yFWVluC0mr8oQKFTpSF4Qodo7xcS794OSlwpkEhaZBmQPKpDZ8
	 wPKQQlcy6Csqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC4EEB56F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723603358.20321.11622308471723753154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62311ec9cb7637ce6f59c12b0dcec78224a76d4b41031bf96875a729d94e69c1
Date: Thu, 01 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767236033
