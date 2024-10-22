Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7FE1BBBEE
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729614954; cv=none; b=oHj63bPTUJ1llNqO9JNsKaaoQYdaoyjiAfJDuICobciq/U9pRpzOD6JNMTgM59WjGIjrMqQbG8pAV2G97Pl7JOoowq6cI8hEKqhwNpzsjsdjN959R0/m58GgzSAtYuRt9q9/frYIGE8Goj9z8hYTBcWxeSBHD7MUPWkODX3zLeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729614954; c=relaxed/simple;
	bh=HYkuTOfCo0LVZG+vil0paRvC3Bddxk/lcOiul5LxG40=;
	h=To:Subject:From:Message-Id:Date; b=rbJNpBVtoNQ6Fl60l+78iUt3Q3dtD05muc5kgk04Kw88oHfZNI7JM5V7xMdSRnh/jhvoJ/rnoKUDlSqo6jWjrWk7BbnvQoNq+8T72/tGa2fISx4vd2wwyM6arvdZeecQuLpBofAhTU8zkDNLnMNLJyEDt+3/j8dtOaI1ikxHL9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Id5fbnIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Id5fbnIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2F5C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729614953;
	bh=HYkuTOfCo0LVZG+vil0paRvC3Bddxk/lcOiul5LxG40=;
	h=To:Subject:From:Date:From;
	b=Id5fbnILzIjJRBaGF+guabgc9/hx+zBk2Y7Kb5qKZEm/YQRtWx8mXOSE+Tw7Y/96r
	 5hmZd4xH69McvRfKJpJVsrAnvZLu0y3cIAfoNL5zmZDQORV94iE1ZP/GyPa3B8DKeT
	 r6FsO7bGos6tS4sQZR7nmtLVKf/lkLUW5iDGkZEtJxkPUR+2TSlk3rGKOTz0V4fPw2
	 D38ax6UsLoSv51hExp6POWopJSQamCATwcgKf8EK92XsFLjbM35iElAVFGRepbTMar
	 MGqeXxnAlHJT3s9Ry2fyjp1jSml9E+XAKlY+q6H8QYb5zrhzs/MV4OX2O624i/wsz1
	 M//OoVi+sz2kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD4CD2CDFA
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172961495363.11899.17528866363138914442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4560c8258e6188e1edffb2f32e27652d350603fad620a4c609ebed2f200dc5fa
Date: Tue, 22 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729614953
