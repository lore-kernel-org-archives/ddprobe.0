Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3A7142E86
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717497923; cv=none; b=ORTvui8HJWNK2T3ycTYR9nEf8DyFGGgT/m38hd1hKYDidsaUtj+2nUIm31jKjsAMyHpZxUVgIZscs9xhngyajSWlCg5HJMmksxhNVSL6VqYIi+jPVQAJfiK+GJ+T2wjRAZD/arXEoxNvCljTKwcDM8CGIoXMUJG5JTErOt4iHYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717497923; c=relaxed/simple;
	bh=6Q9pmp60U1SbaVxCbcrbpf4TN9Wluq1mB1WSQ/O0BeM=;
	h=To:Subject:From:Message-Id:Date; b=bbJg2jWJCPkHrExX8ktK7Qeb2QW16SFHlkxXDiZZ37LMHow0L26FgsRQypR2YoJVE+VFFUWF9dD2ovc1BCdIyIuf1OMJ2yR6hCCgOtqM2Eg7yozu1cn9uNolqcwZIEINTzgnRZMQia09EjhAKCcaNm0Nq0DpDbVwAXEr0Fb+3vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWjggj/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWjggj/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FDAFC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717497923;
	bh=6Q9pmp60U1SbaVxCbcrbpf4TN9Wluq1mB1WSQ/O0BeM=;
	h=To:Subject:From:Date:From;
	b=VWjggj/MA9fy1R9Qs+zfKZnsY2tyYr5Kjx0cJ6DX/XIbLk+ZprYiQE5SJfm3jiDsq
	 t8KFp8ueOoRuFSosCZPVl5VzBBbyeby8pGmiWBfUj776uudaLtG9J0vywpHrzJg9le
	 GqAncV5VnivbvFlVPLkiDQv4g9WPzBeVtPvHMJpv4t4drz4RoxXUpBcKDlBCc4koPe
	 LjSlYfY8DbrjmKbRRkDURWF1gCGxdUZUf36Nf7lvGZhHmNMCzFsz1rB1l9tr40F/VJ
	 C8w9QO9HsGYjSOskJN+Y97qjQBbc9OIgftsO51rRzmJwEjAheKKhS91iwrOSa/G8qP
	 0APeNOlyM+pGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFB56C27C50
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749792290.22252.8612302550023854316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236d7fee25acde644a703c172e549a2671fc0ff7cc83e4f70fba6bc9c1026352
Date: Tue, 04 Jun 2024 10:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717497922
