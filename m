Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9696D1B5
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714937543; cv=none; b=iLe9jrEicc9NA6CekXguGwqP09KDL3F7D4a9CrjeRPjR3YFvePI+cxWlBvUeJCW7jAid1dqe80pwuu98cBlRsmhO/vVbu24g2XFeC7Ag214VYnISn+G868Psv7++p58xi0CSCRodVDdBOPUTtlVzFirUHo3rFWvW8WXh1xndn/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714937543; c=relaxed/simple;
	bh=PwkiuGpSZo75Tt2UEDcI8q8GJDYtqcRjWmTRlKAXRvk=;
	h=To:Subject:From:Message-Id:Date; b=SFckXsdJEWtlzegsZldM8uTOU3PCPQfAdiQbdyg23R5+7B2Lhh3b3DsC2pTLwo7bTp3evttrWhIwxxQuqCPYuqyrRCkflDb1Vh2vrSl4Iw9iIhVZleXEvkTIldF20PqjkOPO59DNby9QIG1m8JhyjSvqZvvTMFfXv7g6QBBWTkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Foum8/JS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Foum8/JS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB8EC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714937542;
	bh=PwkiuGpSZo75Tt2UEDcI8q8GJDYtqcRjWmTRlKAXRvk=;
	h=To:Subject:From:Date:From;
	b=Foum8/JSdspWxPnfmSyaadFAdZ89Hc0MVwLWsj6Yj5EHqJGoHQb1MAfIDSud168vQ
	 UHQON0SRzZMLjA+2WObOVmqKn1hwOzFIwIJPXc8gHK4oXgotZk/qFOcom9Q9zHta65
	 Lt9lG9eJzNf7d+IZWuFiCr5+yVdt1ltFs+0i553lfMOwXE10snEizdSfflRX1SpBNj
	 Z2W7K3h/K6vaDoDKB2EOLpiIzFm8ca7GWAplO46D1fuqq+kccdEmQX9Xdzz7TeYqUa
	 3i5pJ6o09wW+cRmFwPlsGCe/RTv1a4rC5JhwTvePAQxm82f/a5AwstAydJxazD/XgO
	 AdSkKhEH/OGAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B88C04FFE
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171493754277.16734.3718190080976559445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ed1f4ccd8e5b88fdf580090ec568862128520403745cd625910c70e0a5aa21
Date: Sun, 05 May 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714937542
