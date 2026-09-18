Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B8549D583
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789718434; cv=none; b=JbTYw3ZlJt/ObOW+FzUSjP1RuMtXRhAriEliQhKuV/gLch+oK8F0lKHTra64tqhHzVv9i3noNA5NE+MNbFGDtNSdR2ns0UGFzsjDxwSWa2NYDL0ZyRh6v8HjhBaZ7OQFmM4IBvzvONq3AWkXMxl8eNV06uWx+F4XRk1lszWY7MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789718434; c=relaxed/simple;
	bh=6yLI8P7Mr8P5pPji/DksAebwxMxcxQHRz8g/B/u44Ag=;
	h=To:Subject:From:Message-Id:Date; b=G0Wl6oDeL1wGpJVxZgCe2pNEtH6DNxLaUHlW+2fXsswo+PfPr12cfv0yR9UP6xLUvs9JgWjEE7tiSLk36qrr9iyo1ndXDlWul1HDlo3ETNEhC4VLOyQUuXcxRQpd9LJ1G+IujnVpIpmVrekFy92OiQnWJry51aSiAgPMGl/vqxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9u6B0fN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9u6B0fN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC6FC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789718433;
	bh=6yLI8P7Mr8P5pPji/DksAebwxMxcxQHRz8g/B/u44Ag=;
	h=To:Subject:From:Date:From;
	b=k9u6B0fNYVWdLH/6lHzf9gsyzJTcuGOukRR2SFHbsixvCtgmxNysaWqinCC2BRtB0
	 loI/ny5lJr2timcDdRrNVx60ZhWuBH34EO3mhVwhSVgtk0ZbvG5sw6tynAba44a1V1
	 KXgqrYGMSp9IMbIK+kl4cWKm9OHjqP0XJHw6iKbnG4KYnWQPHAx2n8zfy83pluNs4l
	 um5jI6MFkCaV35X2OpyZPylDx7hIPXAIEU4VasR9hXVC7r5naqM3pb9fT6+oAOb6C4
	 FyfbvjaGNlIPESyyHHtnpuAVE7J3YDoJIpdmARDwK4XxCfLYpMlrgfyyZKz1b3zFec
	 hOmJsWRoBscGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1F3C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971843370.10705.8212242484041946306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb947f859d8832028f3268ff152d4d020389674c9890b3f8007450d70d00890f
Date: Fri, 18 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789718433
