Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4312459AD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736948154; cv=none; b=W69gfvFyalhfBqmHUH2abR7fPqCEekYwvS03m2g9xNALv0aqJIfmN9MdRPr8SpZcPUrnw8YQn0PMW7eh4EHTZkM7NSu/noLuMS7yT+CDq7WjtN8mkylfJ09/bMsHd5PXUcTpBhjuT2L8vkmP5U/c96m/+A+BGin3Aj9gVw/qZow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736948154; c=relaxed/simple;
	bh=+xUUkwPKlIzQgyLOE+/AtUP2TTlHWPuSb8jn6LsJJV4=;
	h=To:Subject:From:Message-Id:Date; b=kzAj/SOebrebnysqj3Jy6SceF59973yC0VTCvRBOtEk+vf74Z1ArrCeLvFZVBvtTuQNKPdmkh0irqAOzc2S/4fATa388f5tfuiUEqEGufQpd3IoRcaEosBJofCymwTQ6t5o3Lobw2lSgti3ACDe9NnzmC1OJzFke8XtTJz+4bjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OR52kPbl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OR52kPbl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B529BC4CEE1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736948153;
	bh=+xUUkwPKlIzQgyLOE+/AtUP2TTlHWPuSb8jn6LsJJV4=;
	h=To:Subject:From:Date:From;
	b=OR52kPblStcCHZ6XiLkuFgKMyOSdGs/TSKTEL7XPfr6ROjx/zZlf9vmbbdsz6OYPj
	 XTCBEE0BYQaW9HMNRvnkvqSWK0BAYVp0zl7ZqAoRVMDKhcnUS5R+U0HDVRlJ/nWKHS
	 Ti1UZ9z3ZvEKGwUnmN+t/84tEtQRrBr2hHPwCDAuhSfWgOJNOYXL0T/CEPHaSmtuUE
	 IcBHX4UX807ofYuWKc4bR7WCaI9QLFNTFv/V3BffFHdYc9u9x68QiuIdqJgXJff51+
	 s9YFI1yld6f0yFysh/j+Sgfwq4GfLWBoIpC5/xknwiWKyXW6RZdXIePsj0ZsPKf1As
	 YnXzXkRN9OmVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AABC02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173694815361.7565.2708431985198027432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f2bdebf0225f3e08aeb836db15614938fdf75ee495188c296b9008009da063
Date: Wed, 15 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736948153
