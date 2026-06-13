Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412612620DE
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781376394; cv=none; b=V3nBkYgKKWiDiTRxDlWlH7v9Qsbfo31DXAnYhKTVkF/mKWKLxiB77xamAJtdy0aIQIvhBQK/bfkdQybvSXbUjbKspFGqHhxDY9UzMZ3S8QugfZ4HVuyi9YOfTBH2RUyvNo4D9n9fC3xZNAmPVnVilC+G/cT1r9BdkCLkkDXiYR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781376394; c=relaxed/simple;
	bh=cJcXVNgZvHqtoGpl0nVpgvEB1CwUzFhwlj0ZvkPukzU=;
	h=To:Subject:From:Message-Id:Date; b=qs40y70X/asrzsl5HAfHzzDqvZGm1ZpFPr6JRyy4BzZ6ouafTu0g+VlLmsaoHR4ES1bq7FnkehVkvFPZA2oUvqk8awyg59uCotPubDRb8j16fL0wet58z+jLzQBAoczGyPu/D7FVMZc+IWEhCPezNA7HyOBevgujHb27REcpD5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ba6LCyr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ba6LCyr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AA8C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781376393;
	bh=cJcXVNgZvHqtoGpl0nVpgvEB1CwUzFhwlj0ZvkPukzU=;
	h=To:Subject:From:Date:From;
	b=ba6LCyr/Fl7OQTyFkkOFXfPTBNU2KX1Wt4XxqOoAAx709LPgA3Gz4JUm89of9eWzc
	 Xm2kn7U85nYEuUrp+FzAgSXnQll79TvIuydbXk0+BfUFLyuOwl+NFeLJ24coTxUE4t
	 +FSphXVcGyGe1/ltUfkOYtQFinjxSz9PDEKicOSYRhV2WmChckVXNZbSdBnhlNgKq5
	 Bg0A3NmAXP/uxPXZquiz2jtBts0K2PboMo4JU1OJZMMMmwErn6NNZSwurdaE3E2ne9
	 rPJj/QWEuBHxn+A5kYT6w5KJ+pxtI01tlgDFiM71nfRMnKSLRVIDFmqhwVOxvXkRC7
	 8aCUd+dCJPIZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9647CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137639367.11736.15635660700830857191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482c99f693285ed476c43120848c7e476f877a7039c96dfc94137902ca791588
Date: Sat, 13 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781376393
