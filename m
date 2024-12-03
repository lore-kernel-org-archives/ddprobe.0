Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278C9AD51
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733205354; cv=none; b=rPTzUhZVqP/b/LU5FaQUvrm08RWM+lErmhnL5RibmHd2qpdHshKtISnXG48R+tRG7nD7B/5wQMqd3NmZH68TG0FUj2t9okH+6nMdY/cdxVUhNOvKMGgDLfcwGnhPH4Ic8HtZVTbspxa8rvDsIQISAle2wi6pCzAAhCmLM/N0bdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733205354; c=relaxed/simple;
	bh=0CyT+dkzUnLX7ZR7yvjDKo0lOpW5TdwKKsOZ+W+647A=;
	h=To:Subject:From:Message-Id:Date; b=tx8HxsRo0JwEn4+R8dFcqmOQKUS2yX+dPr2lcJ+8D/guiIQ2YKzqWbgpg36s+qRK/MIoUcQPa7CHvxFGoMxDPglBfIIlxhYGlJlkTHgCyhz9qDFVahLvpQ905i6/NTgmTS3Z5oI3/lDXPPVZ6AtJpT6TL7Ka9+s64xz0TDx3HAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXEm9KAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXEm9KAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35ECC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733205353;
	bh=0CyT+dkzUnLX7ZR7yvjDKo0lOpW5TdwKKsOZ+W+647A=;
	h=To:Subject:From:Date:From;
	b=jXEm9KAMMcZrzJTMPGZYIvwDEJHcbtYPa5PPAYKU8JWMMrCshoPzQbSl/diIpkt2O
	 xH38H+68xDrGEwuhrw8Y+6x7aFNC5n/wkb2+2S1dwezV2hC0vk3E67tRJTEeg6d19o
	 yTYPhajEkUQQ8/KqrSd0dWARR9cdU9ncjviRQWWh5sBmwhRRz9C4Dbr3GGyx172X+P
	 OQJ8+RCtO9QuoZaCQO4rOJPOLXN0CnLtyubdDWkXHsmiRXuJq14XOujgGOK342uskm
	 HrLsWVrFYfd4HqUIoHFiRf9dXeRIZ3qjU6jgE77T+bzlWr5I16d9kr9wNtlgoxgQMc
	 3/vC5I9YSYJjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921E4E6C609
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173320535359.8215.12648362742401427505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b8234e9d642711468f4b8dc95177058bf78cb7d6d92c7bebe2ded811f02745
Date: Tue, 03 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733205353
