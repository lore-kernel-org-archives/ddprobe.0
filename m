Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B9233E1
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714534343; cv=none; b=VfGZ+zNmk4iO+S7bccch6OJPmrZdBNLDma6NlkIDN6FqXdqus6gDSJYKMoWD3dcE9IRh945vRpm+RJxn59DoOq4h9UKYOmaaMJPdTVsVFoATBpEePHSaXXNyWInr/cce7kJsB1JyMUfrz5neN19s7iwh3lGe1N+YS/eVn8eoG7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714534343; c=relaxed/simple;
	bh=55xvP05OkOJryBtYVgbFVmCwMLwOAtKITg9DCREHF/s=;
	h=To:Subject:From:Message-Id:Date; b=HW8vN6mrdNu/4g6oz7H4ttQYA3s6LxiYuIAoKh5KdQFYc+ROYhArsALvASlRdUgmd5Wa1a1BlrzgsEfGlBNSrVP/xA0WXGYKCSZRteRFjGFDGS8XWkR6ryZNBDC/kreDR80xmu9pfwPdJU7n1jk4jxhyKHxeK4SB1LIKzyPoBjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6Qm61m9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6Qm61m9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89F9C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714534342;
	bh=55xvP05OkOJryBtYVgbFVmCwMLwOAtKITg9DCREHF/s=;
	h=To:Subject:From:Date:From;
	b=M6Qm61m9kICLqWIqW8DeUGxtUwufBFWDDw2Zt+3gT08/5bZj7NUXNh2LD+UPW/w4M
	 waLGaUcjjR0f2BPPPCe2acj4xJGs/T8/YpZKwVxcA7iwWdalVaxAi8JDSgz/R2wEIy
	 Wtqp2JFn2nDT+SfxxYeFr2OnUGpyVUNee5iT26uhq3HdDLkxP8++ytWjW9oMp/5C2E
	 VxKs2XJ5HWmyRqJ7VG+AoWRLWhYpu6Fp4TnZIuoxtKsld3vXDVm3O3SojZFf1nyWEN
	 597JMkf0uqq+il225xxSXjXp/n+Lhleu86FyVRm0F2gd+TRrP+E3w9FANtVf0iK+/1
	 m3lUG69mELEuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE14C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171453434277.21965.11861475137582283586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14136829ec7397d11d8731a106605bef6ed1c36b8049e385087732251b100fc4
Date: Wed, 01 May 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714534342
