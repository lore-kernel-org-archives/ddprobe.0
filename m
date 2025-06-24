Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AE92222D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750786794; cv=none; b=DsnrWXoQAmJ+E6DWYlgSXwUIsJscMoRGpy9kzol+MJUIN5y+YLgeWXBrkNJvR0A8R2ri1LXXtbGYcRBNkoyQzBLEWEs7MY+pk3wir7TzGclW7H/TEqXJ+Zu/wdVjW+yjp9vnT6mcbPkFHdhhlbI1/PJSTqDCZ5YOEkqzEJpdwUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750786794; c=relaxed/simple;
	bh=zKsx+pxHbhl8a/zpCFroA7zHs6nbaxEEM+hqUU7YvJ8=;
	h=To:Subject:From:Message-Id:Date; b=NrKiS/RNdHmur35cblyyoSW+LhnyZDIwxinpJUltbV6C2N1LIIt0N4zF9i7UxSgqgRJ/aB3DqxQb3uZjUp6U/1XVWA3m5l9z5/7R6Vf523ihTGmpf5qOqe6CKgnT/6MrkgYg5g78dmNtfmfrIb79d1bq8bTv6oqvQMgZAP2DfvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwUzr1kX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwUzr1kX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AFFC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750786793;
	bh=zKsx+pxHbhl8a/zpCFroA7zHs6nbaxEEM+hqUU7YvJ8=;
	h=To:Subject:From:Date:From;
	b=iwUzr1kXwdHao92FlZZRIzrHs61rr+NZhrlFU+53bbISRfaZXEfA9UHiasShfKt3w
	 LLLA1wtGl4BxNAzvXs1Ef/Gu79D9W+PGK9jcuG8oahcSK2uqMCLmvLhDSjTm9/ToNu
	 I8tXNfsEFrB8DWj00he7utqWz7XswPL2s+zXzDXUQSAXSDxsE6apK/FTNgtKScp70z
	 xvR6KpthjDgFNNkHEWLphDKlyjuX4Nr0rXwsfQv1VbaqHq09FlfEvNI66zNCa+0hnm
	 DUbiJ5FL2zCLSZKnjHKVMRAjmmwzKg/OPWD+i1gq3f6YM64bWjQmdBY4fzQAqYUhHV
	 6UoDyOJ/tgJmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168BC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078679358.27764.11352557969655092545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a121173e83748ccb486fd321c8df89875e39a0ed775877457faa0610b39361
Date: Tue, 24 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750786793
