Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218EA17C2
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730846754; cv=none; b=cnFNDc/rGhNAWzvP32D4DqKoqsbgV7FbVzJt1I8b+5vm8yuwYRH9qQuubP+Dm40xDYMJFgIEJbLO1oCvYPIMe8PHhpAZVhKbzULgFF2mHa1oVpHOv3aPia/9eRtzcBaT3VekqIz3pN/4p4KjukYidtn3ygBP3MOS8mOsjLEKpMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730846754; c=relaxed/simple;
	bh=ywiOGMzAkMCpA7fZ9/LHyIjQx1RYTVj/WHhvrYQCkRo=;
	h=To:Subject:From:Message-Id:Date; b=XlM+ZI47pyIacSMpJQf6rS149TwFKjI/N9El73ijLn9MUrw2/slx92RxKM6LRVLMKKTTBuWpHd1rNf/FBfgjnk61n9jVkZR29zqNlgbKCjdzcqxXq3F8mYhEMgOACXCGNTzl/XfoqredkRMNtq8T3G9S2ybJ8+LL9hlntC2o7PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdQfIUo9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdQfIUo9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC73BC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730846753;
	bh=ywiOGMzAkMCpA7fZ9/LHyIjQx1RYTVj/WHhvrYQCkRo=;
	h=To:Subject:From:Date:From;
	b=jdQfIUo9NQ7O7X9sTx3OEucuAlWV2igVyibyz2MwRZ+ZlfydsazrviLIkN6cCupbe
	 gB6VsYXcxFRf66FV68oXB6fHiXCTqdVALV2kQ0EFXgYBIMBYvlE1iyfdKApUZRzeN5
	 3V1h8ITcaEhu2inTN3HDv9WXk6XQqu5NcJKRhIZsImxmJkXlgJxIzbuWXnv8zIbTxl
	 UpuKc3zwAT81iBVxdcgGOh+lI/mRMiamPndGMqWyBPeQfSoUpHBwjML6yUPCF5o4UL
	 VgA6JflGvvEfcBYxz+cw4NZQvsHse+Efhd6ixMirSqmjalJQveUFCCVTSf8PL9Cnng
	 kQuB9Py5ErWOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A51D3E779
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173084675361.17281.427121821465438399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7402689bbcdce4867a151800d2576f0527ec9c6f3b54796261c99c590cdbcab4
Date: Tue, 05 Nov 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730846753
