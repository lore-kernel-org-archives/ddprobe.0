Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A838397E98
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773410094; cv=none; b=VyhOyRV2gZVXeHE1N3sYEZd3EToMMnR6F8/o5U5xInm96uYEOauPTNLVBuVMoxjP6C9LDiyOV2qm7uSv6EhX8dFpw82iIDKNgymfg321j2az3SS+pEFk/QuK1FxA4mQoMhooX5xNGd6dmIotOQ03F05zTFYRzBIZSHidwNWIHjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773410094; c=relaxed/simple;
	bh=qN8GQiz0Vbf5fvjr9WsUP2vAn5YhcxIKGg2D++bBaVE=;
	h=To:Subject:From:Message-Id:Date; b=MHKh0K+6gDpaCHZijBNGHtaK7gqNC9hiQZSdT0paBMaHDOwKM0emXjGOCVLaG0wS5rUHY7MAxICmHXGCvlSd2xYjcGKU2vv4iIM+cwmRjyedEtgKlkxhmEtXolItrxVtxyNSrbRXAD90EOG0YbH3NXqzELl9Ju2not8RPFDd1u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyoQ/sEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyoQ/sEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3816C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773410093;
	bh=qN8GQiz0Vbf5fvjr9WsUP2vAn5YhcxIKGg2D++bBaVE=;
	h=To:Subject:From:Date:From;
	b=fyoQ/sECwyjhS7yT+6HPuJYcujgBH9Ic7OXtt/eSUVXv8q+b1dgzz9sL0oOHhVV0b
	 1qTQeP2UbCILai1viOz3okFno6x/mLY9GMHG/Vg7q5N71mm0Y2mRfC17/N+ZZMa+Yx
	 xxMyOjuYruatEBkuYlD5jqkQvqCNqMZHwaMWuMCDDCI3WizKgkG46ghU+9i0RxUqZk
	 7vXtl+Xgag0VxhO5F2bcBMyhhQ8/NI89d4N5/rclr90JgzzVIUMLdGgo/O7NTB1Y4Q
	 k1ql0fKwRLCWp2U/QmBjE9dMZNjyrJfgW/xb8mpeKiKct2RDrV1CrjaYtAwaBSr6go
	 pWFTOeC7wQE6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA9F105F7A8
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341009358.28467.219843314821834855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e721f4b0db2c962f8e3feae71f7ec1609b01cf9596638534274b744fce6cea
Date: Fri, 13 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773410093
