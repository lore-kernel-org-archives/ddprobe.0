Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D183E833E
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791282634; cv=none; b=mzZ0XvXtwA/6+UdbqxUSf1cRuQ2DUaS6DB+C9PH+rYkYYLhzjy9tbMWMvYw1vXIngDz9rRmSfWkn+DsiH8Kl8crANsv+rRSKvvdKo+eSt3uVMdOFV+t4j1mPZjw5noOqrgPDfwjq0flGx8t7LACgR3kGPz7TSTHOqk19Slnlc2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791282634; c=relaxed/simple;
	bh=CuQgq8qocJUk856FWJXJ0M8b0+ACndmsuW8/3pjydK0=;
	h=To:Subject:From:Message-Id:Date; b=a+pKTrr+VyetkvSsVPjpbLlOMvvO1sH4keWcXnm7fKJoKrY/S+kV5G+pI21+tkJ/ObOvi0JLgChFoGF1/nRF6z63enKwpYUAB6vObhrmY0/sOQkEx4rs17Z79kMDwrl4VpTK4bygDGXyOVPIqUl8CrWOcQJZhll+snFmpyTeoxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcGtPp32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcGtPp32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB3BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791282633;
	bh=CuQgq8qocJUk856FWJXJ0M8b0+ACndmsuW8/3pjydK0=;
	h=To:Subject:From:Date:From;
	b=VcGtPp32n5zlAGliGKz/Jxdql6z0ApZ38IDu1xNYIAvSQvETyJJ0yXhh3Vuo0cExn
	 USNb9Dgxtdg2EKT+PkH0T9juB8Jsi+DeDX8ALSWvDUsDwL27TwA4yCbJskSS2Q8Y4F
	 eFKdw9VrKzvOx4zlUvvsLvMb3q0B+Jjjuno4El00IznxDXf9K2FDMoyOKg2M461ByO
	 BgbK6LbwssoGW2/V9olXocNsdG2sd3a4jORSh5UjuZOmPwlxy2+DaPxVmvvMZ6bie6
	 YRnJOJ8mIqXtN6YeO+yAd88r/zYe9Xh9AGb6B8ZuYth2J0wNU7OBozKNupL4iETauS
	 ad+0HCnUP9GYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9EBCA5FFF
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128263370.1353.4872295967495259241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0f41d69c9f3a89f3cc14cc35777d78bead5fd57bd924916730cb1d03c34d82
Date: Tue, 06 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791282633
