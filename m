Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2010D283FF5
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772852694; cv=none; b=rIrrLdNqfKDBwGHpYenhLnCmG1uJLEnTJynfYplJs2pADI6v1hLj4PAQwz+2MoQvbdR9prbRG5PAWl1VURVw71FAlJPXVpmYxAFVxXjNifeI3LoLUsP4h3E9bYPGCBh/n41+epQ/lW5GzGyFHA7+fqsXNL1taM8c7T35xvFsaa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772852694; c=relaxed/simple;
	bh=aCJhH/uLKSQYcIBfA0YbaRzn8Hg2tnbzw53pUKyilHE=;
	h=To:Subject:From:Message-Id:Date; b=sQVraraziqnnJ85G6c0KovHGmGNw33FHIqJXzCgJIyBCzYorVo4bTRFYbbvDf/Pw9cRFfQHWb4QmYVqllcxQXy/B+yWWxBMb/r3xa+QmwepAIPLOAVC04mxN8vR/DRPVUPdxhFDPKXQb0jUS/ObDLMV/rbbcPuxBS0TBA5qPqFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pf550KOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pf550KOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A66C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772852693;
	bh=aCJhH/uLKSQYcIBfA0YbaRzn8Hg2tnbzw53pUKyilHE=;
	h=To:Subject:From:Date:From;
	b=Pf550KOSV7SLAN1STf2m+EQJMhc/zms3rCg5u8bxVgHcF7n8d/ehVl8twvaP7rgcz
	 BnugyOxgmwwMp0X1W+6J0mdWsyjtvh22860x96g2eGSPfGfJA0fXr7CZEzyE4D/GgD
	 UA3egHpf+CO1LN+23tQiOLuy80pAhivq5Q/uul/Dr/mme8Dmzjz65lHhjTz/a2z4m/
	 +cTAVaXa5G5LCx5W4C2RHFxrXzgXDIzNMCOBbJ+Qj8L5NTAlDG6qANP5W+Sn3eVBF3
	 oMzu0t0gHzY3IDlZf650byIC/2B6ERCkbSVS+I0/q+VtkFqsTS4rOhtJaDMNSZPlTR
	 rjHnohR9+e/vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BC8FC9EC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285269360.26574.16027994280766303519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ef5cbd8c2e0c1da819d59551d2b1a8b074cd5bb8fbc177ec3d99aa552c6a9c
Date: Sat, 07 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772852693
