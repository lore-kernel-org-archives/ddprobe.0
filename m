Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1776419C54D
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732100154; cv=none; b=jZNtI3L20IdTr9W80RIQ8ag53dK6OsiEpbjjcjwboqHP5dZ5HM9ZuxfWJzFPWvnAxKxb8CaHlJd4uBYCpx0dR3RtJ6cgApld4aDx3QnRZ9uTOvE1QN3BgDr2xbtTS8c6aU+ngSx8LyIVlSL8YXTNuKcCq02nx1JrQHVnsjFe17Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732100154; c=relaxed/simple;
	bh=Prqt+CU1nxTJnDv598yKKiu50peM29NBqZT1cIQ3isg=;
	h=To:Subject:From:Message-Id:Date; b=Hl/7Ht+4q7MFAILop/nSIQxvz4lozprfD93bvR32w5BDLfWPb5xlRe1ppIMbm4mAAX/7aqXgBs5h2ry/gj6AQAyBtmBbS7dKZqcR42hs31V8PmDdkM8NmkLZcevGDj12Wp3qSh0Bujp43eop57I35G3/6jd6CQjha0uJmIPKr6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANpFcyyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANpFcyyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A521EC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732100153;
	bh=Prqt+CU1nxTJnDv598yKKiu50peM29NBqZT1cIQ3isg=;
	h=To:Subject:From:Date:From;
	b=ANpFcyyEssXl26zgSYYAqhujbc+wCZA5+EWmXXmp9CTmrFqPD/KhjeyHPd6F5V3fB
	 jL7PxQGVcHS5rijTBYSycW1lZ9F93REigjUcmA5i0psF9FXQDDxgVceti5FyQJRDfK
	 oqonDpgH3mvzpkz3J4JwK8lOsNc5J6FgkOLexbq+S+S8CQHrFgCxTZSes14qA4fAdl
	 Jar+UvDdDAu+Sic07u920oV+yqjZKhiIcs/kzrj2EL3WSyOn67Ovbp1jtLAVhNmWgQ
	 +MsapXH5PJvHajw6uQTq/x329yb5yag0S3XfCigUm1wLI1A4HLIeDKK1YIaskuacRo
	 2sL2PEAF/V/QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952CED63926
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173210015360.1006.8666567113714297440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee5d8167b314976ebd51875821f0b3c6d1054b2a07883e6d89b7b0193a60d04
Date: Wed, 20 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732100153
