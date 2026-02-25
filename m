Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A41F17A2EA
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771991094; cv=none; b=kwh+85a3Um73TM4f1CV6mmV1CbroLq7eMpVpSOXMNlhmJiNhPCZ+wu0VigSSu/PV+0O6FCz+SKXF1x6F2cZj8Ou9SnYSsB5Fm4b5uLFaLx+XEAGuwLXwnYTherj/UKM4e7DfDSeQwGJNSUSvnIDxRRK1QFRhmJc5TESaevE8HQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771991094; c=relaxed/simple;
	bh=sGnDaFWQmKor0vN4seF8lpmKlBqq3m/cf95nj7PiyJc=;
	h=To:Subject:From:Message-Id:Date; b=iFedoZs+1b8jnY+VmFC6E9dcFB9XSH3iO6ZXhAudsyOXL/7E93ibJqwRxwaOrRszdOq2bxdgztCqYMbLuKkx1MSHuuOMklAS/o5X4VToYNPMTsg0fYDAKrOUosSvWcZ/vwqZc8Jg7bGSnQYeoEx7RScKndbjaryn9tlHRnQy9GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcORIUWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcORIUWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CCAC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771991093;
	bh=sGnDaFWQmKor0vN4seF8lpmKlBqq3m/cf95nj7PiyJc=;
	h=To:Subject:From:Date:From;
	b=hcORIUWGHGRxGETT/JdqHVBu495UmP7xLr31hTntOYSsZwFXfc3U4mPbAmRpOkOWC
	 oTeDxrgOhxKJfREC7AddDbsnZIKKyOES/lbPG8Yp+pTHKrg9EsXMrXDZsVnfEQn8j9
	 +pSgUyx7W2EzIQj3qJmhHgkcQ3BpEFuHbCoM9nITWt2m2dNI/Gx6kX6BCIcYYcOB+k
	 ZulprzkaXRs8lQ/8WwldCwroIOmU8ko8IkosOnjS6SXv1kCTFYGUZ8ksGmhbeE5c87
	 D1R9GBDPAHcMxmIBrjc92ZCU2K5Lk6hQplkDvfe0g3MqeQHMM4daCzcHRXjpReBf4x
	 iCi4vgiIkRMnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E0F55454
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199109357.28104.1891561157486054464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792162979a27db1b4bd0b4054aebae2f1b082e0f24a5ab4773342603300726bf
Date: Wed, 25 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771991093
