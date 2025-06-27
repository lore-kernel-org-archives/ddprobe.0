Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221412E2652
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751033994; cv=none; b=m3CaBgyxJ8ZR4FGcwp/p9b3zV2TtEiQds1bk/HyiN31dxugSzKG5FtBaFXoUxr6UDBJ7kbAEN+vbmVq+p6XVk0JbNCS9nlq7skcGpIXV0/1Ye7DoXD5DDpsxx/ymxK9qHc8D0AgsW9gLZ6gT9A0SthjxyrOkunhkbcRI5Rvsf+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751033994; c=relaxed/simple;
	bh=tFt5UDZ2XWdC6VU1nFPj/wtDW8PfPF4yykCvCr7wufI=;
	h=To:Subject:From:Message-Id:Date; b=FnHF4eL6ySA11INQxg6QxJgIXYTxBTg5sdCa1os76jeh256u+ex6rE2TaMjFno+EJE4IevgitqQQ2Hza3yQKenfSzl9yCRtwUiDYZ4U/LsvSAl1Hdd+GVUrTjPxOF+/P+2cZGizAZ9fX8h4vzW0q5kpY9u+84AfdFaFhOqAa038=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGCUfiUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGCUfiUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72A7C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751033993;
	bh=tFt5UDZ2XWdC6VU1nFPj/wtDW8PfPF4yykCvCr7wufI=;
	h=To:Subject:From:Date:From;
	b=oGCUfiUe/g8sUvcY3Q+W8Vba5BMVkV9HlKTYxH+eAT8u6RNrWyi/rUmHxgkmxenUM
	 8S6vpPLtDsu/alkPpYUvwbUAyea25Ce5cGxU0fbaLIswXJzohWMWVbkrsv3dIcefdh
	 BpvVLerxPCFYLzTCN1U9eYfNjAPEMwaRN+EH1q7KCZYHMl1MUzuApUDEDu+oK1xqKM
	 9TXWwtYu+9v9WGkkc1x9eL2R9UzQ2Yxdp4/GCB8tIVso6IGFdzpb0y/Q7S0qShX0vj
	 LpjTM/5FxRCPgEikuTYEXY6fP2ouVt4yQJ6gj9JhnX7bZqfraVGWqE6tUFOva3RoU9
	 2NMBHh42RO6nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927C6C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103399358.3692.5879285060271019413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff62df3a90f535c921095fe15f04b0d17a2421745109c97e8bc843e70a3e4fb2
Date: Fri, 27 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751033993
