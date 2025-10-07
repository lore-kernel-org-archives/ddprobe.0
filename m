Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3483534BA37
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759877394; cv=none; b=cJ+DUCiG9KmO9YJPhxpwxMxV7C1bb/NY1YId2zKwsXpwpxvhgoiDzDsbxqLLz+7Q00YUGXV22QKBNpRr3QeUCTj991F5ArOkkq91xk0On/ID0KIHA/b4KxPqEau6lIkx5nhuElPuoo9hkIdH6wi+ug6HM/1sKy9SWP7HWJsOhAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759877394; c=relaxed/simple;
	bh=2m8y+v70hQN8Rp7qthGro6+BbZzax1YNzDghAkFS/ww=;
	h=To:Subject:From:Message-Id:Date; b=P4X2ZLeAC5kup/xLx7jRCPAMMDLcIYI45iGKDPZxOmTlN4E8iIRO9clgkML5Svq/ibuk4qTZbMJ8wf1mAl5BHxsl66mVwbj52scnMv8UY/F/Fy09W9z1YJhNdYPfMk2rd/Ypc311XlgWecpEST8BEgOocCBdT+CuIV/b6ITEBVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKC5cu7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKC5cu7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20F6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759877393;
	bh=2m8y+v70hQN8Rp7qthGro6+BbZzax1YNzDghAkFS/ww=;
	h=To:Subject:From:Date:From;
	b=hKC5cu7L4tMNIryvkGJ09iqS24HJZCl4hn1D7pI4mYKsCYv8YcnYVomRJDslIZkNL
	 VxG/862A1spXf0B7AAXciubUjvmTQa1bsQNu5/umjPT5XiRt4zmdGWGxNMYO1rIC5d
	 yy3H5bn5n8HQs47V8dlVW2TyhMn0sgpplWDbwcZnecE30aX4qmeEMlYRRI2YFfhyob
	 q8WPtkHKPXFmgw7RRHculd4CS0yvH11q00tkb2VkWWbU252Bye1dnICVgipDOD+OPZ
	 UeZDiPxptyyXmea22JTkUu7ueo8CJgZs7LgWDsJIvO1u3VAIJ9R58siTTg03JTT6/6
	 fnU4UOVlV8p0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F615CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987739360.21507.17226208270806960236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a00a5d05b2eb6c52d7a21b3d881617facb3419fdfedceda426d00611c184e9
Date: Tue, 07 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759877393
