Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DFF15E5B5
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727269554; cv=none; b=H6ChPlC/AxgiMpwfijfmJRgnmGvXcj4FNesuOulfAKK4PFOqzI+9bD8JWwS2M0gmcs29mLQ9JXV8PRBqRHD+coWWdCYi8vfuTmnX7O7No8rKLnNET88OZh/B7E8eiVAELYW7Lrx4bn2lNzTmtI3V0TP5i/J03ci4GpL6Nupy/6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727269554; c=relaxed/simple;
	bh=Tely+/Fbs9hwazOQwlLlDXfbLuM8vhkQ0TRCbse5XeU=;
	h=To:Subject:From:Message-Id:Date; b=ERSlpo7WjAUjxiyJBAgSMofakWXbyerjvsl0NAlknRu6ia1QJWVCdwI5v0KmbJ9TagvaX2CYSrUdBccO1t0NbdPy+bCf1VivO7Dv1hHF7MYOkyz6eiCEQAPjxvTRlblrfeZJyBhVsBDlZe5BGYVLPi9E5nM42fpinoYTP/mTkTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8BO2gG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8BO2gG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A210DC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727269553;
	bh=Tely+/Fbs9hwazOQwlLlDXfbLuM8vhkQ0TRCbse5XeU=;
	h=To:Subject:From:Date:From;
	b=b8BO2gG9Tpy6jCGDKornYHDKpXNdwyUPBjJIHemRbUCd7IiptWr84YYN/FM8PE+1w
	 Hrr86GL8TBtlx4zY6vz0PBonFioT4ua6RMSTbr7vnD+zIwV+Ui2TO4jcbI82kXA/yA
	 iFVYOWm2mGCG66nbFNtYvxsaGLjtGmQgK0xuqH1WegxLM3jhJ0E2R/rFIpmA187pKV
	 ckvYD3aP6M+k+1fSrqBsC9lvEjAkUnECE5Fvmmcl9eI0Jc9KZgMpi0B5Ondx8f75pB
	 XEiUPoVU2jnYELjmQj5nn1G+WvhdnAeBZDvsW+NP4aniXwhCmz3FPZLGBRSI+OPlsz
	 gQXpv4btGLxjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92036C369DF
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172726955359.9328.9527223468712040912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76134ae7bade799fa2381c07e5596d563f07f5959c116ba3e9642e0736a65aec
Date: Wed, 25 Sep 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727269553
