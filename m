Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD0070810
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748297994; cv=none; b=AJuj0+nmXmVl6pYYsBHqS9zHmqQqGeiwyLZFmGc3N7+O9ZkWiZHq/i7N7ItXCm+fpA6/pDQZfrn5FiktKXXnRXhNmGlBjsogIOaL8ubPJeBfBVQ+qdvrTv1DgEJev1EM2veR8pQW0QVW5MiDB9M3SruSJAkZ2N0WP0RPjWn4tbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748297994; c=relaxed/simple;
	bh=81d4otVUnBT38Q+c/fJ+XJZ8rmJFRDlFU+7iH4Sb5F0=;
	h=To:Subject:From:Message-Id:Date; b=MEuoxrOIhFljgGXPthIIMYvlM+qIdfEKgK7pq4AglgFA3GEgyf85GrIumQ/83mGqWEVgBmtwDzmrugQ29zWSmyUiKB3/sYC1TvhtqPu3FFdLAFcsoXFTIaQVSjb6cJj8AjU83JIXLGxb/oprwYRJEuH7YEkTm9iOpsDG7UK83JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoin/Ct+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoin/Ct+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11C9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748297993;
	bh=81d4otVUnBT38Q+c/fJ+XJZ8rmJFRDlFU+7iH4Sb5F0=;
	h=To:Subject:From:Date:From;
	b=eoin/Ct+uAxobAZRNqbK/HXQaKtH97OshBCcIGG0MtAWpv5+BryIpdydyhL5gfc0c
	 UC6lhpR10edLEvSx45/FepZDQI0FREHVuK/xYqfzaGVfrlvsRFvDBLl+sPfpcxpeA9
	 XJRZrbkODUtq2Wm20Javkx6Fu/RlQoEWgRbNHUqfDMBk0nis6r46UbjvkRNQ79Foc7
	 61K9a3KeKflm4DoxzrEElbaqD/cn/bJ5BzrWzus3j5UHtzqHVk4baC32jgbhhGO/n1
	 fkKpHVa6YyN4kSnoBiktFzLcImsTathSzSxuLWLXWube3VThlXYbXhOijLckLlpCvl
	 DRAwfmsBOutMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E975C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829799357.31714.13982935252484991222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114361c715e6810596de93a481e1a1e92764a70a9a407cc5e9978f0590b945a8
Date: Mon, 26 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748297993
