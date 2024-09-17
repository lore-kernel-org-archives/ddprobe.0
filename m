Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D8D14BFA3
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726568153; cv=none; b=PJVar6DBNyFnZ0VdXK6GR67ec+09AnedNqBeqO9KBE+5yJbwFneHoMh6nDKBHeT0/hWJSri0AaOFDVOp5wAU7aHs1Ooptd15GeWk7SO7yyQGeUFL+36rJxlSbpkUv0XjCfzHLngWrI6AstwCpufm5KxQZVvhhdDLbOSRhXQMlig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726568153; c=relaxed/simple;
	bh=XuagGk5wHS/TV6Sd0sNvFEfFAb4YIrYDdWVgo9BIOZw=;
	h=To:Subject:From:Message-Id:Date; b=no5whgeHuDEJLagybhCdODTQyqSgZjkeBSXgnj4oevbRMMZ+khAym2SV8sCXlkH3PyvIh18O9S3NABrX2YZlXsUzqJdBN6OjisUR94oadtA+XwUXDAaW2YhB9X4udnYXp3i+XdrAbOuUwLGXsIj90E4np5Qlw6364gDRluFPn3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1Rzn5bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1Rzn5bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6454C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726568153;
	bh=XuagGk5wHS/TV6Sd0sNvFEfFAb4YIrYDdWVgo9BIOZw=;
	h=To:Subject:From:Date:From;
	b=Q1Rzn5bmkw3oKr+NS011QDvcvX8kFsn9YDK1+xA0WrLhhXY7qqbRqvnbXphKDvLPH
	 FjxbXFnHu79nj4d8CFOMzQSbX+oyY0U1qlgYBlgFg/pRxkoutCuGKz9d480DSpOvK2
	 7YYYN4FeCvAi63vflDreJldXTqKRjkD/WHCE/g+PaJWR2fyoAX7g52S9PEvuZ8Zx6C
	 lmTMrnEqdw7dJPU2YB/X7Dj/m/SRDMdjVvwCGtYXaG2Xvt9RHzsmJvIKngEc5Jb4Sv
	 xaydFneGslEVwf8dwMnvscbovuKlVwxe/82S0Gx+lXjk6ZCaZ56uwTm1pQOQv/+OZT
	 Lb8glsFcmjekQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F59C36009
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172656815360.8237.2026032705710301571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee22f5aa9dc3330f8a3e18de15aad3fbf3f60c98b2dbb2b000c5c3b02c705ad
Date: Tue, 17 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726568153
