Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB961386544
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773441893; cv=none; b=A35WGSlf28nmS4j7z/PF1icB8sc4rzv2BamHp3vRdYsQMf+3QHFeB1lsEIZNHcZacwhEzFqjY4z4YYbbwawbOsRu2e/bF/jRdPCV0VhYhEQUhW+rwGq3o+eC4tlol6X5YrpdUE6cQIp/WsEEdrLyZfj5EPNufvnlgJhxU9w89M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773441893; c=relaxed/simple;
	bh=YEri7pyiL8dcxcnaU/L2K/M/5sgU4uQfxllpb+zPOe0=;
	h=To:Subject:From:Message-Id:Date; b=d264EnmxTQ+xSsvoYMKPVzgBdCFAF9z5I8bvsA/8SdHknxFm3Benn7LfCTPrMi5VZi+SVKQZf51CLfSJtppaRDXIQNL331TlRJywwH0B67dslgAoPx/QF5X2lk9bf75FoD7IU0od/P8hQZNLqOQxX2PAxJiLQiyj4bOeyyX7KOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clI9OGtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clI9OGtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1445C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773441893;
	bh=YEri7pyiL8dcxcnaU/L2K/M/5sgU4uQfxllpb+zPOe0=;
	h=To:Subject:From:Date:From;
	b=clI9OGtn2A0Zo+e/Q9YGnNOQBmOrQwUzHmlvPHCZ/xUNbSILlm0wwn5GL7DfCMend
	 Cqbh8wFy6U6gpwWPVp63WUjkHtPR4KsswvKyBmi4RPWeQwL8xx1aHvVnULUhZd5+Yj
	 NNgTiLHeFUftbwGhNX83vyTehfKMUkFMI/N4VMnYZzj2+eYIfQlIQKIuHMm87lAjHs
	 Xon18sEhrahiQU/EHhWAOAIoUL8X55s9GGUGG7OmnD+sj/c4xkiJVeObe44Z6v2tRx
	 k85WKs+ank1ihoAb4UvAEleAxlswqIDwmeHf/9yY05pk6R3E5mSfGFinaEqGLch7im
	 E6WRzyaV3FDew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C8107BCEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344189358.26885.4796686419785721641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346c9ba5d14060cf631b77c72a92c78036de2022d721a5efcadf60a2259c20c1
Date: Fri, 13 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773441893
