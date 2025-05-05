Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3F325D1E2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746456593; cv=none; b=abqt4EjNl7wZKdyZcfy4GFd52bsU100VkUJjZbYm6uvkNz+Woepnt3GA6WqUckaguCXtA6sGHSAmSBKvMGJzzpUqvEg9FbrSZ7VA2L6s43zVLD3nxKFxz/OtezEuYAko6gLdEQnZd08wWyYZ26Q/3HECwovDMkuSmHa2SOX4heA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746456593; c=relaxed/simple;
	bh=NFtXuQq3Hdnz5ECtW5y821qdPMn3hDF9rVEOI3azCFQ=;
	h=To:Subject:From:Message-Id:Date; b=ecy0GBuzVuvZOWI715ARlD2xoRWaf1PWhuZSmG0dcqDkljiyGwH2LhsQP42D9rM9/xkfLdjfhtmBYF50ftBfbAnsTQD/cEFwZh2IhWPUX2/F+5kp2n8P7cebgPxYA14G9xdal2Na+w0lYhE7RPcTLXlCuTFdFJCUkNNzOSU/Vfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfy8tQ6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfy8tQ6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0037C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746456593;
	bh=NFtXuQq3Hdnz5ECtW5y821qdPMn3hDF9rVEOI3azCFQ=;
	h=To:Subject:From:Date:From;
	b=pfy8tQ6OTgRMfTEHRfT4KkSYfFBAQ+EyuhOp489EqDgtgqtOuCb12uVTW8YnYe++n
	 PRk5r+JGkCe9ZmHLakLuUafjIilomBU7pEORaegiu9d9XwYjeFAlbEfnP22RZveHkz
	 2U2eQZqgHYEqfmNttAxzdZ+h01y7CIhTHjZm9uJqqWjhljZB2UKsy/mC7pONH947LY
	 kP4TjgzSyGUhc8gAsXmPlyF/1hWfHP7CKldp3lixHma2H9/eO8h91zfAJfHKRMHGWf
	 LnShDcRoXOQd5sNWCSeBXDl4QCQUwGyOU7Td4iJNKz8JzEAx9ix6R7eQqKS5zDXe3b
	 gb0MkqTdyKnAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F38C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645659358.6044.17827343280090460909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23cf34fc5216da0aebbfd934190ddd137b3077e39031dfc8d12c480598af3195
Date: Mon, 05 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746456593
