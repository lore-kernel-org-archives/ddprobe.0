Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5502F2D
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735610754; cv=none; b=uDNdpg0UkNacCYkND/gNTU0QEistwMZM3pTxfhOQWcXZsSpTyGzc+pd69lHOrLvzIzDr97cnP1E6hl39FJLOrLFMuMI6PeYX1nh1w5xx18rWIEw4ygVPtoUAuc6o+c1zdLxnPRcw/gfDFVQpds4OrimsoBOGeT5Or1JhV9XtsSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735610754; c=relaxed/simple;
	bh=qfEbrlqLfJGO963/Hmorb+1EJfcj9NVfz2GLqDtitcc=;
	h=To:Subject:From:Message-Id:Date; b=Mc8USdEoyjrqPK6nThyn470LgiEps2BweefP6hqB8HbsazBjujWhqMDVYEO53GPlf45PxpVbm0V0OQURGmwqN1oKlgbLvDwyEFTXqGQnwRcB2i1cL79QpIS3sNeADxm1U/on1Hoo5LlA5hhzHJ/wxUNkzQSoGVnyBNMJM+mphuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsql/Wp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsql/Wp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEC5C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735610753;
	bh=qfEbrlqLfJGO963/Hmorb+1EJfcj9NVfz2GLqDtitcc=;
	h=To:Subject:From:Date:From;
	b=lsql/Wp2AhUEn0vsviACU6kPQe0I7ShxZJUgPgwXT4tSyyfd0sdxVVeo3C2vCpQ8a
	 jd2TdyVpeNhok8djtVswKJhHiCNtmiKmXPxRtIpQX52JAaaJBd67yK2zRZXHKogdAc
	 nZxXjWHq+93H7rmcYii9Xqqn5Q9X+t2k1zkXo3U7WMPtrRj0stIUCCR7btQgaId0V4
	 0OC1nvUefKdtDzMoV9i6SRyEudK4zPDHpuznBPB87OA3lhrA8GfE4xqJhb7B94/lvB
	 vLv9IZQ4KgHjGMnPde//lG8WGPJWCeRplJKhsJAqoWmBdG/vZxuZJbNnyyR4JPlioz
	 VQxd6bxIe96kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98038E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173561075358.28556.15449382415367490791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbacec55546d5d8998c6b8227138315bf03717891208c10843ca9686761ec863
Date: Tue, 31 Dec 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735610753
