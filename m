Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB98A4A138B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783619914; cv=none; b=o8Lzvm5Q42GUw9mc6h208pn5VV3SyiL3yB4DWUTuYe77dIp3GkmiPL092HUNmL169P2mAMC1IYwwAMJ9gRKtI2MgC3rzblw76gy3zf8+npJgNW+2PgILhItrf/whdUs+jVuXK1Plo4FxBU1W4+0OWxCuSjymB+AW3a+1nwKBSUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783619914; c=relaxed/simple;
	bh=jllaM1hjc1h+hYF/lYYmrxdLVVA28/35zjHLs+Nfqq8=;
	h=To:Subject:From:Message-Id:Date; b=Eh6/dtW+iPCBvz7WkaRgmlVaPxMHe+xyy2B7LCLKvgYBDfokhMQ1Pep8y99NpzlJJgUuPH1uEHT0cBj2Z3Fy4iQYA2eKNkWBwxJak4zOa/oP/9wQnw9jr1HMeTGNalGhT3S4IRqaRldfogHwtRD7kL9ne2dyfy7J7H2T1S2XUtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uec2Kj0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uec2Kj0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F90C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783619913;
	bh=jllaM1hjc1h+hYF/lYYmrxdLVVA28/35zjHLs+Nfqq8=;
	h=To:Subject:From:Date:From;
	b=Uec2Kj0lxGQA3vDsO9hr7QaAs1mBMJl4Io+07/P3+5ufmi3VmHeQW4fjFrrba6atT
	 /WAuExxH+dq7jN1Psv2PYgrEOX7ICTQL43W1t+NP3NK977dsnGzrdmw0ygzbngMnUl
	 ElL9Lib14Pqe24PqMjlDDqmBcFBV6bYbP+HH4hV7/yjGhDn3ixGiGlH16fdJbNMGg3
	 DaWuNRTReDE+Gva/3GTpdRIurYn6k38CI91ZWpuTgfiSMiq5MfUQ3LlrUlvd0rSMW1
	 ZdUejqh4Fr7m1aJ5SNEuLcMUwYCAd/dKeC+quyZsTgU18Ui0NZ6ZPr1wziTT5tAs7x
	 tlOtdJPXrfRUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DFBC44501
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361991368.3405.1969803206981436502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 075ec07bfa12b73d193bf8f60e87a57ef254c7c6ded1db1485cc38315d066e76
Date: Thu, 09 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783619913
