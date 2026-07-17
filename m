Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FE933F5A9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784260714; cv=none; b=E4lAFj1DHJyzDKtUmzhKTCsvquzo6GyzTLIZaYX5yC4Kinmu0d1eMKDV0YE9pe6XEMAkO4WfHIiOK5DoJ0lOFG4cjQIAPMThH8HXpnBj9uTBuYxBfN0900WAJjTUBMAV36hVxNKKbJf2eYqvRi9erOBGwJ9UDBTBcQFwW0k3jR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784260714; c=relaxed/simple;
	bh=UvAf7/V/5QavEfdcDEg8cyX0qo2234Pd/5Dpyc12cnI=;
	h=To:Subject:From:Message-Id:Date; b=K/XCn3XsiLhi/0iWcs12EfQv2Bdae/M53S4/WoG3AzFHUaITF72IYlGAn6t3fmTFORA1A8yyDqVwPXXIdeTu4RWGbO4ZOG5D1K6nBZ0w2Fatde+OeZnlbRPzE5z2fdX0TOgVuEkr9s45dwAF7Z/xIbOydwNmhyd7M5xnG9s7rRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJ42yWp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJ42yWp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE255C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784260713;
	bh=UvAf7/V/5QavEfdcDEg8cyX0qo2234Pd/5Dpyc12cnI=;
	h=To:Subject:From:Date:From;
	b=kJ42yWp1pfKzF3zD9v/dEpBX+zNIahxKkoHg/tegxfGMCt7xDK6PRHoaRzeEtwysF
	 +pedkQbqvbfXwJTSNeED3Je0bMHLcaAi265pkhu3y3A1d+4bSP4Bn70ip9WT8OJWZP
	 wLrAccKgtreMB5/E9H1F0t/1bT/VbRI5qZU0tvXFt4DAnNqShJXWkUeNI7ggalCPhF
	 0OJG10uENRgLMHs9oXa1K6UNiS5GIWzzu12F4k/5VDozgxPmgREK0/KlufWkg5zp8i
	 gsnlwC28hxkRZaqi0Ph+lvY85mjA1xCO953b24Uqk6bIFKtafaW2mhDkTZ90jkTtzq
	 lhaflXK8TJAqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEEEC44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426071369.12492.8172113724525678937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce45d54e384133764afd978f5a0b32093b3c0ef2593e10d4d631e3f860a0348d
Date: Fri, 17 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784260713
