Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9EE175D54
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727414754; cv=none; b=iZHGlXHJZxI8NAFzzas80HD9ZhRGoW/DG/q3oZ863fyhrRbizwtEC9nhdFcSm8Yr8LK3Th7hNPJhKN9ktc7VLIxA7qShicsJct8P6GUUnxO+ZJ91dzixi08PfZbiCqnKKxJgOPTeDRuRxxAJaZWlVPmF4KqxevaNkHofsPet7lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727414754; c=relaxed/simple;
	bh=kt6WWfaHn6SraJocvCAgyWg5ZHf6y0UUV++HTcBpRd8=;
	h=To:Subject:From:Message-Id:Date; b=M/BqvItKqZpwjszc6b6Yb2YEt54VMvHSxvJryXPNeJl7pHK0JAHSnEKdIwelr5hMvhkYbxZkLLqjDKWUUTR3JIWrT/VWt68AQYFGisUORFEmK/NpqNR103wHg9JqEYkMY6yBxMZErlqXQ7nfGcG9yaMaR53PgH1uz0dOS34s/yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBUejKR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBUejKR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0417C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727414753;
	bh=kt6WWfaHn6SraJocvCAgyWg5ZHf6y0UUV++HTcBpRd8=;
	h=To:Subject:From:Date:From;
	b=mBUejKR0DPIQLSOSUhgwDPNzYGYllhtUpd6U1idkLkvMo5s8NmYSPxPMCFcjC2YGG
	 EVMnAGcPM4F9unIBifk+JbVYWWndo07RjxB8+Vt8nnLv7ds37Oa7piZcMVB+f4LPLw
	 yE6ytKmTCqqwUSXWa6rHgCJmCVq4sB3f9iF5rgmd7aqJhnlnb7NCc4ZrenC/1V1iOz
	 XHkP9l6GjKTzRJ8pkW+NyBGBJNSvdfIEi0nal6MY1OYjiUCXoYUfavKF4wU51hWYnF
	 L7Qg61rPx8nLnOrGFhin+hGR3HpaUfUndIXQ7QhqZyT8bUZSLoavch5Dq6KUB8OMVG
	 nNc3kNfytyAIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B51CEBF69
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741475357.23233.13712450793540461837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a26350383ae08d7dc9b9d443d64a4f2d71d8c84a02d61ccc3c725ebddb48057
Date: Fri, 27 Sep 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727414753
