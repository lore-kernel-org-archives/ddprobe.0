Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3214D1794
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789672234; cv=none; b=TCFEKqfgvwYd0GfxodpSt0eg84PaGVxPAwEjHspc1DVQeXLSKdJ2XUaVlWA1ki16Us0oh+X9nEHcKL8rQxZumet5mUm7T4vepn/QsOSCMQEkufc6aNbhsuKCJW0U7tjCthYSp2v/tbDk6I5GxtY7ioP7ZJ/7hEvFA0XPAqrDnr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789672234; c=relaxed/simple;
	bh=5ouU6sJJwQTVc/+O9hbM/j9YEsIM8DOiSQyGrfuVt2I=;
	h=To:Subject:From:Message-Id:Date; b=L0/UOlKAXZe7FOrhoSv2AtvEPtioX1i/CXxwfF7CqxxEGaBhqHDla5IP09Sdxlkt0YuWrEuM3vwmYeYAAdxF/j73wsB9Usqam8qiCtjV8ypkZG/FwEbYgbt0BV3u2nt/+YFy83iQyBzAZcNrAqucIXFdwwNAm7IkmULpW/A1gxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8PMAV31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8PMAV31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D621AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789672233;
	bh=5ouU6sJJwQTVc/+O9hbM/j9YEsIM8DOiSQyGrfuVt2I=;
	h=To:Subject:From:Date:From;
	b=G8PMAV31GAOV3Ng4TPLmxLzmpHogKnqjIFw0R/XG3fkmiyGm61qnBKho16jmPjWAf
	 WAq4XBpx4KT2088Yipp/znAX5QcSuU7xvWCBHJnF0oRMKwZB4dAeowI+p8SLobom5j
	 0gGIO8LKOHPWzhVuaBcLlgSNfwAt5wZGOT41DNYAtlsiDRocWOWboimFNvbnRlqtOm
	 5sEvZxU2K2hIrts50Vo2/0al7g1gezGdruSMKLuVMuUtJbG1WbTMcnAYBFWcm4Swjl
	 8bkhqb0oGmmicrjabjwHd3t6Wz4wOpPu2oPZBRVSsOVrAA0Niba/OSnp8aoVRL+I3W
	 3p5GCxeHUwXXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD52DC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967223370.2003.1566012569127378417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9bc2f6897af0cb3d28f756a4012233babbe47f44050cc91c8ab26fce4ac100
Date: Thu, 17 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789672233
