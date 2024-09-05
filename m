Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A05F1C2E
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725558354; cv=none; b=LF6QwSBK6SlPOMOx8fVTn89CZ6NXZDiDnYEsnO51IL2Wd616rBQCRQHRWRQk/Yo+5VC2K92wTAzpP9vy2n+IXk4LCbeEariJBic1tbi2v+VUHDPOphcHT33N3cRdySyFYvhYY2bs9dVPfY8Xs+EwpLAk5fmHv1Kf94xbKIgN1eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725558354; c=relaxed/simple;
	bh=UOnbIkcFe1vERqCBw7WeouvxElKWrKL2obs69B/zZKE=;
	h=To:Subject:From:Message-Id:Date; b=ADaNrPdJxX+q+LNQZk1t9lip/UaEVpZz/tcXI6LuMp20zrz8EJlFxBlHJ4d13XhmrqjIjVgADoz80yJAviX3FCUY4Dsp5bLqWqNUQeszcBQrHbIQjYQaYwnZMSFi9StuuQLBIME8J+cs/na0mjdXc7NYgeiaj3qH5I2/tlGV9SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPhlEULn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPhlEULn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A74C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725558353;
	bh=UOnbIkcFe1vERqCBw7WeouvxElKWrKL2obs69B/zZKE=;
	h=To:Subject:From:Date:From;
	b=IPhlEULn3PQvU+FUtyv9CFVqubyLrekjIvjI9cJuj/gNi5hntbMYdYzsWxQ1LRz/C
	 mcgIsfqzcMczGKtWLiVND1cBVxX/Zz4x7sXJJv2NhgMtxmTYdjZFXP4/udJwvs3gRs
	 lGY0VnXsFehA8seYlBVQjUe8KTA+j2C2OkX6FZh0MqrUzd9LLBFK72j2gyA6s25kY4
	 fOQkXZo8ZXejWu7S63TCDQXHL1jawxg+UbqMO8XbpJNmMBWhdeOdKWzNRh59PHr2C5
	 vt8Nr5zj7tntHDLswVXs4r8p53g/f4PAd8+/DIDb/2xipldxkzpajBQtTuqAA/PtoB
	 J+ntBINtF39ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96603CD6E74
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172555835360.7989.3746108659899041021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c34221b9cefcbf3d18bd38d8a2ec5c8ab30332b4d2994791153786005924d79
Date: Thu, 05 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725558353
