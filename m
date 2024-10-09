Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4372D26AEC
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728443154; cv=none; b=Q3F85r32X8q9poU0LsyWWbq1SXyIUQ3lFlE3kEKvOgb05Ttbpajyok4pDdMvk0Smsei3k+hyjhVl6aJf99MT4wNuIKqiLp5Nj6LuXQUKUkKp86WU7f4gY0SQC8mB0a/YFcG7v3qocpfor43OtrSl6pViKovXm1ooSaZLKf6mHrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728443154; c=relaxed/simple;
	bh=0s2JeU43djaECjYs8P054ISY4pBqUVEjoFeS5RLfBqk=;
	h=To:Subject:From:Message-Id:Date; b=W36IOVuVsLFTutQgM29+iCQb8FCzGP2eA9acyT9j/r/GRQR0WqlF7uwvHgMgz/m0PhygB+50rX+TrdI5HSHd5Op6NC1vue8Xll3Q0p6RzWxW417J9Pu94rOW5NBWyZ3Qtqmfga5xodaUqsFIeIPs12QhW4+YxAxA/I/e6kXWWro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjM/9IIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjM/9IIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FD7C4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728443153;
	bh=0s2JeU43djaECjYs8P054ISY4pBqUVEjoFeS5RLfBqk=;
	h=To:Subject:From:Date:From;
	b=MjM/9IIemNeFFSFYFs6aYbe+NhmCE8DsCA58POMAhxReOFE8YOi4dm+OrGUlm6IwZ
	 Cpz986aXiZa1ADzY32ocGUePdrziADg16TRsrovEmHf8z4eiEURqFlX6nUyzPROzgi
	 Lqo2QUizwu2nw2KI9RxUKV20bNVYsn11C/uTEy+JPk9Uj2FlLYS1sIc4hByYQr9wbw
	 qeC2okuPj2h+AE6FmbOjEDryhh/QEk5cuHT9v0nWTYUWwMbHuFAoYQ183OlekO8Ld4
	 q0ezlZTeXc4Z1qfeDNkdKhjhqjs6nJ/1mP1oLdZp0eKoXJoy8/3Tcd57ANjBFT/ZBt
	 /+0/H/HmNy+rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99277CF0433
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844315360.16061.10678540980977204114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241e6915b502631911a283732c0f500d152ac4e47e4aa2fca2ef3f1e2bbe8e80
Date: Wed, 09 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728443153
