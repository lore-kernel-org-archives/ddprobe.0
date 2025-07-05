Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A08223B620
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751747994; cv=none; b=VtjyTrp4g3T98v+TSpo0bC6QaCzkRzOD6tu7f2W95IUV1O/NtUYHly+z6I/X0Rvnw1/pgW/GFiz/iyPmIUwEjicrl7z5Sly06IV33WhsPQwRd6qUrp0i/eHo9mYLeJYuhRjIXFsAuUnhObQZv4Ilp8D4p6PLVNHaM6Y5UxnKtPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751747994; c=relaxed/simple;
	bh=IlJbEtrvCoJu75l0D/eY7Hz0/X6ex3qBKU5WT6cWrPw=;
	h=To:Subject:From:Message-Id:Date; b=bHR+u3pTIzaZqsDe+K8R+Ycr4jUTGIQFTLajw1haU0yUhLfsZw3LRi6Am2NmyWGS5TC7OjJbvn+8UKzHv27JfadsCzclkAy/Rg49klRNrP5//VG1TEgZSuJ2xucOod7ARqA2yS2SrXCfUrRPbYb7PekFEEDZ3eOdZTt2Dht4108=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t65q7aJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t65q7aJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD210C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751747993;
	bh=IlJbEtrvCoJu75l0D/eY7Hz0/X6ex3qBKU5WT6cWrPw=;
	h=To:Subject:From:Date:From;
	b=t65q7aJhX4WLOmt9BRw7FhHchofLmUa0THVC8K6NO4wsCkI8+ojdxwsZAMPu4jkj1
	 SDwLHVaYEh/hW1MtiZFdWHj9PG4CNEAjG2Y+C5ZTfYiaqD+lIu9TBkFSrTb1XXPPV+
	 FCWHyvYq3BjLLw5j88Hnkvo80lO5RZ1wpvY0SAQZqRaYXZVpk32gdCOLrH9jZZM63C
	 7YHiQEbUEGnrph2jZX0A+W4iuxqp+PV3MH9zAASKzhIVLr/QokDnzE060ZqT3XDhQM
	 z3lcTGzTbRI8NqAUvfaqHEqC3KX35Fa5uxCs3M4VHXhQEFZ5tYijyZUAghkxQQ46CE
	 0jOiwaHjr43sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACBFC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174799357.29442.3005944753838839024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80556f91bb87de69891d34e07aeae7b12a1c4064391b76fb37e5d8a7e4272ee
Date: Sat, 05 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751747993
