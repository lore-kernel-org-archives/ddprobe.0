Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA8733439E
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757419794; cv=none; b=VtBMaeVqY9hqpDvwCGmZnJXyfpYVEfCOQPeppMATj2xTtFKlCTUME4WkZmHH0b1ZQiZixiDaBagpGeGFitdDST5BFdjbbGKOT77xcgC6xLiEHMOnQ1k9Z2s02IOypRX9HHoX9NpeuILJmRMMWHDn7mHNu47nw3Uj/3Vo9bbf2jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757419794; c=relaxed/simple;
	bh=iVEmot4WpekiQkyxmo+z+2bn1C8i5ReY7MIQcIGsBis=;
	h=To:Subject:From:Message-Id:Date; b=e9csRrg/H6F9t2vd8GS+F8HTUA4FY39n4wQY4SdUMEYZuOu6e8dkqHJ5dT29OOCMYQpNhcVtdklNeaZIiHdrrgeeCoKeuL7bozKXwWQimRjulB1S8yYQQ99Q9Hu5+9rNs7EVzdnOL5pzGhzipPAXYpfO1c0/VRT9h31lj46RAC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEREKf9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEREKf9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD18C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757419793;
	bh=iVEmot4WpekiQkyxmo+z+2bn1C8i5ReY7MIQcIGsBis=;
	h=To:Subject:From:Date:From;
	b=YEREKf9DeJ9t2uClEh4PfqOc1yzF4w6qZwWkp1Dme7qybE/pgEXbZmkxmuAsJodoy
	 GDBzlaOl6N9VejWpsZFa9jh1HCnOYuAfqG525tCyf/QQ9syR4QtrmE/4RHzjo7I5l7
	 OPxaKVazb8ySXaZDu+ONMD0RiHe04DoZN6BIUG/ZjOPXXUVvpqNjNOCNWwuDKCTjRl
	 yPiOCUZ1K8KHaCVzbZqmb0yNfmCeU1tjCrIMk3g7/yIGVnHKOX0OaC/9ryIogQHBhC
	 xmQaBmNM2JTcA78qR2Er1L7q4o1pkChoGzB9jmQh7sRqv63RxCP5S9ZTtluy8UdcLW
	 dgpYR0a7pFTQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE6CCAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741979357.17254.14391518046107230600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e162ef20a2a4f4877c19e86f051bf93d77dc12bd5c96b542f964df24dde1726
Date: Tue, 09 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757419793
