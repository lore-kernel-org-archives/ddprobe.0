Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B99740DFD5
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777120654; cv=none; b=fqEWl9eO4kTW+1L8bkJ6I/KbEGTfffpViadLtSxRVwFo8qFajOKCIlZzUxgXEJ7AhEAbKpXWpulVoWdDP2gj7LuVHsHH2yyBbo9ZSgbxW8Mq8dI0o9E82wB1cVoX2f8qtnajrCP2/rmoINbbsZZ4zbxw3eg/uVLXiZVocmJb+jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777120654; c=relaxed/simple;
	bh=Coa+L8kiduMIjHtZOMexPKzOfe6A2vAiebqqWu3ESkI=;
	h=To:Subject:From:Message-Id:Date; b=s2w8bspmbQ9En0qFQfvI98ghFy03Du7HHMh5bPipD+xcSuHJHsfHAU+SvMvO5gnKJDN/OKCS7YpidxuMvWuXeNIQcL92SyBdZlXLS74n1b+XJbZgs5Si5h8tZh14sdxWbzz6ciKy3vIs1gAyAS8Ev2ZYQ/bfZo5+AGNfdCGu9pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HY6m6xFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HY6m6xFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD97C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777120653;
	bh=Coa+L8kiduMIjHtZOMexPKzOfe6A2vAiebqqWu3ESkI=;
	h=To:Subject:From:Date:From;
	b=HY6m6xFsm6aOV4gZhf0lPNjssYRQKb8AfUeBql1Y1tBwCoqrb1hhzc4sGZ3ZXj1Wz
	 enkCNfOUd/yr9LmSQWhp0xBJReXZNOOsO+l+14wfk6P8QZKS95fX1LbGD5dBQ8iR4P
	 kOz9AhYy/wYTa46Pln2HS9/AlvdalI6O+G9hiLA/dDw4WY/EjfqTVVGFdfb+5dKgxH
	 LjmPj/QJy6dPq8atCf0i7r3MC64q9ICSs34cRCyymmHWcfVHy7ZTWiDydcGDXDAUmI
	 e9IIqIdqURpOzTvdllZ1tCaw3U/7XCfiysmABK5uxL+0LO2sWN89JRg6o9emqawLo0
	 5VtcXiXupc9cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4B8FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712065368.26183.2264075092709475775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d886c758d43e4e6568d5b31b527c18f466e4c9187791916ce02709714e18569e
Date: Sat, 25 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777120653
