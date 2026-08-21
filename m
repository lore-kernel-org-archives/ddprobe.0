Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4209A39CCE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787350234; cv=none; b=h0AkzzapCmm3AN+NNnqohf+fwuKkUESwcfQV+xtEfe435E4r7sHob4Ivhfw56GCxK4iz/Foqh+3+tY4V3lWZpubWF1YN+z7hTWxuC84x+/gqyoiMaJywse1f6Is41AiSI5GIyYp6yvsfoM/W4DtuHDgmCmi+/p9ncujNV2hz3PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787350234; c=relaxed/simple;
	bh=Zmn8noM48Tr4xsHYrhkfzUh/WghoUUk3JBdoeu0I2+0=;
	h=To:Subject:From:Message-Id:Date; b=ZuhQ9DiK9xQSYnktjrFvyW0eqgzm2vCvwcKWmiSwi6z9sNblc5YD5S7QMsFzYIgLvA4UnD/q0mqe9Yo7W4J3+sRU4SPwFiL9vW+LW/Z+XwKTNq65ONthgoMGv12YJmhHpTu6lsvhtH9caiyz7W8hRJaDtEh+JBB/Hs2qr2i1n68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doIQnlyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doIQnlyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF024C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787350233;
	bh=Zmn8noM48Tr4xsHYrhkfzUh/WghoUUk3JBdoeu0I2+0=;
	h=To:Subject:From:Date:From;
	b=doIQnlyXDbEa6JcIQsDjzuz+HgVnAy9qvA42KnuTMaQjTVwVhA9/gVsTnXnVb9CnW
	 pUXud7u1f/n5ZxwoZcO855eT/QOoK8we2Le17LzzXW2vmWxezXnZT8wuGD6usZ2rnT
	 w3F85/K4oVV8yRSXzW1RoSA6bpAUGa/RhtuCVVwXXRBg1lFhSTfCjTkmKSTfkNtfPy
	 jKunfkbt8cY1lkTDqh6a2frLEKrjoSJr7KIR0qqULS+ta0FWaRwtWEppO0d6m8RlvD
	 TAyLKd88IZhZNklh9fJtiZzbiK+UI36dyY/Xgzs5rgetP691k/bw00mEwIgTC1hjaB
	 mAU/h21qE6qvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC435C5DF97
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735023369.22438.17806284137911542557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fd1b161ee5c02ab2f00d10bce0a6d162c84594b3391951ba79dcdfa3ae413f
Date: Fri, 21 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787350233
