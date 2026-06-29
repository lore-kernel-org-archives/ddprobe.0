Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A963612F8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782752314; cv=none; b=gTDGVt6eN/xitAixiyLY+F8HG3zU/7YNYkufOFnRu8crcaI0CL0i/nbnnSv6qIVfnN/lrwJnYb3grcl2LdNze4s9LgKxhSLXYOV/RT3Bo91bT/u4wd2T7ghsfFlLOYDd4XBPJhrTouRKfpudO3hBXf0gXuxr53YLb2INqPjde0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782752314; c=relaxed/simple;
	bh=4WmS6hWBsr/KvJOqGH+YRqzyKDFCI56QMWQQXqGJEus=;
	h=To:Subject:From:Message-Id:Date; b=cAcxrI/wCWc5mBQ5V67qZGfvGwa5B0RBVJ1b5ch33/2f5NHmgysA8I/t2ZDFdCxLogwd53/tURMDGY4MQjrHD2Vdb7h5lY27AjEKxHEzGwY747PQzr6z4EN9knKrmFsR/5IuYXNULf1DBoaFVQ7bsID8ZnSn4R0SsmzcINQoeTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AW5YDZC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AW5YDZC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A6DC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782752313;
	bh=4WmS6hWBsr/KvJOqGH+YRqzyKDFCI56QMWQQXqGJEus=;
	h=To:Subject:From:Date:From;
	b=AW5YDZC0YLWKKKdwh6V8j12m0177IBXQvQYUfpbl8yujkTuDoU6JroE0YWB9PdTAQ
	 PYIUZYjlDMUHWaPMQhSCCBlrIeDNzxKEzzzFqIfrpZ+y/q0TlwIx40SGvmtFdpvJ9r
	 oYlY7Y5DY1De1Ju4XVmtfZ2Yhp4rTe4r+z5KcSfE9N0nJ253C0JPogHSkFmCc/wpcI
	 gkEbpW0vodS3JhQIMaZeEb/fwNztOfrBYutI8BfTV+NoTC2LqNcpwfNmdAvnetRGm3
	 cIljT86ULZBcNqi+xdpUUEdq3hFEOeB679H7X27ZnWuFt9/CQ1dqkVyjmUsfHxvyg8
	 xBfeZ1hqbNUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FFEC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275231368.27876.16686672914281807304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7e6c9efc9b4c674c88f0c6bc36fc1f66c00dc918b2e8c9df20fc7bca14dac5
Date: Mon, 29 Jun 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782752313
