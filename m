Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CEF246798
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770097434; cv=none; b=I85v1o+QXRRgrJA1grlcygnPU3IHpoclua2z8wfQ1jV361nNhzfNGHZWS74ibjNVn98nbCtNWMnM8rL4ifU03zHv+0bs34OHc6mrU5ucKnq4ntMRP2cJ8mVaHQy1r1o+eQLp6gEY0Z09+dngS/J4+sgqncxhsoKkh4pAf4lXGH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770097434; c=relaxed/simple;
	bh=LjBnxm4l1JD5kbuLzigthawsDgXDTRByU2KgKFN3qjk=;
	h=To:Subject:From:Message-Id:Date; b=fSNkO/p9GAa/BLzQqS74S9oJY5NAUulcJVrg+bcgMkTTLuSkZdkja/WwAfRbVGk69J2mBWfjbYKj3hHG0DesdD9sQXxC9ctyduC6V1kUxm4ynxNoZFH7UKR7xQjKHWETmEg/Bkqb2QID31lV1rzkj3WkksJJQCY9R3d299jbegY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRTqV0ZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRTqV0ZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFC3C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770097433;
	bh=LjBnxm4l1JD5kbuLzigthawsDgXDTRByU2KgKFN3qjk=;
	h=To:Subject:From:Date:From;
	b=YRTqV0ZTmG/VpA3PubqlAp/zc0nEhL/zgObsqaLIBlJhwypTuyuCw1zqb8Uyq0Pa5
	 lwcqg8ntmb+hDKg/JYAky++kaFGHUvvIY1PWrLpNLSw0W9zu32dIAJtOMzZURhkEsp
	 s5OE7UiZ3ih21VtTHDs1WX/OR5BzzYrF9s6LT568t0F7pRVBElbpsTI2ctZ5BLyx/T
	 tipL8TDcJiiyygyDTbiN1/7Avpm8+pjDxigZAUoa6iIlVvq06hNOLXMV7nhWZAxbvh
	 BfwxEC7ffXmQ+Abc3USPGkke5uzbgMzXEtvGef7Mn4vcu4Fj+TYYT8CfBv4lzfMPY3
	 Nn1VP94slHeYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DECE83056
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009743359.30646.2535697547869015552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40106cb33fcaced0834000a2f7d1aa613ab63872efc5aaa310cdec78272e236f
Date: Tue, 03 Feb 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770097433
