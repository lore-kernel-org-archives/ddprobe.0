Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AA21C6B2
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728254154; cv=none; b=GTO0enpD9U2v3Bc1RSJQ0KyyvO2M9GSgQAAEWyV6s4seB2BwPa9wLcqHWup1r5RvlyRRLHPC8c3uPsCYXh7KIltAIIrrJuIU3a4KQ7RRSWv4CgdL7gWyyO3XseDJOacILUbGeRStR+s1SrDp9Ra/9+YFU1/0wOXcAaUoZ5pgW28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728254154; c=relaxed/simple;
	bh=P24JsXtbu6gv9lpi9foaHY/ANTFYy13Z99QQgZ1sbGk=;
	h=To:Subject:From:Message-Id:Date; b=Vy/RFb1ECCuSXNBo73z8TI8J2x0zS6ujECnyDmjLyrYrSon6X9/C/S4UGdNBhMT+ntiBauIKDxY0bq6/gzBb7zZoxvZUBI9UpqDeh4WUdyuXAZl39sOJKU2xwYY+B2HAtjKE5P+WqwxZjpII0GHrSAk7ixJoWSdrwu1saf/z9yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8Ec4Pol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8Ec4Pol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9807C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728254153;
	bh=P24JsXtbu6gv9lpi9foaHY/ANTFYy13Z99QQgZ1sbGk=;
	h=To:Subject:From:Date:From;
	b=P8Ec4PolCWrIe7uydLBkXtLrQn1YG09qzDA086DHRAKsY7r9FFKjuwiW6tKxpDP7h
	 DB8eTi2y20zq9dCaCSgqdn0Nt6MirOLsCAYyK97st0V3hi6EuXhaNKBW1pkLh3zeSR
	 S2gj6zw2kShKBrGpv+Jl+rNOZvXsDPHMWt9kE92VAks28UgREutXkIKpt5F1AxlAes
	 PoIdURdidBrLokEOj6XtGGy45dg8HVJUTMW0FvfpjfjIWu46TmxTDUdNC9HIF2Dvr+
	 e/5lTtFdO9zzdmxvHe5sSE9RI2VH9E4D+qizibxXjBFGRmZdgPKqT3c+tAp8tJ4glB
	 Wh06+dw9DjLWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A260FCFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825415363.9689.9016514326459681734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0135d32ea024d9ae09f897242753d67c95bd371ebf4df087009e805267d4f9
Date: Sun, 06 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728254153
