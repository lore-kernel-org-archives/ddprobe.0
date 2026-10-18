Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6387F263F4A
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792285834; cv=none; b=pxj6oHicrbD4HyzyXUl6f04g72V9wzzQPuU20u+Cm3zFz9VFhzweSLnvH3uLK2w8BTV2zIwNEEg1PSrj6BqR7Ha0gsvsEJ3vrlqLJYiPiIm8KjZ+JxfcBGH45gvGIR/s9nlwUm87GmS94XuhGg/g/pYcVPr1MhAlV8OBrXmqIog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792285834; c=relaxed/simple;
	bh=ukAVXrrqh1WxLhX+76DDHIhaRiy9fvfTMv5ZhVTWlos=;
	h=To:Subject:From:Message-Id:Date; b=gRudvcOcOGrFk4apifjg3OtrVfcvZyJMji2NhwYDSrwFYyP6UqlNyYYUCV9RUAZG3RhwR/ev1Cw8rNMvh9JWk5fWCg5hn96vmj5TJp4wDvA6IozhkpJ7y8S8ATDmAN2WI3WOwqGINjlYtJfmBCfvMoZGxH7nUzpBXYHl9u7GtC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oG5TXST8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oG5TXST8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB064C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792285833;
	bh=ukAVXrrqh1WxLhX+76DDHIhaRiy9fvfTMv5ZhVTWlos=;
	h=To:Subject:From:Date:From;
	b=oG5TXST8FE/KGLMP/BAE0DLJUuBXzQCfBe6qhpj96SnBOKIgTFEsOSwafE1pVtaW4
	 mrHAmzf4uo0CDDF25sd8vXmsIJ45KXpYaSlCvWMYtibg+leWI1gaK/GmG0PxkF/LnO
	 +/szFHavwmVTBnNXM80/3ZKhhXDRFJjalF+aYthcRamsDmzJNxLZOMziEVm9kY8unT
	 96AEJmkjS0DvdQka4vGZIFGwoLhn1azW7Mltn/B/DOmmEl4OaJlT93n+nOjq5AElPD
	 f0c3lgLV490s49F0XbmnrjPA3UTPsbXPNHSwjvpAwFzKZnZqUt2FwXl2XaTQwx8Yo2
	 j5vJsuZbZsOzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0099CCF2C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228583369.32056.6169414085327408118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c116b6cf7e9270c4bbe2f9ed2e3e83535d156055d7261df319375b0403431c
Date: Sun, 18 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792285833
