Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354483612F1
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783015714; cv=none; b=WFYnZZe2+xmdC+wvoor0bjk66/RZvjukDMhszqRW2WQKg5a38nUakO433PPQwNtSVM4BhPlOQJAMC4l1kbd4GdVv9qv8ZyA5FGHVoNEdiJhSd7zFgNsSCr3L0lgM1kKnwi+jvdKbteVm5U/vvhL3Y6NoDzn6ZUWkU0Tiw1wA4fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783015714; c=relaxed/simple;
	bh=H4ejO98u88QE2VpybRE9ubSqkpGZNnqsMyztZ0zTDck=;
	h=To:Subject:From:Message-Id:Date; b=CwvAoQjRNbqB65Jf6xJn5BqhgivuTpI88ZD21e8RNdIGiLYiy4xpVzQ4E/xbrLAVl+oo7K/GA012faeq4O0KominKhvhy8w131cMi16CavuQODZlqUOxQ7FTYmJLupKqTmoCyWEE8KjbB7jB71/rpnMZZOU+pE8t0IuGsrRx9t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dm8O4qZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dm8O4qZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFEEC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783015713;
	bh=H4ejO98u88QE2VpybRE9ubSqkpGZNnqsMyztZ0zTDck=;
	h=To:Subject:From:Date:From;
	b=dm8O4qZLzxkDe98jzhj90YEy/A6S/ZyfSRQJiWCF9oniUtFWF1Fc3pluOXZlLNNMC
	 ZjpHqLgHF8kOy107vaVEY9gPgvaYIadLXQR03st7llVFKfe6r56noc3TEhds0au1BX
	 uTSL69nnnbtjZbmrt/wWc1OF3xDtyUc7lTK+tkEzkHw8AgQqfaYabXq4vQ4O5Ns7cR
	 R5UdtKtVPNNew+pqMQ/E9wHnPTbFEQGSo63btB/dD3xr2zQu3OrIg4K0/4NQNxr/Xd
	 7S37Ift3jkx8wZUEgcQjNyEvXJ4bhTOfIjYwUzDSdfPClGYW7PJUTlRrTzmPYUhdxW
	 sKDGojb3zLVeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9324C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301571368.22883.9889078654471826572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d688f44c324c64eebe5c09c1a04c480fc2ff8f8a2f000d74b266ed62f22f1b6
Date: Thu, 02 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783015713
