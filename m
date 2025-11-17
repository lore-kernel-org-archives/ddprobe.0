Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EF81A9FB5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763413315; cv=none; b=IUwkOEIl+6WbCy0WPeQHIdYTGfFf8OXY0J6694lH2qsABZtnRmXDdjk+olify/7wyqqC7AwStThss2SplXigm8Qlcq39Y9271/WGT7EOLCMbIR02F/GVAEY9nRGIzEi51cmHQQaCKJw24U6+jNPhgKDCqOFAq9DueBAiVoKt3Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763413315; c=relaxed/simple;
	bh=vnNUtmEcAKtDsrtc8M49QKbrOCjl7ehllspSClXlR3c=;
	h=To:Subject:From:Message-Id:Date; b=QxmyRw0/GSJMXWMoWaxd/ZlRqsLJAlU+bRo6FrJUQq3UaMa9ZuXTIR5Kk9HdhWCZGNiiR8DkRknqP3+AlzqrIywWcyUbOdUyfD3xONmLhPeWJfNJhemZH+DGPPgnMonoFnU3nnGn50/D70cKe3ZxJyMYLQs609AUAJmJ1WKj+mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNhdnw7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNhdnw7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B543AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763413313;
	bh=vnNUtmEcAKtDsrtc8M49QKbrOCjl7ehllspSClXlR3c=;
	h=To:Subject:From:Date:From;
	b=NNhdnw7m69L/q9eH5+b1KurllPzFvwSQPuHnXckx44XmwJFtEQgZ7YrQifQlTBBcp
	 MastoP0UaLOWcx5igEZQAVnevjP5LpGPiLhdFlDIzvFblmyUct4iBkpR4rrVPGAQnq
	 HlBVmY/1SFFL+CVUMjL/q+jT68MfpJ74JRlJXrj9pyR7FmgI8b6ZjnIP1317GmM0yi
	 csr57ofRRwwD60YnYLdTEEBUW79P2G0aZHrwXk55MDh/uTtxS9f1U+Fsvq7SorOjZP
	 AJACNirdFUOaNT3NRPtDgNRi/6EB+iqxFF277mxS/h5nig7s9+1YIyouB0T58mSfZj
	 IJHIcSPY0UYlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9187ACEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341331358.25695.14023160085815073447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75bb44dac9b0b4a85a5cf4f9caeecbad6390b9205283c9bedaa50621dd67b85
Date: Mon, 17 Nov 2025 21:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763413313
