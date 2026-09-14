Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D68736494B
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789360234; cv=none; b=Edh5OUQ66otj9TP8zOFeRVs+d9xGQoZYUJkHRbCxmornzs5lZ6PEh9T1jvwbnqutDw8bJ6fRC5WQ5vnbZIBbfXIh6DsKw2B3YfYP87fDUZfitSQqih7oroaWiu0ULQDb4sNT/m0bwWv67Idm5wlQpyFGtpYHSJ2av7UK7fwWXdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789360234; c=relaxed/simple;
	bh=deUd1mlufeb4p6UflWMwQV7Dd1pmU9AhnoVOBFktFts=;
	h=To:Subject:From:Message-Id:Date; b=KG8g+jvnZw2UpdDVOa+KYum+7qynFlbKQsJHC0OzsR37n5VcesEJPppf3u4YJbwwIbm1+w5T+zwFfnNS5uikbZOGdO3ucsDiQdAty1wFURwfrr0vFd1Z2DmWYw+kZv8bRtJVuGTV14YgIHEKVE94JdgLKhKJqQMDjLq+m6dNs9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0lx8gij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0lx8gij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00C23C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789360234;
	bh=deUd1mlufeb4p6UflWMwQV7Dd1pmU9AhnoVOBFktFts=;
	h=To:Subject:From:Date:From;
	b=Z0lx8gijHbj/gcxf8h4AKCpmzufUL/bcfTlYHjrgUwWOXl9UaxbpGIqrMexHv4ucs
	 dEqc5eRDUDL5vsloUMa9iJamnWJjuia2ziAHFF23vWZyPjfxVI7DpxkvzwzxZjc4DM
	 1kBJYv0rBIgoHCQjOqTmUMn4GIeul6PCsMl8gfgcxXL5IZDjbxI9AoiNgjbwlQqJrf
	 AdFI0jXN4ak+T82mpq3xageanQNp5+aAQRqKsj+CzEKeCvsRDbUN/rBtVnzm625PBF
	 wyLG/TNDCFEd9CinXbfp7UYOmOcaBRUcuYG9vqNzj9I9lCAp9MAxF+ixOlbCw2Pkdh
	 wqdTtor4ACYLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0D79C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936023374.25457.13414586073696281810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c673b54dc03411f21f811703b84018bf10c84f0604509790d9996c64d42803
Date: Mon, 14 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789360233
