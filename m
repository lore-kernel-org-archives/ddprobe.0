Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343DE23BCF7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760830794; cv=none; b=gDA7PQ+C5mTDjoq+hZX7R9sMU9ax1n/d5ZSiWfcUJf2Xfm/RfNgoIB7DuXHbImwPlvqWGlsgtJhNTvCVGwK+2cI7qcJtC2ng9E51CaKrKljn3eZcbdpT+WFupAIiDXs7+7yRrXularSIEggJ5yyX32+Viq97FUbIOC5bXGjdzJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760830794; c=relaxed/simple;
	bh=0VXF6kTioDQHgKOoRva1zQTkxyrQEMwINI1SoK++zo8=;
	h=To:Subject:From:Message-Id:Date; b=rJGIkoCio0RTA+I6YopwIIlecSeV5JgX0ufyVY19DGYbM1TmiIkAGAOeU27ZA7zhej0PHiqMqD0d3+s/PA4z9MgkHhBfLi+eY+oeJkCKENnbRaJrB4LuVqI+Q8qI6Qo51MdqMxzBcjUX6bp4cB7CfadC/DMvD6O1F9ujY7kyfwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUZUF5Xt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUZUF5Xt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B35C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760830793;
	bh=0VXF6kTioDQHgKOoRva1zQTkxyrQEMwINI1SoK++zo8=;
	h=To:Subject:From:Date:From;
	b=KUZUF5XtZ1w4bEZBD1S3dxHSwuYx06lRiR+IAE6ktogFAQWn4OxNtmj2PvfcpbVCe
	 WvihubCJPqvcmZOxuTo9cVadXdCSyayUpMYnDI8V+vhUYWc9TWWCWFMIBEtHLzCHib
	 GV62P1wov1D3QwX2dfpx8XYacxUC9Qm9bmHVF5hMg96ZdMT2/s7RK2nyMw8l1OUFvF
	 THco3L6ZNLzqSDy+WrCBuA193Oj3DYisNSyCmIZiqNd+oKQHs3rhogI/c5lsWEHJLu
	 EFiwsyvOQ+a3hKMMiilQHPVGQb/jX+3pykg7j6bBpc3s8qD2xA7JTJTjI/mTpvdFaD
	 hr+pfyuPH9Oag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97BCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083079358.3136.6057347609805773041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244a89627d85d41276191a9f5017849060db3d2ddd1359045ceb116c95aff3c6
Date: Sat, 18 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760830793
