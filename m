Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3787F2222CB
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771064694; cv=none; b=u6scYcohhOhyXlQ6yFmpeQ3fH0Z2wXrkKocKANf2UkQs7+xBW5r8KFYv6Gj+Xs1pSQYyhDZRmHDyMQZJO3NetnoFAdJmbBDKZQrpWihfXWhn963tCBM8LkZKMVYEG0CUiWHH9LpybRztMzQ4yGjWZxCnHAnGG6S41AiNXRCDVOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771064694; c=relaxed/simple;
	bh=VnR4iDCpO6VSYhYFPeBxizB6zs2gmcfJiKXUmnzki/8=;
	h=To:Subject:From:Message-Id:Date; b=vCODi7zU7Ek3GkVP92Q/yOjGoDCN7hNsJ2WTQe1uZXaCD7HZhi14kCoYjtMuKXna5nN/8uxG0oZD7pakxnYEdMM6SlBQUrWwfzO4f1BjHdP9pcpskOP+Kx6xm3oj8pDBn8uy1T1BIEqE0VpL+lkHGtbuk02L1twIQv/aaiy50XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJgUXEgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJgUXEgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B191CC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771064693;
	bh=VnR4iDCpO6VSYhYFPeBxizB6zs2gmcfJiKXUmnzki/8=;
	h=To:Subject:From:Date:From;
	b=iJgUXEgwR3cexnQPr9jheKywCMCnha3PuQEOiOIy1Mhc9ZgqXjyjMfTmUDapKu0St
	 ZouB5sj0iF4ngKGnBvrOc9CLut1nqKUgue2U74jFWJd3Mv7Ncw78QH4VhSLGsbnU3x
	 zSMepcRVXHVmJZHk4HJX+a4SBQhUchPOFu9/uvSmQeRvuYGFVdM3ibqxgS1VhVNvlS
	 yWWLNNhj1XoNJDIZ4CZzqasIrK0G/okQDU5UHdAaQEWI4DTBDVUDsPw96fDCWrlQ3Q
	 IIxvuDPDaRaSrfM62su1VYwBR3s3CN9vWZ6aOVJ1bawhl0yyBbMe5uWM38nKGT/LzB
	 C16LGUctPj9ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAC4EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106469361.17448.5872569546844203085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dad3d07c2c594627b172e6a22952259cd8006d2324b99c5d25ab14eacd37b4a
Date: Sat, 14 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771064693
