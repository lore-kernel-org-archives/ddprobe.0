Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345A81EA73
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752920995; cv=none; b=o5Xoeu56GqPLFmYHasXrWG6YngGLg3bR2gp+CjBVw2gA5W9fXC0KXrA1JVhL4aNzjiAXBsckWdbm3Bydo+mpcKuCPcljv96D0MA78LUXZ8YxQTRVAjpUhPuuRDvpa2CP2V0gZ4Tof+wzruowH2626pcTorn6rbjUswwLbWNozEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752920995; c=relaxed/simple;
	bh=GHDfNX4P9dg//BCB1yx6ho16hauLjlxwKMGL4Ip7Lr0=;
	h=To:Subject:From:Message-Id:Date; b=EYOBaNlFH9G8yx/8tst5tkMAX4EwxVi7Ldy84pAR/3AQUx4bpnMz5vzX2RuEh0emNUg+dmUhlhp0iqLWu7k8SIGw/CqgujwihyZictIYQuleIrE3x+trHoZ7jxrGuOdUkfLlFV/E8YqNV3e1EFToCRp9JAbX0pKOm2O6N7RZvw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZotjjI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZotjjI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A553DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752920993;
	bh=GHDfNX4P9dg//BCB1yx6ho16hauLjlxwKMGL4Ip7Lr0=;
	h=To:Subject:From:Date:From;
	b=YZotjjI01nfBdcQbQqAeKitxg3/oBpEq9ALm/v+xHNvC1V7YS6rlpSuuopYTKVXfL
	 nt25Bq7/VpEpWI26k9FZfVyzgWmni5qQyMgOevR+6gyRLaS/8aEeaxaCVuJK2m0bA/
	 g/3FeIeEs7aMaB9eWp6KgimAQURg9ra5WCSa7AVAMkBaDOnZoo/2Af/Yv1KusyUTKv
	 0o0M0Fza8l+6h2F9WybY9vGEC4EFuTGApXpGfNh1FD7uWIGA+emtHd9XCMVaeaIso+
	 9zSGNszVn68B5+vCIQ03ydQMLawHWkqXPk8mjp+DFY5rFyop9YNrrq32Tqn4qLXIB7
	 B/QY3QuPeYAzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9286AC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292099358.16859.12923494074420943161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18fdf41cf872e3b69d0b7eb3d376cd128d30daafdb1b6f1a2499c92284976b9
Date: Sat, 19 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752920993
