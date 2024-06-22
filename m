Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9C412B83
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719093143; cv=none; b=dzK7I11pWXjxmKSCKc+i7SARshwNM5OQoaVsBPw7pApI4kyHtw7brqj5mecEUR+RLKZFq9fiyHXF/F8xW9auzq2IUWpmw+CVB2y/43ye7qMtQwsXHIswdCrnaw2/WFd1NUWjBpPIpvkq5uv4xZaVb4ASk5uEopIpcntUz7SO5iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719093143; c=relaxed/simple;
	bh=vkND4MA89rJGtycMC8xI8mfiuYiZy5d6ZhTtAbiK/wg=;
	h=To:Subject:From:Message-Id:Date; b=GKRJRZn8JLq6THxAfzfimgjal0AerAngJnE/sQl8Xzv490E/LXeY1JeEAt9eVZwmsXG4AEnThWeTPDa5q77b32x9XnmDKJmOFS22uzdYHgs3qEMJO9C73T+awhfr9WcxhOJdcLVm3lY+T81o1P4fPNTVqPfheWO/Svlc9sLa23w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4YXOJRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4YXOJRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0046C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719093142;
	bh=vkND4MA89rJGtycMC8xI8mfiuYiZy5d6ZhTtAbiK/wg=;
	h=To:Subject:From:Date:From;
	b=h4YXOJRXz1+8D/24LuGsQIR3IYAXeBJN4CLXj7QK+jXNDishVmz8qiXZKkaiJ6t7n
	 WMCGT0t/UfDm2ZiJUkBJTjXJM2HeNMoXehC4SJavQ+X7+S4VntUT4uSRJDsg8sghFS
	 6Rs8pyr9DoUmyCUp4RU930Gjh1j4ZyU5fW3FlXYjIG7T5u1w5fu1+udK90nzJ1XwwG
	 HLj9czIcougdTeqsDIENGrmnLByOSLKkW5IiRo/t86uZX1RBxA6BjHO3UKbE/Rg9OV
	 28WNaW3P+3XYs8XZJZ6MDY1JzQ9oHtZZS4qBlbTf4gHoYi1FTIrbvnJ5IUkgG5oVri
	 Q4ZfXD65glTVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C285DC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909314278.5313.448218182516500707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b18c5b62a8a7ca9b59f4f89aea1269d8eb9dee51912b2a73509d504907a1a04
Date: Sat, 22 Jun 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719093142
