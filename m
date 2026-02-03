Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD4C31D74C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770105834; cv=none; b=pGahAFfwJuPUPu8KYRsCPnZwEQpjDyPcl4p964mJBmFK+CcvDBNpmB4OGT/Bk7pDvthioj3s7dGo+Fph9b0iCeTntQiKFxWhH2+8pSThqCUCZj21rGyPVngFP/L1VT3hSEFM+/tp6VcZ65GWzt88HJtMoFrdL2BO4m7uWdwxJDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770105834; c=relaxed/simple;
	bh=x0RCXAA1jrLGtW6kkOjgLaAZNp1iD6TQiQLk0VO2gB4=;
	h=To:Subject:From:Message-Id:Date; b=BdTB4jJxqNDi/lEsE9MVeawmZFeI+zx/kwd1HaT0qMm0Hnyce0K56zwx4SILo+6Olr6gEUfEOnBIBkUuDh8iUkuJ1DIGAW0cjGzqoiGJT3inqfodV0Vi4CchSpcW3OlZpWk8HUEWD4eXPBhxa6AHBSaAKHCjRMNsC4JSHNeuTcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWBX8AZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWBX8AZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A689BC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770105833;
	bh=x0RCXAA1jrLGtW6kkOjgLaAZNp1iD6TQiQLk0VO2gB4=;
	h=To:Subject:From:Date:From;
	b=XWBX8AZ3g9P3B4XG7fPHhK+CJSzkCgCHvkUnUh2J4cciQlJwCVFlnJZvs/yG5Vc0Z
	 4BEWGjM6oK79eMx5sAsWouB7c4oV+WLTHttwPU1YQQjkhahNRRkJ+4urvKoZs1Ux2s
	 UGBGXWZS1HKcIjD47fU1I3pR0bQv4Rw7hU6G7iMskMjiPeZ25NBrMozjJ41vTAlAhj
	 HgXrBg3Uj9eE6AMenxEK+0GrSc2Pz1uotgswDEs3uknfZ5YaPTR6RDloxpo7e6o1eM
	 00MX2FMBFVtZAAYv8FfHaAj82WA2xY7sY+T+zfVF9Xm/qjzplN82w3skwZ1ijIoQAR
	 LTFEeVzyEJFcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F0E8305F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010583359.25167.2554460407813386504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5ae24fa2c1f4de9261555d3d82987f7dca5b631d838a7eed29470d38432133
Date: Tue, 03 Feb 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770105833
