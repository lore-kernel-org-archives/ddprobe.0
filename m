Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278CB1E98EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761466194; cv=none; b=PR9GWEuNSQEToiwV9MT48Uu1cRpUIj/B+LlGiZZTr3GEiXVZjschR2LqckyF7sbD2RyjM2IJSRVRvcC2Mrm8zM8DHC23VWH1mpi4L93nSKY9M6Ao5w6KN4RqBSeDsKb7+BjOIUdejIKn2T+6jmnGvfPqJIiP1sFxMfybP4r62AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761466194; c=relaxed/simple;
	bh=QZNzaT9zdqZz57+g3R8gj9YENtFHlIgJB1qk/YpmzSA=;
	h=To:Subject:From:Message-Id:Date; b=Li8m1EIEr7RKrbV2tI/UcUdJ2SfPRoYu6Aku96b2A0eOCF5dl78jOutsWVICGvMH30FbbFRDB8gKHT7oNqZRzIJ5zOF7f0pjLwY4GJhGoZhBKFEGwOkIpLijF69C4nv0+QWUPTntUH0bQaxVgdtohjC6fSNgLS7oHzdJWJzBoEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TprInnU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TprInnU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FB8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761466193;
	bh=QZNzaT9zdqZz57+g3R8gj9YENtFHlIgJB1qk/YpmzSA=;
	h=To:Subject:From:Date:From;
	b=TprInnU29mIfLfKFb/n//CM+xjBRgRziMVdaktbMNZaYkFJnq0ieA2/sOE5wqmp1G
	 1AoUJhpvJqeJW+4frC9cGETzYAd0DNQKT6gXiQIP+hUlsdxV3cJMMnjTqBKbFdzP72
	 BNXIKWxWfBNhXMpw4CdMXSLDSjjQQM4QYb7ssWpaNLrBFNPaGkO2ItczKzwP7F93PV
	 lno99H2uTNMp4sVGZnc9ltUmchdgPzr5v/z082LdhsmK7vAXu3bEgX90HoGZsrNzB2
	 87PuPv6ek39AVvDYnKMCxlr4fGabzGlgus4cXvaT6vljD3j8VPkHJJeVls2L2EET+l
	 3eZNuqQxBbipw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B91CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146619358.11075.17915936954165257868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010f272b57953227da918ba4b18e3d7177dc204ad4a7526674a933421ec163e0
Date: Sun, 26 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761466193
