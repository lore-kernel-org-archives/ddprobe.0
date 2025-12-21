Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194F513A3F7
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766342034; cv=none; b=IL/SbF2Ify5j2BUDZA6zpU7ByUva+KHFU41I2FCxOU/dk/gRqHBJxQOKMJfgELKcf1mrOJpsfGhHAtbPpMQ5RfZ9s1pvvJLziAToO1Tuph3oAOWMkMggsVJyFWTVVUmcMikjdHJgniNQe+q0RuokAibic1/OvMaT50JSiF3GnWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766342034; c=relaxed/simple;
	bh=ts+kZy1/pc6HT6OSeBbZbXziPGR8vgc/2ruq+5PU76U=;
	h=To:Subject:From:Message-Id:Date; b=qzziv6tLWmVzQgHVrRTqTwmkvBwdngZCIokFd91BJqIYrQ4SYbZFMziG9/taxUQd6sv+DtqLH4cdVr+ldQRzweRTbBW1TP+tK+henQJHEot+mau7J1DGGhM2Dv9BOVDnYOqENnqxdMQKKIEX6U4smoB4ZeA788xz1Og9KHgcEHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBpZuMNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBpZuMNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5591C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766342033;
	bh=ts+kZy1/pc6HT6OSeBbZbXziPGR8vgc/2ruq+5PU76U=;
	h=To:Subject:From:Date:From;
	b=eBpZuMNy3CAwhJOz3YQjS0WpIfnIJABZdy5dnlWkDmJQ6gCF6MJA6F/ad/gko1+2W
	 G6INMIjhdXndn3EuS9eSbN/GypiHWsrFgPg8yJxLVst8OG3GBnh3eEk7GfigCj2glG
	 8CHiGmW2pbvAUGk9M8453HDQfWLUZ8gBBc/t1afDI58ngmtWDIB3V2YqkniUgMkWqg
	 gfrR6PyJj6XDsc4m07TyyWoUwAsr5menE0jWuYgMa+W/xljboRbkZofsT91m1Akjzm
	 bFHTQar0u5EJ1pHxqU1V6tIylMuXO0/IVfVB+H7cGzr58Bp2bVqHh1wohxD2Br8Wie
	 k30TD6uC7/4uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94266E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634203358.5615.8721773047455974763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f116c95a9504b07a42f5975606f334b38f55aa68cd4583d5f786b53a425677
Date: Sun, 21 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766342033
