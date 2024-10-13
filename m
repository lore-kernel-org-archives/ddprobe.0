Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D6B17991
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728854754; cv=none; b=EUWtJbA0kkqEXkLO6xo9vmdT5gjG2vuFdN3mxomNn4qgDAfSvPBwMPRUR84HFJdSXkIOznx/BGfHP6fNuY1P/E0CK61y+nyYaczJbkFLjK8pP3XHkcSV67hhcgEudSvAJFXR4xegVqFZ5/Jq1cQb743XU5IloUb+ByeaWIJp9cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728854754; c=relaxed/simple;
	bh=5uj7aRDlD6JwLB3xkCdtObNjVvx73IeDjotiPSolL5I=;
	h=To:Subject:From:Message-Id:Date; b=FrXdvbT9UIjb8nsvuFkyH+gkR5K6M/PdhHQezgxfNV5eTuzwUPpli1kMmmZk/eMLcghZtf6sbJ5yTR2RZdk0KVUm4uFG5RPZ4tn173oSwI+gmDXG1Dx6vCqil1UXJsA+I1I4jEj2xv3FTHDVOtCQ5GaL9Jiclhu6c+PDVcBh/+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSldUpcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSldUpcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC52C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728854753;
	bh=5uj7aRDlD6JwLB3xkCdtObNjVvx73IeDjotiPSolL5I=;
	h=To:Subject:From:Date:From;
	b=kSldUpczFaPqIfQ6VcLewerqNVevuwwpqHe2F4zETrldV9vWm/2NWm0b6tBL3n4AY
	 iOhb+zGhI8KeYU2oL+H1+wveRncZYowgy68OvYsMd5k5fB92RPDMoiNks+QnmNqMM6
	 EggxjuYfKj1V9fNd6Dj48H4jsaLQVM2E4+N5OURI9aAe0bzBYTfh8UNCfAKPvOHlkD
	 P+sQGf68XYN9OW9fkR2dtXGBKF4QMXdC455sfIjTxGb0tpAeLbGm5/aBSzYSK9wmRH
	 GpuZ2AWalNvHP2cpOpcGkjL7p77bI9a3BbdFMfOqoNwQoSHMdO6I4wXgxrs9KPly05
	 BS3Rc14ppqSgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B5CCF258E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172885475361.20526.12295914580978518386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6be9e8aedf69ec33480ac53ed39c0d6a864d8a164aac19e0335faa271f5d6e
Date: Sun, 13 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728854753
