Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4CA3FD125
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774362894; cv=none; b=FhjMyhU7zJDhExokTCaipC+5kEgv1ADrHwRovZFxgjpOaOOWsjO1MZz5gPQGxfmJ5sUrjGG8zmvbI/uEBEVwyvGqN96aT03Ln4wTaRq3f/UUzGnxi8ZeDTCpBSl2uSr2l7i6Ls+oz4EhhlhcAPjiFfLVtOalX1FUr+cBhbGBZgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774362894; c=relaxed/simple;
	bh=xtVemUqrUpZpFIqWHf3Hux+jbk7Ks0oBUc9rx3uxxew=;
	h=To:Subject:From:Message-Id:Date; b=LBxAmdeogiENtVn/yjgswCjNa5AVXBoqdp39kW9xBwfoEUsM57gTahEfZFeC/X0FpIQlwIV/aKipz2ol0vtYREvzdFuKyYaxWD0nV2wr8MryzD33viWjtfSkX7zEuP5a6gLH+AXl9m5hhwDHz6VzDLSG65zog40AR8mXjgFpGRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TN98yHwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TN98yHwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A237DC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774362893;
	bh=xtVemUqrUpZpFIqWHf3Hux+jbk7Ks0oBUc9rx3uxxew=;
	h=To:Subject:From:Date:From;
	b=TN98yHweJv7hxuaHDNS2Z+PlLaeuHOnU9goEbsI1BZTan0BwWg5VhMdRDBUDT+OL0
	 zG2gGvwtWqrRlAah5ZErr7WJzP82/XCvZMBX/b3zJwD15dDgiST0wypDjt3QMyv5QX
	 IIiV4joebJ8F/ppmSd8Ts3Xn2kXi1Yo4aQpwgeSAH0tvech1VufaMV2WoHxKxT1RnV
	 HpLnb0jlK+Y+MRjZS5OojEM/QbuMTJ3OHfyhcnxHa7F5xFG5QOW4HqlhFMpUSQQNxg
	 xP6JE3EVyrhBCoVC5ikX0V6IjgT1q1s6Au2sJ2rYy/SIIB3vxhSIBgPYUivGcgLEkR
	 EiVIONP1VY9gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923F7F54AC6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436289358.31345.15368807939672038768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 807eeaf639495dafcaa279a39908a72c2e118b6f037487c36c2ab06ce0cc0520
Date: Tue, 24 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774362893
