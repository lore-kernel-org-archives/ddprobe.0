Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71642E92B0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757320793; cv=none; b=hVuPdnEX6rvN5zcisZ05X0Og4QCrSMKdFhUoTyQGkuWElWevq6HOk1hQDejyvv6D6+cz62lddoF9zo+6d2EKka67ToamFra95pyp6ZAFZYo0RGr891e0GB3080DbalyVUCybW5rX8lcAE8BOq6lXAHvfq7n3huB8THhhFtLJncI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757320793; c=relaxed/simple;
	bh=i0QYhc66fNtV75BQ2fuB/4G0dQqUNJT0FcoujwaOIPY=;
	h=To:Subject:From:Message-Id:Date; b=uBfTy7MIMbfAFMwoteNJyHEmxehawx0dfxPFksDRDPh2gvgqlfLOCDNDOIgB1QYRHvRSe3brZssOjRLLyY4/3Ko4rjgTJF5VLyKXi6khPZRoV9ApcQRSSGOfclgYfVwZFHnE44gJkGtS0yEMr2Fy/eniS1n70eshHeVlKJsOStI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAvfLFr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAvfLFr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E355C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757320793;
	bh=i0QYhc66fNtV75BQ2fuB/4G0dQqUNJT0FcoujwaOIPY=;
	h=To:Subject:From:Date:From;
	b=QAvfLFr0sccbxhLEUDNdoxCbnebszUFN0DNqXpSsPalR+7jUpBUAYxg2GEKWbHQJE
	 Yy5tMNuoRMkQz7WnjYEAEeCtxUCclvD5FJOtAROzGlX7IBeuOXDI661Nk45/p2EQJh
	 qOMFeNJxURYhDv4acH1cec09iCrOtGAJpqHmunkCaaVmWnUDhd9rkiK6+L7MxP1cJW
	 9zYEpG8IkqDB3vxx16cXwsJBcs9h3V9xrr2vY+vKUvMaUih7/Fnt6E/SUtqghvZDS0
	 KeYUaMDKc6aP7FxwOI7sQje/92RJ6i6uRMoOO7SBVcvYlRB0mrmD3OBVahjDHpXHMD
	 wcL1sn6M+6R6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F80DCA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732079358.22609.10718657005440265599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b11a7cefa9667007df106a30ae22fb37f9502412095101a75e96e6db61cf22
Date: Mon, 08 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757320793
