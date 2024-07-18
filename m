Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4098120DE8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 03:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721271923; cv=none; b=O3wStj0d8yM/GhZ82DjiJuwocy9IbQybvi+ucj9GZiDhoRm4GNYBsGEJGH4XUYokzSp7Klpiw3sDgSjD5BMJHlQkTw4KHjpVEz/ja9ip/y9Vz63BYQ5yi5CawTeHUaf/GKa9+JU3BJkDlQcGb/xL94E3Y6M2j/93IjsoHlUaX1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721271923; c=relaxed/simple;
	bh=0dvVci5YgYlbgpwjemcgifc2cY7JrLD2H61fzxUD/Sw=;
	h=To:Subject:From:Message-Id:Date; b=miq0LYXHuGsyI8zf/nLxRveVctJJ23RSHtY6N7MLUkUJ+DG1vW8F7dOFLILpMMQjGG15pRbJnbDrgkehj6EhaFAN6WTY2OYDLh0FgIKYJDDeQoXzTBExEK6UZ56BZu2pfL60u2hGESWTGY7UmEk4j5P8aRaSrATIgdXIu6oT6j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpvguI0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpvguI0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AA1C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 03:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721271922;
	bh=0dvVci5YgYlbgpwjemcgifc2cY7JrLD2H61fzxUD/Sw=;
	h=To:Subject:From:Date:From;
	b=NpvguI0Vdkt8C3NL4/a8DRlBAWq5vwHDMAflcugTVQUWxHgl7aDsZ6Z1yn1kS4FAz
	 Ka3AjVaN1nz56jnPfPDYo3St9nAtLQsa+rympnuDjX93KYZkwMzikYuw0rBd8pS6tc
	 cQVE0t1lavqmy5XZ6iEpQl/YKLu7IajOvf0LZNMDykWbN8Tug1TWMqJoizLyKHZedn
	 KAMNXh/b7iCP9D1l9jsFJoHypMwrm9oOQJujrdTFAsf1cXmhKwxOn5I6b8RqFKLbab
	 r6H+73jXNELzoXBE/tW3tgIihQxcuFLGNS6eMM5aEG1/SVECf0l15iqT4QVvRVrFdQ
	 LwnJpwQTWxv1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE882C3DA60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 03:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172127192277.24682.1888315867014018652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92480d3d69aabd31b1daec90f99d0f834c134640311c958df5b621c771f8b9d1
Date: Thu, 18 Jul 2024 03:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721271922
