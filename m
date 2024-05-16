Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F12D143754
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715853743; cv=none; b=VMMo9K4UH9YDq87r1/mosm4wG2sUhV27VKvk0hbfVsoWzyG2XuxdCdTkrwnpiBVSC2W+cbt13VHiKFTMBKFFmVSautH13D5ztkInwEVbgexh1ZaJ1t4brTlVq0Rai41sg9kNgcRrBegZFaj1Nol+EIYn/Qc+5RKHj57e2PMn4lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715853743; c=relaxed/simple;
	bh=x0drCMoGdSu8jlwbavRZPm8es9M+hWBK4NpIWSd7xx4=;
	h=To:Subject:From:Message-Id:Date; b=sqUOHz6d9RAwkfw8pMShSTN8H8yiWhgqjpPVB8P27DQimpaC1bI9cI8CF64OYzcsjhvaDAZB5WfiAbHMo0UcS//QLxSLw0aWzoPMXVSdXa04dxstLnUxCq+ED/k9aWa3vTIa3FGihshGsdLG2KzlKQGXLDcwecHTy2V32eGGqQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7AfAVbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7AfAVbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29C3C32782
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715853742;
	bh=x0drCMoGdSu8jlwbavRZPm8es9M+hWBK4NpIWSd7xx4=;
	h=To:Subject:From:Date:From;
	b=D7AfAVbGJyE1l5yx53Qk6EMeY7bqsm/VmjXXwH2GI/mKQVdpL/g06NLkIY475T5Y1
	 O6qHuCOEKQdWhrwhuCM9tvNgepD3D3Xpim1WhnllXX5iuuRGncp46DMhIjg/A2ao1m
	 kY3uGed0guX5NE4s+39h6DkLn3EyonRyhIeULyh9iTb2eEg9AvtCJyYRa7aqo8V2VC
	 oSNKIQ/FjHasaZrRZCf7jdtm1GUTP1xhqIdMMjXKFK2r8HUecHPvPkNB3jvNwjp8VH
	 ymWag+gCBUV0ooA/OmbLk+H5LmL1J98tLJXIwA7xcVhoXdz3G1UUVrl5tZWFvh2AKL
	 81OChCjgnu5cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6BAC25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171585374277.25688.15097512927321907739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae7deb35789e0977d8611958ffb39af5b21a82fbc7af063c4ef2d156e22b065
Date: Thu, 16 May 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715853742
