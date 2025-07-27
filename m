Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9D82E3717
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753584594; cv=none; b=Ha9AB12vp08v2U7Snb8jbF976Gdt7QmRZ5fzbCzGx+Pk8uQNFwMeSKoSDUgMAFuxnKe2AD17fxubzl6oZ7OItRDXqJCkmM7GVC5E41WN0oCPiP5IcBrapt6Ox39shX/Er+kMSITrgdqEKOKBaUIqUSCXu1YPfechpm1olUW3dnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753584594; c=relaxed/simple;
	bh=TtHZ2bqU7c8lM4fbR82WEnvGJhc5a1at7i0iVREC+eQ=;
	h=To:Subject:From:Message-Id:Date; b=lbbTJyKJANM90lDd4tLAp/haEsYaya0TBDVy+Yy7ZkLOaddK0vV3tZGLCCyWokwnUuQF8vmod4UiBlARngQY9mJPdUdRiaH1tMun1ApFM+7nLStrUIylTiCnRDSPFU8zyMvh5X8IAWCXVaYZ3RQf9Gpe7T2jPpMdtcIqniui+FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9OzVU/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9OzVU/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45B4C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753584593;
	bh=TtHZ2bqU7c8lM4fbR82WEnvGJhc5a1at7i0iVREC+eQ=;
	h=To:Subject:From:Date:From;
	b=Y9OzVU/TbDiE0k+iVWLed9uuCE0vwXLh6eYKcOq3nwcQ8tsGgOZUUXEE6Wu7gdiPo
	 EB7GnaFGL+istWsW7m7ID/9x9II6s3jdMjOTBfjVgWESegaYmRAwnAq1D4pG7Nglbc
	 lQMwYtoxmX8K/cCIxXSIEQzvLxjv4goO0hCnN8/uD8tKqxWMGfl+1qol6LMcH6N/BY
	 dsn2aQjg1EyxsT1Yus5nINFAjIMi6XbHIbWgrw7jGgWGL/WQydKLV6nv3iJp0pvXh6
	 L+Zyb656zKMU6hnz5tIeRWGX/ZV5hlV+e1BndbHhV4dX/zpsPH2c4Rj7o39FYcyoOW
	 1ECbCHmEIzyRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AE8C83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358459358.11952.8972060950203034728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a064f644b8cdaf2d5ab4ee9ccef4f867e6be3f5d1c5b5a167c13b33db3881fcb
Date: Sun, 27 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753584593
