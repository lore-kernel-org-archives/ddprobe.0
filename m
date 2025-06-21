Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37349382
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750465794; cv=none; b=GTRuJh4bV+KknkDUuPdsjLd6F3MrtjQf3pwWCMan3cTeNMI8MiWLFE307Q+1chOwphuQSx61+JBKyDfQnfFQwNgOA4FIOy0g/jOTsRRYQU1jlNJ0+mJnb3NfqbtGNfrWH+W0gd9ihE9mSOhkTZprk++ZzUsnCedbZgQGPzNWF8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750465794; c=relaxed/simple;
	bh=fmrO1bFtxawP2rNQeexmReXJB+QCf5JTQjojjszm0Ec=;
	h=To:Subject:From:Message-Id:Date; b=oCaEMZ4gffq9VpQiNJOaKAxhRl/9Nxh5fZZaWQ8Y7cuU7LVsFsICcy8UZvGfm98RvAbW1PJMlNLPjQifWdf3FJZXKRr1eFEEWCr9B13k2Zhu15imJ25HUJgiPEkinoOyB8WNMUMNSFL1HW5yR4kYTonpWnDgIiNeb5VEzYVnPxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7TvF3kh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7TvF3kh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA902C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750465793;
	bh=fmrO1bFtxawP2rNQeexmReXJB+QCf5JTQjojjszm0Ec=;
	h=To:Subject:From:Date:From;
	b=u7TvF3khEHBVpu7E1/28rwUh1OdHEOAQTv31gbYj6hRhFPmfbhZi3ahfnFPF3DW5R
	 lIzBuwU958qybjo5QH6Y8o1m/c7elrpewtbwgcFLpC+ze5UKcDOw5NGN6db9Ty8YFr
	 UbSbGajkKCAOakSw0vlV8jea7SiNsTXChiu5o5JXSUroNnQAzFBkaqvfQVXKcj7tPz
	 +4fAS4E1v9DTtY99wymXItnUvSXFCOoqdI+5EVGZN/FwGY9G5GBEGREl4y5gyA/I/h
	 +FckmlHfZHYrixmomDC8nX6Tv4u/k2JEdMahBCZlby428qHtR8uzOiSU9mt1+QrwIh
	 NyK6ckqYB6peg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939CBC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046579358.7690.9031558988828546536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da49b46372faf4a6d4f2fb23684df1570471f56aca885d8b5e2e8d81487a79a
Date: Sat, 21 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750465793
