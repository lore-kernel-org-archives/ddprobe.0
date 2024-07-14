Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5A131FDD
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720960223; cv=none; b=JVVAZIRO9dW8AZqUDgX5aXIiMxfZOaPYhzPhTgVAoGYPcYic7OJcSYQ+0BJwe+bNIsMHmDjbuTgqXrqGzm4Uo8QgXCJPCwR4sPZnJzoe/G3XEvFdsDZ1gdSzzpkKWyC2a/zIqCdZT/Kg6Cei0fxM1v9Nm1Qan1YukqNmchiwhzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720960223; c=relaxed/simple;
	bh=QIugTg5cH/jCbU0giejrLczMyGWDPtq0ahE5Tk0q7Z8=;
	h=To:Subject:From:Message-Id:Date; b=L672ZxmsFLCqil/J6N+FmGmf2txYTHqlE+T8O5cAQI+lMQSIjUwVXw5Ol0GQKE+G9VRIWGYaUK5UOG7wRsgMrmEbOPW78+R/7pqbZJeXzB9EDWI7pTvPzdnIDVxGfETKqDMH3bN0iQ7mkrUMHoddzspIKRzwYb/JEtLUPT5zDXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2bXgtpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2bXgtpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2F99DC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720960223;
	bh=QIugTg5cH/jCbU0giejrLczMyGWDPtq0ahE5Tk0q7Z8=;
	h=To:Subject:From:Date:From;
	b=n2bXgtpGkXDovv0uU2bY4i55PNTiJU2NUKfUH00QPehYRGQdD4yb0MGI8VjUVgBxA
	 l0SrQHTNoxLmHnVG4K25YY5/lmNqm7QoQ5W1+b3tXaL/TDh7qCmTZa4rI7BP8imkOC
	 YFL63+qjQBLGTvGc2VFpE5BoWkfQQGY5U95BupQdHdlFbNzw8I6bRj1/v3yszlozjy
	 s+gnQNiCK/jK3Vimgwn6QQFHBRUUjQPBZYfhPMuZEBTiB5ae6Xd362UinqwavZjSv5
	 G3KnOb4be9aKhpsOeUL/m3nDd42oOBc+GZg38VP8B06zDMCXNWjzCLsmBnGiu+Oeey
	 9V8V9uTLruQMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E69C1C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096022282.25634.3845754554768784789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ecdcf0095102b4a124a2db4ccd01a1a1c5a0f7ce8d69405294637d023b145f
Date: Sun, 14 Jul 2024 12:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720960222
