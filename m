Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7F71E260A
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761271194; cv=none; b=foAd5utjFS1K+E9fIw/Qdc+ipTA+LtIN16or4eYRyFLxnmztIVcj8PFTFmHcdVN/D7kXP9Tu4WMdSrryKvTNqiJB67ZTKA9nZ7YyWe0ytXv3pFmR8sYeArU8jwn4EcXzsCWkfYGdmsjyeEaGrQdj+gyr0fAQcON8WXLn5gHVj+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761271194; c=relaxed/simple;
	bh=+++oWqrpjWtAuPghKCpr6SOEXXvHWIofZKeCZ4+mHSA=;
	h=To:Subject:From:Message-Id:Date; b=g3t2/74YIkZTTwsIRQb/IbvYqp6I1UuQPp+W+tCnwuaFvuuWt9MWePmOm1nM+FnS2APDM6wPGdrf0tAbRdklqG4d2BNONpX4I8snLHDKn5SHMI/ixKvgtA/1TMCqtTFmiSdqgfNggDv4dolUY+JWTyX+qKOXsYkV+nbopclq8RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMQQ7QxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMQQ7QxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B0CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761271193;
	bh=+++oWqrpjWtAuPghKCpr6SOEXXvHWIofZKeCZ4+mHSA=;
	h=To:Subject:From:Date:From;
	b=hMQQ7QxNBsJhG/iumTjBZtjj6O1/3F70TvDT2i5eXa9n+qkf1S1vNy3zPkskmuumz
	 tGLjbadEZrGzITQj9004cB1/8v8nwymwAT6vvXKc+PClttCeC71FesBCa77QPf3q5F
	 wi9qijrFojG+2MMeUU2WPbhsi7iE4C2B+o/1gn0os8O9ZKkF5Pmd4lH+prmmnH9g/X
	 jYQQTnbm7U7zRxqu6PLKMYNHbwLjPMGyl/GwpScq3K1mf9D9hQQKcRvES045dSz1Bm
	 EuhWBXeExG2/Cukqop8sLu6+i621glB8wZT0XwmIZdNpl58hjOL+vZNplxaQCzfBHX
	 /iMgjoHCk7Qxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DB8CCD193
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127119357.8922.10372016567230767062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0041c52c606bae3600d4cc36f1ac814fa441a8a733f22987240a50cd0872bd50
Date: Fri, 24 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761271193
