Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AD321E0BB
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760449794; cv=none; b=XwDYzoQhXGJuOE/O5H58N6mQh/AHqKGppoGFgL0S7tHWpuISwhTsL0GkxdrNcpXeb3EqJuahgeDBY1RtoWf4oN/AtqPqJXdfp2RuB7DU1ccVPSsKTqW+ywfbaUclXSO6XF1qFWSqr+ujMCsIuFbh5SDtZdGWFKompyFKQh4DoO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760449794; c=relaxed/simple;
	bh=Y5UsA7SMgY6S8n00dka8sedVdUu0eJaCKulUeSZkxQM=;
	h=To:Subject:From:Message-Id:Date; b=Xl1vWa3jOe0MzCH8zEE5RxhN4eY57HAP5a9LQV+j2YcLk8koLiS3l1IzkfFHtH79OfVQi0yZ9y5ZYqaYMxCg9ygbMl/4c4XpC37Ghb372s5XDdSZ3zUu7XmW8rjPAXPkuxRV9hSyzJCNwLwUK9uWF8VKz717HVdN/unNSFtzqss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DS00Aa4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DS00Aa4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07DEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760449793;
	bh=Y5UsA7SMgY6S8n00dka8sedVdUu0eJaCKulUeSZkxQM=;
	h=To:Subject:From:Date:From;
	b=DS00Aa4qPqToI1pCuZGN3SspCD/xYCqeBoWTmj6XNC3ZKsM2DKAtB1wU9JCsqNslY
	 wMr/uaiM1md4gt0kCNOkYsrZEA7eoBnfo5fvPup0XrUc096GoA21acBC+uPFxl+qHY
	 9suq7W5kfU1IpHKDQg0cyhwhKzPmmaMINzENk2qqncWVyQ5zoUFrf6Y2rBXY6tLqMd
	 voCg50evKTiFq2x8maXi8yLlYWvnjP0GhILsDFOuYfFcHPzbEKEQ3ggRvR3f2FscyA
	 FG2Hr8w/wwhhdxf1ihKiYQcJm5zBqCEDe7utd/MG4/dCvOGilEi839y28WeHjVgl5T
	 BWEfVpwZDSv/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A8CCD192
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044979357.2238.17425937661336247086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8195110d0355a79114a361b29a19888e65340cac7c7ba7e534db05ca3992547f
Date: Tue, 14 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760449793
