Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF124C9F
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 02:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739846334; cv=none; b=POODyRDoatWhlxcTCrq9C40AAC4tstD7FLPgrojAwI7fJpdg4K0ChaQptcqRnYGRan7MPqTJiHdlr4j0bV7YwzT0ApeZ4g7qO9nH4KBEkHEBYaSYwFrrYpl2NAbHS9SindxhZN9wMByT7WHyTmL1DfVW90SZF04p5uNuxJAWPa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739846334; c=relaxed/simple;
	bh=acp4AR4Rc77bd+l/ln/Y9yrDeUSnNSqHC3uYYhKyDNs=;
	h=To:Subject:From:Message-Id:Date; b=XulI7Eodpqfi/psx3+Eb8VHOPbOfFkdlUifHRv+o7aYfl5fbMi+eV5l2PHa4ZrmKwb5y1phAm/H6n82mC8d92YON3I82ndSxENbQSmvdgHkHHMxGIyMpqAMjh7GryecUYXfZgpE9yG/tlnChgu6U/ixMrQt9HPglmI5AInX+8/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlRaS6TZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlRaS6TZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF410C4CED1
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 02:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739846333;
	bh=acp4AR4Rc77bd+l/ln/Y9yrDeUSnNSqHC3uYYhKyDNs=;
	h=To:Subject:From:Date:From;
	b=PlRaS6TZGHR1L8qJhgsoeXCpq2Usux7oNjahCQVaFUvyrd5pzTy/Qi9xkE0yEEMSf
	 CKBDs0u8N6KDfumqVFVKF5PEFy8C9eD/3Wu2rI+Mrb3KWWGOYV30Q/sNqX+ywll5iU
	 7ZycqIC2DUbqcwkxclIuK4777BjfTk3RxthK87QR/tSIiCTiqea2Lv7sq8eALV+JmN
	 +fzS4fQkb/PfHUlB7RJDo0TTcuqyatUEra0ZO95nlcJkmBB5tVhEFjJd8BbnD75xi7
	 Dsosqg2sLsrCNOdpN54UFxuvTzCfwIK0ozcR4SFyLVCoIJWLOH5KCizF+KxkqxafZA
	 jiGtGh8B6UOTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B90C021A9
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 02:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173984633360.10772.6630771329340622839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf050f1adca5a5bfe5e7bda1324abe14806a8c0e2798a56405f8368f1ea25fa
Date: Tue, 18 Feb 2025 02:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739846333
