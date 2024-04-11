Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB4213CA91
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712816297; cv=none; b=ngDrq/4+I8qmB4WWiBH10kGtrTP67lOoAfw7WuS2CO3Ec4mtIfrJvx81PyIdHRKXgDSpxPWObi8N7sYEcAqAlt9IWNBR1WT/LDPfMJT4T5VCWAD1wndtwcz6iMIkC13be6oxeRbMABZEmRBKEbZMo7J2SJenTmwKM2yOVYDuHus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712816297; c=relaxed/simple;
	bh=ACyORHlxiP0qo7axkK6AhBovc+5j6p3Z5j5YJjka+2E=;
	h=To:Subject:From:Message-Id:Date; b=Q8YLmp173jvCZ+zXe0zajiQoR3z9cM+1I0Rz3CLAMK31aQtIP95RKKaavx8gzW3XQRwf0RbFtSxCi5VT2AZZ8uFD324ZxR9Ot6VffbEhw+lAsJ4uPgsaFyo5K33aI2uzmsLVeFKJ+D6bekpjjfZYIk+adhowIVzgF39GTKOOWrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALdez55Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALdez55Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7366BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712816296;
	bh=ACyORHlxiP0qo7axkK6AhBovc+5j6p3Z5j5YJjka+2E=;
	h=To:Subject:From:Date:From;
	b=ALdez55ZwVft6qIYZSgUvD/AQ4FJTS+W3kygoDWr437duq+egaSHiXBwwKcOCHlQq
	 1r/0l7xkLroldh4Ko5X02r9DRuKCnaEfg9GrENww+iQVMWBR6+0S38mCc7yCy7C+rz
	 lQ6oasWk6lRKyW2z1IVQnkIJytzCINa1HJ679plM1Uj0W+fq/mO+j0SSRTPdN9C90K
	 GoZYXSj2xoxoBRqYi9efZ42QV48ajflvc5tfLv2jjUit1VdvbtywgMJxVupt1adOUm
	 Kivo3Z8ByigGtMyz6AAcJoNLpYC2HmPUz4KEfS9lVjXogENtWZUrECuZHIs5QcsvJK
	 3YdYen44HV93Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61030CD128A
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171281629638.17462.5317704072270041134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b56af4180745d164d5766ffa78c814b90bbed8d7789a5f5d403d9d600af2844
Date: Thu, 11 Apr 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712816296
