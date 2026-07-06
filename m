Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DDBB388395
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783306714; cv=none; b=NMBfr24BEEw9NSqL0FUpRf+P4YK0GtXNBvXs6s0D0LeIvf0BEDKaTrSKzao5dcwPU7i1s889CLp6wsNiNfDGXKOhEybsu93fNmblggf7We4rNDYkf2ybapD9oqQ5y3FKV0UOxJV/LG0YmimxyaWEX7jPSGGP81liUHQAGogxDvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783306714; c=relaxed/simple;
	bh=BlF8GT83/qBneiK7TmnbQKAKt6E3xerVg1dTJbdOGR0=;
	h=To:Subject:From:Message-Id:Date; b=UAn7Dmujp+50YoGfdaKtpmEGB2rrcMOJvPn/qPLYI92QHizpujBTm9dQKGjcCb/uAk7BbSUVjcALEqJNC5oWzlwRWf8cfyeDEdKydPkCdlx7fLVPyLBVGwO7JFvHQ7iwaOethtemFdmtAISl083BMsgUZfv+pljGfyqsiCsiZf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeePVtG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeePVtG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC227C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783306713;
	bh=BlF8GT83/qBneiK7TmnbQKAKt6E3xerVg1dTJbdOGR0=;
	h=To:Subject:From:Date:From;
	b=WeePVtG0FSb0/PM/JOvBgMjZbH/0hu7VW2Qej7pCRDnFy/HeclP3XQg9ru9n4byD9
	 b5A68FpB20P11MpRxtbQMj9nmxFWw188K089Ouq3nPQAgqYWMeLVDcUpR3++ZYgGo+
	 P3Zp+GC6XnOjOrybHXGX1a/RNPvUXs1f89P04zX/bc7AMgby/c0aFmUy6x8VXXLYDb
	 DEcnz8PIHe/QmbFg5DtCld1xUo0KkMKNXQF8HQhXrN8MsplFmcBxuJ7cUncr9wCtyp
	 FI9OKjzWz+U7IKVB6t/W/iTWOB5Attl4G+eyZkOVE/0I90B/qs3rVgbYGuZKOmasUz
	 6DM3DHWzBRIQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7206C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330671371.2587.15745840146912199545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eba0f91b40182c27cd662f7b5b3ac6cc7b1791b711491fa36b4ddca14b05627b
Date: Mon, 06 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783306713
