Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB744D8AE
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724982954; cv=none; b=iFL8jdd+kdzVPF7dQj2op33Dc2t5V2hi7AaNDJeAmRRszVokLyG6CrJWhjAANAAir4U8pHh+pl6GzK95aJzmXlICSNXZvDm60Cy4ln/2YWW6HjbpmBko9ShKW5THQxfpGZYXqFKEpoWqGvEFchcxWGW4YeiZgiAlxwXDiDStpiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724982954; c=relaxed/simple;
	bh=yHDLkiTpn2Xfct6D8foInFYB19DvqdxGFu8jNZOeAnM=;
	h=To:Subject:From:Message-Id:Date; b=nASN6J9XK+kNCuNRf1VpY0yj2ZyQIkMdyhrEhNdoNVU1lFSAg8fepjrlBcHH45hi7hwrux2QgjC5fLyPVX/4QTjmdpGXGN0Q2JUBv3d/71dDdgqZrj9srhe+lIPJUZv66tgOpLRx6Er0dgIejaQn/typUEZ72CtKL3IhLWfQr2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqddlJPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqddlJPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEABC4CEC1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724982953;
	bh=yHDLkiTpn2Xfct6D8foInFYB19DvqdxGFu8jNZOeAnM=;
	h=To:Subject:From:Date:From;
	b=lqddlJPrqW/ngNIt1Uz4Lr4ZhA2lcTIQoHNLjX+kVO3wsCCWPS3DERnR2k5OMiV3F
	 JMYmlfdhQgaIyo5o9pV8AVe4gQek+BKdcLGTHWunWog6P0M5JmTNt0jt+v9yzGFct9
	 dOymRSlTwqssUte4Ob3VU0uuhEuLWYSdr9xXIsfb3t0UD7VR0+ObKSfflobH7WyJc4
	 2JLfEeQn1rlNPuVm04PUO4oro/lpb/9orZ3l8MDqDxRvz7RiJimhjaycuyR1VJ7PH+
	 K0lOGGtBqe5hUzbpI6NdmiDwMWQOa9MEY5UuJCc9XWuAqgTKlxfgHturERGUS2vVOI
	 fKCP8keOFjNOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4ADCA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172498295364.20502.4120979820547929609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49cef129799d82bf1398f3494f388ed5e5364fc0cf0f8e10472479f75278928
Date: Fri, 30 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724982953
