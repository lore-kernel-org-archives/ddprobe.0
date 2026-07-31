Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532C435A93C
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785475834; cv=none; b=dV5+cbkyLTbWwS56c/EnJVUQIRpk6kaVXEe/ZSU5PzP5JDsEZd1KJ1q+cUz8iY4iAak345NqWvqnUytGuYcrxtx+a9dA9y9qKyUtKQiEl6bZOZ8aIlFQBXve3bxIsA9Nzgj4xlfKf5+efVoczhZ9G1WMbdsoXZyQmUv//ElgHUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785475834; c=relaxed/simple;
	bh=mNafDCWAc3lizjqJKfPnyKvB7d8xAmR7Coz430/A9nA=;
	h=To:Subject:From:Message-Id:Date; b=pgPpSsCIGtfcddeuqthK8ZR/wB38NEUeLIKqCLWJrZl0/qldQ0iw/fE5zWIpBNttKhGbq9FfOcZatHwA5ym8F5fIkQXaxz3mBB7r31/vLXFAqX5al1Ho2hy+Sa7rUuJSl+jPG6thGieqV+6/0zmFlEjBeRcmmIh+f7D+EhNTe/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hj4nybhB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hj4nybhB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAC3C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785475833;
	bh=mNafDCWAc3lizjqJKfPnyKvB7d8xAmR7Coz430/A9nA=;
	h=To:Subject:From:Date:From;
	b=Hj4nybhBrd6zrvcWGiv3xreBOQmuynnhx+pOCO+nPTAdsYUpOwSUurGiCVP083ArQ
	 /Vi0XzKKEsA3VLqPHY1Sg7bVDcARHb+VHH+L8/TuAml6ljXrcODr3hPPNBqKBQdSJi
	 Mfrc2Hu+VZsWQIgs3UvDZw6iMPbSURMDF/1hhWEqGNoYEGia4bTCM4qFfW/WUtHt30
	 FtG7wWFCeiLh/0xc5SmopaSjUz6C8pHs7Pv/lQFixYuX0REE6YrCaExoYok0Bl7Olx
	 jcAI9SbL08ay12NuA2/NmACpPHZyrLFM68vhLClibgyGa/NlQfkQUt8sfytxhfhCsq
	 1aV/31NXACGwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A884EC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547583368.19955.3283503103937596447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35dd83a4f5721f378fdf1fc8ace28a8ce98515f5c93c0aea6e35a846d3c0204
Date: Fri, 31 Jul 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785475833
