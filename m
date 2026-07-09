Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AA219046E
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783558114; cv=none; b=p4cSEpLMZAIzP390YCSti15dYXCfxBD/UUEb5n/baPwix0PZy5W0lSFfee7bI1i39UYBULC/UTWol7J7o2QTrN9k4s3cJZZHw9IFuQ3Uc9TYV0M/vnEcBZNPMVv11CJ7PC8HYIwFfFyr0tTBzMXl94/D+zF7T8eDCUjP5EYSAsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783558114; c=relaxed/simple;
	bh=a2zBdH5cNaQEkAPnqRbf23CgT7qs7yaq6Ido/iuGN5U=;
	h=To:Subject:From:Message-Id:Date; b=iT2MYD3ocN4JVp+0TrRCczNiT1atUGFHdrmPOaPRE4ZY4HjohWiFzXfdGy94V/vtJdXF+F8IjTe4Q923SdJChT39yQGY+WdvAlBbhtyC9MYYQQzMAKxZ9Hqc5qLY/9LOyzLZErS0sVH511kcz1vabyUSi/y7ru4UbLv8P5jkeqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnmZL/ro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnmZL/ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACF7C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783558113;
	bh=a2zBdH5cNaQEkAPnqRbf23CgT7qs7yaq6Ido/iuGN5U=;
	h=To:Subject:From:Date:From;
	b=fnmZL/rosDkLZgFgpRvsxsOnNrBdx9jS1Ispf28JlAegI2GvTWgJXuZwIucN8p0zM
	 vNKwaZSooyqmibOCcXtipXaEl8tx1p0DIxq2U86vQyHqNQf7ptGUInoT1X61QDtjL6
	 LM/GdFXMvMEkdGgQheQPWZva0DNfeROXZeGjC8qH+Ict7Z3Cb7bfuDinyB+KiM3YB0
	 h57+6ewdRAUXmiSRSbq1HEwA+aWosjbeSzJKxyZoAfMw69OPGCjjanN2BEawBT6XDR
	 XD+o5GLZujoEVKy84eW1StBX8aTwkPTZtzBzXZPKgXgLg5SlBczDNGbaoY2+LzA+9B
	 wBdfWesvNamJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9752C44501
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355811368.7852.878439940274342420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0bd1a2414cc0c2d3f079b739242d69938fa4d2c4c04a0026aaef2253a09108
Date: Thu, 09 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783558113
