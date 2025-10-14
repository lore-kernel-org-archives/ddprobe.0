Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E39D3148AF
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760445594; cv=none; b=f4ihz7H/ySOWEufKKFS83rNHq93EAUdJFPRq1FpjLg5NwCCCxbqwNwsYJAKOqgJZztl2nUrBuT2/V6jR7hnISrZ37dJ9qt8g/rzva1A6/hpEOc0JZlTOfvlXZPEicqSVyNkSfdh0AHSI8VLCQwTD93XUuJ1Xshr9NhxFAnv5MWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760445594; c=relaxed/simple;
	bh=vchm0gGOkGmzp2buI5PqkPH08wAaZ1DnpV4ek7T59D4=;
	h=To:Subject:From:Message-Id:Date; b=tkTcSyFqNjwjqtbt5aJbWK/naV7TsOaJ1ZtFyZGklPwPAd4f70g4UJgvr6+j3f44g7IAokspcq1Jh8WHT8oeJF5ZQ8sLlUEH1y+TmJERma4w4zbe6ViAHj+nMgseNGGs2YOeGbb1gARnSRC75Xamjx2SFv8o5alspmqbsKCEr2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX/Ki++2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX/Ki++2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0232C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760445593;
	bh=vchm0gGOkGmzp2buI5PqkPH08wAaZ1DnpV4ek7T59D4=;
	h=To:Subject:From:Date:From;
	b=qX/Ki++2YGDgKFFZVl8W77snzD2GTHm0+URz38iNLHhMimExcwbHCRbZtSSqnDQgD
	 rgY/AfvljJnk+godnnbCwkWBwySNCSEczgFs2dEeAP5tITKFskwfRS6SUk+pFiTAtQ
	 FhkgkCZ/BJXTDgprbJCMveU+b3bHsa/fVQqjLrnZNiLGd7s4Z7PbCuU/itcrrbOR76
	 cG+ekstOAfMnE75Qm35kaGBpxTlDASMJY38JYMpJq2RJkbuV4FL9w/l508PJKh7caY
	 XczFOn71bnf6TM+SBP+GaAiHvuSX74VV/Hi8TiW7zemxRiljUKokuGq9QjgEar9+uQ
	 XJX3r1ZegjYCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B2CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044559358.15603.15561935980461875055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd6095da14b23bd881261541c09fcd1cf9559a384cbffd4d7be57ad0842aa73
Date: Tue, 14 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760445593
