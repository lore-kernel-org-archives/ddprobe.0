Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F891DFF0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720304183; cv=none; b=VuEBEfKH8pac+/yG6QXDRJBwfih5PXBDgY8vVeZNc+U/Dj8+DrJguzVgmNwtWY+jVZ13thjbe60zEbhCvKxrWuj0vYp7Vtbit9UiuTIZaVLzE0+nKd0YYTbd513xCqD3HpqvOa7VYztObh4ax5sdVEszXcBxgzMyLcJMu9fq5Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720304183; c=relaxed/simple;
	bh=7xOlmvLSiuut9s+o0zf7moxqsE2juwOXYPvnbH354T0=;
	h=To:Subject:From:Message-Id:Date; b=G09hmQ92xzYH22tUQ9vo83lEM8F7X1Bl5+T0EIQYlorV6x9PFoymgg4YiwQVw50GEtQ4wTZ/sD5XNR6DHUYe7vfs+TxOFcYAefn1JlXIcjQc7PIgFJV14Q/65CA/G/nTICpGG5GS/ynf4mjf0YRc9xQap3ZdoT1RvbjdjTM5XhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzbTsDou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzbTsDou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18CAC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720304182;
	bh=7xOlmvLSiuut9s+o0zf7moxqsE2juwOXYPvnbH354T0=;
	h=To:Subject:From:Date:From;
	b=UzbTsDouLl1IGGRrQwq2CIAErTJEWzfTQZbjERQf5GvAPKd00FkbvDwHtdGmY4svk
	 W8muh+f+sQmf109K8t7U4xMpSQwVEmU3/CE+f1A87HKQRiDDqSD8ksvsOhoEQvL5ry
	 8JxGKFj5whft6n2GTjm44BZJ2/lnuoxir+9tv6yUWi5b5fSdAE2YV3UPKmNriMQX4y
	 qHY3pAfYckIe+k95ptg7PiuZbTbY5Lgd7/x807UmD09NOpoNG4WG9mYi+RLtdVjwl9
	 cz/EUoFZox4qEFgk8N9dFW7Uw9yNfThE6+7ZZg8/nYKgT7o6LjvJbVFkbk9ieBVFkE
	 hB7xJOnGGN0bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC6AC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030418282.16138.13460271955676250689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 226c1e07a9a20acdbd96b1f4d84db5cfd2dcdfe7f5b05ac6ccb691f0e2b41f23
Date: Sat, 06 Jul 2024 22:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720304182
