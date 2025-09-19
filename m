Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2828B1DEFE8
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758289194; cv=none; b=p+twweDYvMmusEayoeWzNqGwglZb7cxa58KTGYP+ealuTXWcNWVY5rEw8UJ9YjP4S1jUEldGOMvxdiqdRsp9Q6Lx7Ge1rpnY/wzimSZhVXW/6Pw9ABS68doO8oTuKiualvaZnWyRgeH8YRGuG0ELOcs9jm21x+4AcOUW3G9jPl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758289194; c=relaxed/simple;
	bh=6TBwBgNwJmXGkoUH9e72kezEIw31CHH7P2v0u522KKg=;
	h=To:Subject:From:Message-Id:Date; b=BrgOzsry6a4TscYewmZ+II3MwrTHH7j9lSPR7M+cP/8+oViP9ol33nf/iTClW3UDw510G2enbeLMzoRudBcHaVHR3h0JHNrmaXonGaT91DIr8dyfGVt1d+Vb4nwR4HEZzE8UKTDQFvOJAVdVPIkLssK7BeQ9wJUXApUOxPiBotU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXcm1jaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXcm1jaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1715C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758289193;
	bh=6TBwBgNwJmXGkoUH9e72kezEIw31CHH7P2v0u522KKg=;
	h=To:Subject:From:Date:From;
	b=iXcm1jaRcMzKJ3Fsoa1WRyuE+ws2o12riGVlp3ghSXt5CuNZV3ZGK7tDoHdlUBPla
	 zCqvzItpawa08nYduHAszLoj5tr97azu7jsAkZPbiDnF6sZRDhBa1buF+afqJB3vTd
	 sSlWtxJ4vrUmn7jcuIjWFtLFzteXiEy0YmVQx19EL58kZ8RHAfGYRhrf76dyVf4Qww
	 reoIVr5DYLrlTd9OOYX/eGtgRpo9ngu59KMVgMR2jmLocGJ7HJM1iUEviK/TDKybz1
	 xiS6GET6L+G23nv5SfZP4wdPIDX0NtTmKiOG/qmn7uZOVxnYF624M4viXT33/RnN1R
	 iQsZqf1oK7uLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF0CCAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828919362.9695.9709736474683598431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0948b48ada2f5d7702ea4179a1478df5bc8d3f5c20655e22ca33354f598f327
Date: Fri, 19 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758289193
