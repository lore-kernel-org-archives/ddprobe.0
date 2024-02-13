Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E83F29A9
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707804497; cv=none; b=lFrzzRkzXkHrLlXrvH3z3I3aGa5T1y0zuSSkcwrg/LxPouWyHV0pJfwh3SVisaRj0AvtgfB/u6JkFFAEw10t+7YKZCX3QCzG64vFddTukDO8+/S8J8dBprpuWQN5d/OpHz/zUSpJ+WB/RzY9NpByCLTu41+zFRqs6yZXITvQ8gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707804497; c=relaxed/simple;
	bh=sWj34AroCkbJYd05yjnqU9YKiAgQDNpjIT+vX1Fm3ZA=;
	h=To:Subject:From:Message-Id:Date; b=G3Sr9puo7WZs4Y6rRPGCvZd8ShDnYL6OjYFctN1uk9uBZcfHNdNqsd50ALdHSCeWJCbiijHL2WYZqXQdfUgJQLPUvQpF7KQTKGAOQs7c1m0n4CwMU/u37ZfF1+HQJfhq8DgS68ZAXlD7os5P0ycUjYObxNbVU6AuPanFDlfbb00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smkeOFtY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smkeOFtY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFECC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707804496;
	bh=sWj34AroCkbJYd05yjnqU9YKiAgQDNpjIT+vX1Fm3ZA=;
	h=To:Subject:From:Date:From;
	b=smkeOFtYs5H0ZvgGK8fNIXdqb1keyq/5SgG4uoZAln5KHIUzHm7Q7ymUL/YsSdDhx
	 Gp4HCdZ/rlJN686F0L6Hq1dU1OuYEFQ4mMpRvz5R5pr30J9jOR0YwMeGCVs6BiT2I/
	 yfY3rkmZAttXB/rgiwOVQ7Xc8R2oL+kksEEQza6KA+Lj5jo+VhBB2hR/CZkBuv0GfY
	 IDkq+AnjmpoGlAoNZYF7CR332ktOyeCipJv8iKe/vrfZyplKdmhRiWZ0iPWW1mwX+J
	 grmLsowV6bSf5bjGk2e6sxVnwm1Kwmnf272m7pa2Wo3Mg83SiDd9BlIZqSdB/yZ071
	 bgy0l9eVShXkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60729C48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170780449637.11806.13979296555243129932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d308bc272f13e507a2595f5aa27092827b8a52a1f1a2742571863bc22658c79
Date: Tue, 13 Feb 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707804496
