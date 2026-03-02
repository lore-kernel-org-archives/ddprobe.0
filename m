Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57870548EE
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772444694; cv=none; b=osSE355RxBcpPfNKe40BZxBI+CKDjC7u2wwiE9npZ2K+feeOqVZ74XswD2LEHxUt8fuKEJCjVbXHau/aSy/RRF8AdP9a+IevrkTiUw+NJR3jFszHwo7gKYpALpz9winyKYOGqEFMECChbVGLdo6eMMFW8DmgApGFo6MrMRXtXCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772444694; c=relaxed/simple;
	bh=ok9MSFnk1VjyxC35q2yAXIPvD3BTenEJdkv1++aaO0Q=;
	h=To:Subject:From:Message-Id:Date; b=taKIA/XsIRuCrFlf3bRfd8mqngWeFtLY0sVRv73Y/Q/7nwKWfXNCKm/FZfqJwnOiTZEmnazHHrXCHat6hJQzuiBEau/sDVFsy3eoo5MBxNkvf5LsnfoRppIXGSH4ts+OLFciOfpVGihG7duC3eSETpICUplOGIODDNt17T/HuSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DW1zPBUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DW1zPBUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F4BC2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772444693;
	bh=ok9MSFnk1VjyxC35q2yAXIPvD3BTenEJdkv1++aaO0Q=;
	h=To:Subject:From:Date:From;
	b=DW1zPBUKfLhQmdwpNJm4zGy79faBeojPURrqFbWlUWcoYY+MXYBCPe1tCSCr6sezI
	 KZyhPSK3NouXXopEH9m9Hls//7C0V5wLbuxMmuEoNP900pMlPPBnkD73MC8n9sXVp/
	 lxiq5JGXmRajcmE6GL6YNIiMM18bQxI27UWfhbyOYWvKgjDTrM/29LFWUwmTZngj8V
	 w3iuplqEFS/ImQDoGmbGaVs9uMJI/1gCD4Vutrvn83Nu0ixWUZVTYtjY2RAnY1AQwN
	 yUvhADOuLF3mRRtYtf5UsnaEslsuPd4wQb2IwodGdCNPF5PniLOjdsN1gfuMGArp99
	 RRSqlgCJbBPNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F9CE9B342
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244469360.29367.3786665362806857185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a460794cb94e62c93c43e64bcdbde40817f4c093b0d726de408969518ec76c
Date: Mon, 02 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772444693
