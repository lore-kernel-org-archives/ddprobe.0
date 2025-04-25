Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286571DF971
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745602794; cv=none; b=aMMqyzsxbh+ipkVL86DzSAWdd4MBXXyOsw7zFPMl58qiPRpd+lMHZ4MCS8DsvuhilPusoGdwU93W5XHTZujRsmp6VwU0icsK8/zzJn5E6omKvwM8GwyV4DO9YAOcp3a7fkz2Gaxo3j3ibmzMzi/b7iLnHUJS18v+sw4uZAQbj/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745602794; c=relaxed/simple;
	bh=viisKpdn1pLw97XpZ8x1hw4HSva+SM7q/YUW9rE09n4=;
	h=To:Subject:From:Message-Id:Date; b=lMMSFK0W/y7CCuplwxvZBAtegJFbDLx0GamxLheZU2YsT+4OnwzuatEQkiB60XFV/r5gKXh1yLTWow4tX35jS6bvt88qjuuEnfavpD3VJD5gx10M9MamJcU5wTsLO448ao1tBe4oR6/PFoxpnij4esfnBt942XubQC030+tl3RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+Ti/tcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+Ti/tcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11D1C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745602793;
	bh=viisKpdn1pLw97XpZ8x1hw4HSva+SM7q/YUW9rE09n4=;
	h=To:Subject:From:Date:From;
	b=e+Ti/tcFiC07gIgixmj+6IytHgUFC5VOmL824VSRMiGCnYc22vjDAgq7Hf59pyF5z
	 rLsYH8luyj56iVSS15PlROf9Z0g6Oobr4C338ISdOft11TJokVJPC5/SBx4WUZ26xR
	 kWBa9I67v9hUhK9zaw4YWXjTBzFIer+wKH2R762mJKHSCbBj+AfLe9mspuxWJ9JHPT
	 GIjPaM/Q1qGi/DdmhYXkd5+/WGmDI92G0Kk3Z/haL3X/VJtpqgs4JrMQnwKu+nt2Q9
	 Y8dxZHWxa/0DI3jvN5w+4p3ST9xCBTgk4O1a2bQwfHxUBIxGr3Z5QLsS297QAZn+O3
	 e5sML1+KA2hIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6EDC369D3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560279357.27314.14480350113538323381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5038bf1049078ab7ed22b8144572a1aed94e53a0f5ec97c651ca2716666ea73c
Date: Fri, 25 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745602793
