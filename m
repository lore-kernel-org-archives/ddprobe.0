Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260C033DED5
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771583694; cv=none; b=pgn3OUmq/Q7nK3tUHDjcrr5pLSpEDikOGvTEZzST9AFavRwM+frho0zL/rMNyQ5vxMyNVBoWGfdBLtfa8UbPxQwNpbiXoawkH6FtjA4Mj/PNgMc7CD3WccGOmf0k0cxqRDyKBdW5SD+p/IzMcqq1NIJhOHbU/I/q0UuqxZHWfzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771583694; c=relaxed/simple;
	bh=nhmFxJj2cKbv8rpIH4qPoU8j8F5S6tqy6Dt7iIFN3+c=;
	h=To:Subject:From:Message-Id:Date; b=CWd+atn1AimEcPgBDVVyFA0GRoB9gQ5D3QPjOEXThZzIfgr6n4OXnm8vkssrKWIejQwKO7zHlDclzB+vRZYvECaazI4v7hQeg+MpA6lamjZdS9aAGy740F+qV4i02SZbtLgVPH89iQm/kohdbMXxqcjxJTlnbtVm/e8FqlZ2C2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkI9bYci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkI9bYci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4632C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771583693;
	bh=nhmFxJj2cKbv8rpIH4qPoU8j8F5S6tqy6Dt7iIFN3+c=;
	h=To:Subject:From:Date:From;
	b=SkI9bYci0zlGB1CyC54SeLxemVETpxUHItiyltCpa3hWl8heF8pD7bY+oeLqyxpyx
	 iMArgbCqbQRFcL9ivycn6U3Jk9MBQEHGV3uyorYjdVDMujtF8uGkgVQXHA6bM/D4BT
	 kONxIGebOU5FGfGgM6YZly2OjhDpkimWcUGN1t6o0ABoCK+cpaCU+FDFsE6G0eQz2I
	 i7Tskos9EMC3jKiDB12dCuWGHaIjM1bRosqgeteKPzdWUgZit3+VmWr/7s3fFip6rx
	 t0jxr1eplMzLuxFcN7ywy7ZeMRxGNQD4Mkrp9WYUMFwyGoIEVMYYPe4fXZBnzj2ZmH
	 uwrV+XbOUqSLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9398DC55184
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158369359.9271.8680276589687272655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3991aa1baf6bc785090eb3a2f61975b9194e44bb89f02d5cc7c140d12f3d6e
Date: Fri, 20 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771583693
