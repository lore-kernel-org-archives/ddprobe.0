Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232EAAD24
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727616354; cv=none; b=nnylC4/8/6UJNtxRnzj0AV0XAw+0r5TKeumrkyst4Pj25RGdzAlyUA+/JfAAyp9R+X2nNA/357tLQWjSirzseMLp9yoljDVj+b/q8KuZOPwg324tirpx5dhnTR/UhN6Sn2UFEBJ+DVFShfSE6STgsQGCoq0ircKiu6igjDSWGkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727616354; c=relaxed/simple;
	bh=S4XQL4sc8j/v1uF0Gsnf/03Pyy/oPr5c3BXUrWntn6Q=;
	h=To:Subject:From:Message-Id:Date; b=gkC9H4xqhJBokl9AUaND0TU4fQvqIBD7Dtxr8Zrf0SMwSnOwbJ8mEovhejDhbq9SRawsJE27M7W1mvcI7BgKaPCieK+hWZGwx3LN1Y8einwt/i44DcxpwB5TUOUGxlL91AxOgZL9XQrSGFixENCtU4lL3/Vt/j2OHTrgFjHA50M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8zzVjDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8zzVjDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FA1C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727616353;
	bh=S4XQL4sc8j/v1uF0Gsnf/03Pyy/oPr5c3BXUrWntn6Q=;
	h=To:Subject:From:Date:From;
	b=R8zzVjDoowG88x9uQUxOMqBF9rbRVxeOxsX9HpvUGORtcniZpDxi6xAR96LHyWELW
	 Eh86V4Erx79KCxQ5wNgb2a+cYfcPZGwe0hBpHevthb1HUxcCXpJlYoWS2PL77zEacw
	 nIGaNYyE9mu4IXHKm+n6JgtQ2/zFisz0bbBxWrKuv2tRkXtDLVxKVMfaPBQH8eWlLs
	 0bcIt7/fhsoKseeWmpDxlJZXdqcZV6hjMnFVaSKjsII0fS09mtXgko796ycYpX2MEl
	 Dd5z4KX6YwXxJOTOuRUjy2uZD5+0KQY4rdrRF/84ytJjHVulyhPFPT501cg0mSsT0x
	 3LIlL4NkGjjFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A305BCF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172761635365.21781.13683054747496125515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf22aca00767f70a9acd2590be917665a56b936a011b7c8a865dcc8ca065a7a
Date: Sun, 29 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727616353
