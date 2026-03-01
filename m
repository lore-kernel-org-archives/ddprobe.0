Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100BE2C3257
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772342094; cv=none; b=a9NJSkKcC0yeoPGAZGQRI0iyG9ufasNuXd+DU5q/zfexJs2+d6uwG7k1kUXp2Z5fzgpEB3/2tVDwTwLFVB4Xtv+sotsWbKQUBP+17UijaBxypJiYqP4UnPFVXwfzuHVjESDIau1vtnlvfMljkfac6xhv86RHP0HknBLEG/Azphg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772342094; c=relaxed/simple;
	bh=baw8rklJLKlJE/pBsnaucJXWq6wCtZ9yjvYIW1bTH/U=;
	h=To:Subject:From:Message-Id:Date; b=rRba6sCLW436YETxLUA51rnXR08G7qjVtK3QNrLeL1ShnLxfYVi2bKxSz3D4d4Xn3P1lvK5AmKbTb5/83eBrHrpGb3rqzNCiQEOb0S9oSwMDExAh6bfywf7ITcxrUg747kn+HsT96C80BqQetTY1Kvm3ggu0LDO9Bc8kkgRCb7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwlPqiM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwlPqiM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB6BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772342093;
	bh=baw8rklJLKlJE/pBsnaucJXWq6wCtZ9yjvYIW1bTH/U=;
	h=To:Subject:From:Date:From;
	b=WwlPqiM4zra/2+SF55lI1/i6fX22P3wrUIFnCpnpS2Q0fvCbbDE8NoIiNCTROXZBu
	 CN0aJO1goUrjcGxgUa7jWZEHU9FBZdYNW9+lubGO03HNeyTWm+lGNgHgn7YJ078hyb
	 2QTWVY2l+ph2JatAczX3/fcTwEtxDrfLNsVceVv60/u2tFJ+6UTy938UFBk7oEf8q3
	 JKZCFy40IUpYTBBm3jzCZiEMczM8wV3QeO91ig5rNKehMggft5rx5fs08MNpWq0/aS
	 LgVy7SM/rF+fMhXfgYIjrBi2w0KFMfJz0JmuTHHStasI+4eeGo6ocb6FLmUdFCygnU
	 PGZJrf5+uElvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A5EFD0056
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234209358.2693.3754419213567323445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4dbe31ce969e8fe4ddd6d903b6528881bcd58ce546bea1dfdf8cc407a5bc81
Date: Sun, 01 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772342093
