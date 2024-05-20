Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CA879DC
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716173543; cv=none; b=i7bnYsp1sUH4TLwYXBZnli7a071c7sNe7PYlnN0iNxJrYC8Y0cH6fjrbZu8F/5/QlHSPufba36x5FgD3x5+YXn0SulIvLLUHceCADrER8N0S0mZ8aQxGz9SQADvYZGXOC/jkSG3jYiiurp4G6RtCMaHAh0WRdmoVEg0LpJNtPM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716173543; c=relaxed/simple;
	bh=C+OibJbUtS2Y3oIn+8LK3ewUQGbGlfD/sAkSZhukBh4=;
	h=To:Subject:From:Message-Id:Date; b=grZpv5wZXv95UpegSfkn+BzsDJiklBObTnRZIh7RzLlfwT3K3mYuf1zTW5N7v4od7oJ5XAS1Pg1fd9e967lhn6stegqkvEUCiQqCSnCXmcdd+Fbau4ZtWG4KAgHVeXU3srm//YwxPq5DXDHdns9mMvlb+ol242D5itjCvfPAZp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1SdxBTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1SdxBTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59D6C32781
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716173542;
	bh=C+OibJbUtS2Y3oIn+8LK3ewUQGbGlfD/sAkSZhukBh4=;
	h=To:Subject:From:Date:From;
	b=A1SdxBTuHg8e7Qj6FOWs+YjbUuFNgSQ92yA50HIIW4q5d1liVnA044FRC8kEmh2vx
	 EoVPw8uZBJJ0joMcOFUghOa65U7LXeAQ1NR8BYOsChkAJV9JHd9NeiMY/Pb5CAp5Pg
	 Q8SivgxTCApkEZfHKo3VxiRb86+ZZT7VKMcEgWiVtfQjv38lj0Nuin0DXUUxIJ4lrW
	 Z65AMgphzyPggQab1TkBlSXOrGvwS5zraRShXvaZeaC/OtyFPCp+6E3Et1vgaBfETq
	 QM1HSm3owJ2Q7XjQrk2YoJHSpE5R/pfrNXCHtLA0Fp4eebqCR+lC1lZNZ1W3lmKMhQ
	 pbhgnuf+hb/iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE35EC25B75
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171617354277.12151.14222072048298627393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a4783694d0600fa953526af7ec8ef5b6eb24b2f1dc80ee1812651acd3027e96
Date: Mon, 20 May 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716173542
