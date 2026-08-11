Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F39B2777FC
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786412434; cv=none; b=EVhPckHApNAOwOmwlkpx1Y8vEqsthLvav7vWA5GZO4lJYlSiDGiYO9kqjQglLmBy38Ys7sMS8GdsGbPnGNV3jQ2ZIRhEaO1+On2cAbgOWTJ15xBhz7ZCoQfSR94qgR9U0n6QqERJfchaLCPaqR4wuQP8ISWWVGx+b9OH8Nl8Wpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786412434; c=relaxed/simple;
	bh=I1YXhH8gr1z0zW1qZkj+Dg5+bQCoAtT+kOPdfwUDF8g=;
	h=To:Subject:From:Message-Id:Date; b=tBJPixZsapc4NAeWM9qwhU3S6XDKacDAon8EjV0HllmrsyDCiZcTpLblIU9nkG4ACox8Idq2Korv1CJjD8tngOAqVeKoUF7yk+ZPNuPLAM3Q1xvdli7zA4vSPmf0En0F0bDPXCRBvXMvtlCIF/cqcM+JqHUJKPvYHJGofb8p7Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asP/XUao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asP/XUao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7171C19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786412433;
	bh=I1YXhH8gr1z0zW1qZkj+Dg5+bQCoAtT+kOPdfwUDF8g=;
	h=To:Subject:From:Date:From;
	b=asP/XUaoUEaHY2gb53Pe3hH1vsBulspdZPj7aY2j+ztNFiaR7k4IteqKVPfF2KRrJ
	 2RGRCXgUbIrnLIPcNWiFnL2Mf+zFcTOgyCtNwoQ6d4E5y7bxKBPty5jLUBZF5XFC/L
	 tTIv/OzURVuuLnHLXIqu2iRvp7yBNNCrTEXahTZyrWQ4Bvc1m5Ig4eRtiU6xKrwF+X
	 4jEGAeVn4hJnCItv7gcytGsQ9W7Mo/hY5rOQIvg9W9uh+w7iOlmigM8MqNCgQpuM1i
	 GaEQZqWJrx2E/3S5f0/S/b0xS0Ks3EbCvepipukrwDdBv0mVtjTR+QrXqZPwSMa7H0
	 SVYYl/wAMR4xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2528C5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641243371.29353.16971840013754241265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1786820e0c2dc60232254df00add5d905be464be669dde933e5d6aa365d130
Date: Tue, 11 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786412433
