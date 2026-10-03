Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4368B35E1D9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791031834; cv=none; b=NJcZ6PLGFc4rq3GS+BnL2zXJzkhGzeb84MH62va3HbEEyFLhBXhULLA1+kpa8oz2YeYDRMKc8JCTWb5dfM2kJXtstlwDaH9pMXLfwgKumiziYmabUQXYBmoKzD04FOaeEtJZLbEhgxSCnT/jodHMGHuDh23bIkuCFvxXhnU442E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791031834; c=relaxed/simple;
	bh=MGwdhxgWl0k0F9UDpUxwlFpaivCCvba7a+yqCPvBpOA=;
	h=To:Subject:From:Message-Id:Date; b=bY75cH1rH+fUJJ2bwevO1FXuASWHo/bxhH0g/Gv6RbEtq28PyRBqMbITfStIArLKD9RgLZQgqeY5QkNQnY56zjJmcRnnt+v2QVkKouZHZsdf1KR7pJqYDS6jFLXSKmF6WR4EKKm5kIUTuaZ+mpVukYdaswd/2nUVz14TjTet39M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cc9QRNB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cc9QRNB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D125BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791031833;
	bh=MGwdhxgWl0k0F9UDpUxwlFpaivCCvba7a+yqCPvBpOA=;
	h=To:Subject:From:Date:From;
	b=Cc9QRNB64BclIDpXe9+2S1ODhT98xTdI0i3A4UvyV0ddMHYrPDK0rz/s3gUJht6EK
	 jspK4ufm15ubOGaQ0jXrZfYR9Yb1PcjTn0Yhb/VjJeWalg+tMHuz4rAtVtEfoN1+vz
	 3402V4sWh+JCQLQ1QicQ1foMHIAnlUOTqmako8Epemx/Oh+c2BSThkbqCjPutjLlew
	 YbHxf7D8xVLR13rSdvHi3ojLM8mWB2vkWImcS/hTSd0dttz/d/6VbV/VAq63O2FDa/
	 MxBuq1x1Tp+6Me8Qebe8oBB0OG/XM3uObvZYtsCPUyIBMMcyPRBXUt6Ko3hC8i7FFZ
	 TCWd7WubRGk1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF385CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103183368.11456.18067222069773356272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1084f5e14e13fab15f563335460023019e510aac94800333d185f2b7bf53d1
Date: Sat, 03 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791031833
