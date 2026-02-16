Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BE421FF47
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771212294; cv=none; b=WXH+EIX/x6jfPWL4bDo084F+BvosvbEYlKJvEvIDusJQXCSInDa3KWPid8LRoCZK/QgkHn+d7JpqpZn9jpHMUc+Bu0Twoh1ObprOAN85W41ey8pLRnCPQVNg7lcjMVj/yjqT+L70jUaURjK90K3qrbTXEfRovytTWf2wYkJCkFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771212294; c=relaxed/simple;
	bh=rhWRlcyHY9kpKaCfKe7bfdHfbkwIU0IaDf6hUYLxtBY=;
	h=To:Subject:From:Message-Id:Date; b=cudCI9n1hVl6CvPRYLVH2lEq0iNCPbtGnUypPh9LbOn+c2ao4vKxISI0kQQiM/HBjEbxevai7Oo9OEiKSZTAD3EF7oRkYtQ2VWeEg7GBG41s0O0BRfF4KdMKuC8QuqRVY+jXDk5IYL4thu91zCHrlu6TelYukgQ/o0sdBoVSjVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQZPGnzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQZPGnzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B541BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771212293;
	bh=rhWRlcyHY9kpKaCfKe7bfdHfbkwIU0IaDf6hUYLxtBY=;
	h=To:Subject:From:Date:From;
	b=JQZPGnzjiWIPNU37lvlXz9T9ZFz8klWhxgfJGybxyJaiQrNCYZPoCJJKPTTaJlUYV
	 10B1lAjJlouWt6nNax0NtAEejvw7ZYRk/CoKGhSKY268RH2DEDg0D0jDRE7xzkbvnR
	 4c/hTVnXcoz+nRoHokMiRwLzs7aYUJqixRTa+v3K2KVCN/nzTcg1OA5GTukpu5kT7D
	 709grQzMS6Y7jB0CGJZ7WGThNHAGLI3jPP3pnS8YXX0dXGrc8lxV/cwd1zjKg29bxj
	 9hQLV3I16twHuiGIglw36tqSQNLXT7btJXXJQpcprQbIDuIouMUBGNjRVIZumslaa7
	 c0v5X21N2+ZPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAE1E63F2A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121229360.14730.15210248785299174010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae2579cfa63b166332e1e34a700a0d3b94531389c9f5e88eb5d812e67f47653
Date: Mon, 16 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771212293
