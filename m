Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351802797B5
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754000994; cv=none; b=gvQLole/Bwdfp96qSvrJLD7GDn/N2IoFtBMuMGe7juasvJAx59cnjd/EW84c1QQfhAlWcO2iCkD973w0V+VLftcuRg3d5hOGNOHwwmcKikbQS9Oo5lEwNqf43uCtGuRydT6cyAzYGXNusCJm2yAdOOWwBPFsYOUpBxpMsCgOVSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754000994; c=relaxed/simple;
	bh=qGxAu4eDylHjLW1bfkMa25vJKyynWhQi3qMt1zJXFJQ=;
	h=To:Subject:From:Message-Id:Date; b=G27rmMclo9etIcoEx9hbsGq0ModyN3euT/BLupX05JNy2wtK9prynebAizgw+OXduR2XTVyCtpC/9BwzJUI7ETyDhtIyqZZf63jcO5wzjOglr2qMjyZk+02iYUH2k3lIFgfnSbl2rRhdN6McB1XbBssRhvlCvALPwbYs9Ri9+Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsnCvPF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsnCvPF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB28C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754000993;
	bh=qGxAu4eDylHjLW1bfkMa25vJKyynWhQi3qMt1zJXFJQ=;
	h=To:Subject:From:Date:From;
	b=VsnCvPF73Ta+8nOAsGJK0FJAUfhbvCI+BdCMjsLhR/PsB6WjnEobPntZEexP4rTmG
	 a/kdKoBR499J5WZffEfRbhQuM9Xb6/KWzEPhbtlZg11X7mODbO00jG7fxEPlCwr19C
	 NTpdgn1xhVZxzp7CugN551S0v0u44ZcFHvIn4krTLqyQsHQxdfCTsBjTp62VPr6WKd
	 S2VN/SeZxHxhR0OFTGoDIEFTOfv2Qqwa/Z2kcqqwnFdmz+nUC0riBUM2urrxGRmt/4
	 z4K9Lth7i3cPQPPuOdt5MSYGYO94i6C8zrHhHw3SUjp9lD59aqnxn8G16GxCTDJUfc
	 NPt6CIkhs8iGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EBFC87FD2
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400099360.23888.8157184092552611128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0781ed09ef06e14d2787d8c2a917b8a7ba6c863e391ae07d7529ddf59119ddef
Date: Thu, 31 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754000993
