Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB66146A66
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777211254; cv=none; b=l+CSFIkXuIoAJiPFUT5U440BqqmLsTiUsH5yJHC4KQczrA5CUe1u5/1pN2VoG4Q4Nc6EH6U3YxqF5BbM/MAWepn6fOHl4JcYQLl3nVLJsHGBbR/zC70Ydyemf6OGcbb7ngSbIH1RlnlkMOMvs2g/ZfZ6zYFoYP7A+TdUN+/8TZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777211254; c=relaxed/simple;
	bh=AdmgzeJkEQ8KTSI0rosSVmaO4IjASb33RNNFcjQGREQ=;
	h=To:Subject:From:Message-Id:Date; b=Sc15UtvfiFpgg9JZEIueNCP397H5ULPqZjVNlnGAc35cxZEA/aL962ON7g27WMLgWbesrJuPez9IkciAYYEvZkzO6dX2cMR96wzsl/m/T2pDPW1hbgTzK8RPy/Tc5ijgUFjSSYeb2lhPtV+7WE1JW1IgB0K2MPbRt2TAx4qMKKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoCH2ctL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoCH2ctL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9581C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777211253;
	bh=AdmgzeJkEQ8KTSI0rosSVmaO4IjASb33RNNFcjQGREQ=;
	h=To:Subject:From:Date:From;
	b=GoCH2ctL0dyFiO92M+De8Oxu7HqEqVMR8jRPe518SvT8m1l/vvx9JkQNPRpEXi965
	 8Py5vBdboKPEp08zoYCfdkI559hjFKYZahF9zY0NPLp2kTOTct3BzcWa9m41vC0Igi
	 ezNGCQlKekO8oCAxBxgEpRWUXsGE+2ahDZLFecTtSYhfh0OobovjmJolSRw2WUGmg+
	 f06aAaDJjMt1njJUo2ZO45fn3Z20kBxkw3Lf0eXd47QLL41NlecryXJax2CN6bzlmP
	 3DNxoE0lcE30mTXDLBeNcpdpUYGTXm0aW64ZwAxK3lgl8KQ70kzaM+wPCJIx7FUw/t
	 uTWiLw0Jx14ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B388CFF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721125372.10602.7918550680494681713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f23119cbd9263511031e2b066ac1e8aaedd0ce83d81db076b42547a52d8da1
Date: Sun, 26 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777211253
