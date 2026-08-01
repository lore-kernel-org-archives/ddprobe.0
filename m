Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607543B27FB
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785603034; cv=none; b=WoBN71sI/FUJN6OMkB44GuyBzwBM3w6dMovKPbe7RvwzjFKv4O2V340kZ8G0RPbyd+MTBCoUAgEUpPW7GHkUZgajgWD7tNYtDvSWCRcZxasnwoY8OoGJ02g1Q/VSUksaiGce+eJz2h0l5tcJyXJJc1/nexY+JRI3L1hAokc+Ssg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785603034; c=relaxed/simple;
	bh=AF6p331VWSdDvgbh9Y0mJ3RfqyldT5jsR1gB/GbYRzg=;
	h=To:Subject:From:Message-Id:Date; b=fi6UjAxLYRSBJ3e/P0WHtKeUR6Bv+R+BYKWZKqIRVYfwqXG8sq/KfbqzVQuKi0YKhhL5wL9faCnygRlB5F834aSQPfoKNmt+cURPLY5t7Nzu/M90RPs0/33rULLlXwOmmoLoaLYi+/rbywqLcKLMalYA1aGJWhTN+ojsAABq1/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMxMWVJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMxMWVJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8D4C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785603033;
	bh=AF6p331VWSdDvgbh9Y0mJ3RfqyldT5jsR1gB/GbYRzg=;
	h=To:Subject:From:Date:From;
	b=fMxMWVJz8YRXcQcLE7oZxcER1ut56glfslTUL/Qav3ANN0rovWtN9JIpp1HsMciWf
	 qsSYbcXwcix0ouWo/d3dx3Q1hwlkK1+zLYhYZVLPk7wWmb6hWxstXFfhKOLz2uw7SR
	 n0d3vh4yB8FPVYD3lFodHw7jnfKgTedEL0Birw8jMZHEx57ICbuLbab5Msm+lzxDNE
	 SA+UIl/4qHIS0XjHfawNXVBGGRAhjSDFWJ12TV8G9+gx3WIRGQq+d7Dcthw/b7GqGm
	 LL9sFo4xHgM8RVR5WX916P467lPHze2TNnuP6g9y6W8ye4XXSc3j9kzuo50Afay6mC
	 POEweJvUgjGIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BF7C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560303373.9685.1358784644630317260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49f812f3284ed55dce9f5a28f0d940725a1c1d5976ca96ac2a3d9289077c953
Date: Sat, 01 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785603033
