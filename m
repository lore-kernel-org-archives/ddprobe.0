Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE1D24B34
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745543994; cv=none; b=dCnmPzf3uImVZGyIIQYwqmwJytG149L1gRB+CF6egs5wZYl9Cp7Bj2RUXhCjVrHrllA/Ir/9I1YWxHzv8DfNpQJ4sUw7b4LPjJWQqPThMPLWlvsKRWp96MWi6Pwnt35md4CV68VN2rbBSDexWFdSIoAX9pyzrDvo2uBjg1HgJvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745543994; c=relaxed/simple;
	bh=YXX1Xhkvh/UU/LjBi0MHf+cU6KWf2bM3TYbnJPPPC3Q=;
	h=To:Subject:From:Message-Id:Date; b=r+Iw4+CpBjEDb6aDvOPaz2nxpE2z4lk0HzgaAhmjoahOZF4a2JbwfJD5vktrfWcB3nUvYBBvkVxAhWOhF8T9804mcjrr2ZlyGEw2/zjw1TYKM3Ptpn1Lb0vTHliOhVaWv7yiZwZgLS2+4Lj11AfLORJ5nXLB8kKLkuY305I816w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYJkQHFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYJkQHFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDFDC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745543993;
	bh=YXX1Xhkvh/UU/LjBi0MHf+cU6KWf2bM3TYbnJPPPC3Q=;
	h=To:Subject:From:Date:From;
	b=AYJkQHFdQf0eN1NVfFJYGURCiVgLnVCd2JZ9tjwJVofOuuiitAdtNTNhwUaMHw9+L
	 Rl0cY/AI56XxZhe/xZGsQn2Fjv8xtZTqONC0YTqWhULTfIaDu4jc5izRGgwjb8/se+
	 8Qm6/Y6qfxNFd0x3TRL2xPOZxq93oIc8EwB9NACkmVzmm6BsKMb1HBlpdFxf2DcQcy
	 pgrCJbMgWtCI6IVH/fhUANBxPOLNuqITjE5c8KqYv/VQ/5izw0XpZqGhR3fVlN7Gp6
	 hiGgGRSNOkUgKUDPwaq9JHn6u8G90XinecFIhoi0qE6nJqf8iNJF3T6RqjW038euzu
	 ntu3LRwBRfUoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F09BC369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554399357.1572.16350150223435709464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b522ef63c31049eeb0690d5f2fc98ecacfedbe55ffa4fc4c93b15cc920f94c
Date: Fri, 25 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745543993
