Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3106E185E4A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753252795; cv=none; b=XTbJq6Ht6DrDIyy09yX+6ab/BV9bI7gbrsb7SleaCb8hheJWrumCNvm/i/tbr1mPwfWlFwpeDkF89pS3uty7nrI63mSqS0/U8k/xnAbaDSs5Xz1Va8yipTPoTp7nDzA5LNbpluHXrgOVWZbtD2ATOlCKJ8oxcPQdUrLQsYUseCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753252795; c=relaxed/simple;
	bh=VdT5cvAJioBe0LxtNzDSwzDwbP3ekJatZPUkddt9W+o=;
	h=To:Subject:From:Message-Id:Date; b=ChG2Bk7XTd8TprSfYNZHKIto3rLBV2R17q4Lwo/v/PP8YRKLw4x+XYFwkQlDx0t9Oa6EqSwWKrC1wWL+X4tglLry/Rcf2voM29vGcVHjkXzVybTWuhmX+VJnJrT8TfGF6E3qTyEGkaHv4p84wiOz6oZiZxua5c6eHU/x3lJBCcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmfXjc2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmfXjc2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C51C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753252793;
	bh=VdT5cvAJioBe0LxtNzDSwzDwbP3ekJatZPUkddt9W+o=;
	h=To:Subject:From:Date:From;
	b=rmfXjc2ml79uuMbgDsGiTSWmUJBIN0Q4fUPTMuoy56zGZGq3ac90GxiyOnOqEjdnd
	 M2vpg2Lj8WOAMp1UHUkv8bSSWW6IqG+46/+EcerD1XApYnY4RKQpRtgn97kMfZMO+m
	 4WTIC3gqpvCZnBL47lw3hEQD4A3Qp7oWvgJLZgvBs63HebVEjj3KTHaLYQsSzH5Ers
	 VfpAk1sk+b9SyoDUZxvyKP+/Qm/1LLeWXtrLapXLtQXqpm3DnT/4PIVtTmb7pnHxaN
	 7PQW+bgqzsaBfRr4VrsoDJ8N3JK0LIa8vvNDNrjHWucX9u/pMoMglXNMrmxyFs9S/3
	 zrosKHSNH4Sww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FACFC83F25
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325279357.32137.4862364796919486424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660217147b271b6f69f3de7c58f58c4781f7415fdb02c7789a8685d1b4fb51f1
Date: Wed, 23 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753252793
