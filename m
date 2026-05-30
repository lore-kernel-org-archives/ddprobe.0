Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D21C30E85C
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780131814; cv=none; b=bKFaPZy4Tpus26NSHUGUwcYo04vMMvxgIg3KCXZXWV7szagWL23F7DVM13I0C92D1+Zz7iRr9uCgud1cPvzsM2bRUkRltaUmUhzWRCe76Xcy2GTK+D908ORF5YJo68YEQTKY2G2k4S/5FHv5LQPXZH3Ze8VF3q6qiEtlqeECDgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780131814; c=relaxed/simple;
	bh=B36faUy4cSNWZ8JgWiH/r9aS+dyAF4pMShIqpv99lQw=;
	h=To:Subject:From:Message-Id:Date; b=POdmV+UKP3M4JqSp9OYduZpjxReHPvgwFFjD02SWUCKxPKpllxzQnmsK5SLX5eeo77NKC78FyKp2jd08O5Kmgyatwv4E15omWTYtLYWxNdqfhEaUbbJIDhJ3RUEGaXJv+PMVbGaQnSVi4QJE5nzi3+JeDv0PMcEG5qS5j6aEJD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdyxFsW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdyxFsW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF404C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780131813;
	bh=B36faUy4cSNWZ8JgWiH/r9aS+dyAF4pMShIqpv99lQw=;
	h=To:Subject:From:Date:From;
	b=rdyxFsW/MEMykv65DwRYKx0h19oXWTA7QUq6teBdF9m52U8nxl1zSh0eGu32N7L8+
	 RPlSVeAiqzljshhyZZBpBEs7SjHEPEUdkZIYnIRIJKC9h8QjqpGBWTf3i8iIJb3B81
	 qfHPoPT3u1owRK/AbZ36sIoGk0RPsKgAptJ8gqUa9yg7sXq1O/UEW6edrovSh0v6P1
	 nJdMjtIoTxo/tbuqxMzhFtN7LmaM0p0juMthqDGhR3VH3JwsN9PrJOOAkvxNAt5C2L
	 700EP3hnbChlg8K166rMKUEN7WnbMFdni55psrGHAZEx6K6OCWxcyJrkj7ygwiZaZ/
	 cJYeiYvFFsjgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A57CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013181368.25606.4429781463257069160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5a75a8c7ca7a898e8d5d2906463cc8c60881e312083d2d6abf4bb8631ca7c7
Date: Sat, 30 May 2026 09:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780131813
