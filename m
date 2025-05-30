Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408CF7DA6D
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748575194; cv=none; b=NLn229tIzjL3NquM0Al0ZasJVjBUV1C5DZj8Ny4OK066ndl5XCfGKTLqYi53VXjZhgIAqLcJ6dcWTn9wLVu8gt7wGnkMewqfLZ1Dxq8Z81E2+dSAOKSh4I5nlj6fTHe3Ltv0FD9AFUGXsruRoe7hjLC3vcQRsLLmHDQQKljurgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748575194; c=relaxed/simple;
	bh=U/XJ1hn5SnhJpwDBaQ8sTtbEVhoQbAqlRxlSLFoFV4E=;
	h=To:Subject:From:Message-Id:Date; b=O25S/6duzBhGMq8cAgWXbC/v9XlWqXhvQ5Mwx9TZIQs4lgakGFXe4SHROpUkSV5OKkNFkN4G8Q1i/l4QgKr7SbYiXqx5OeBo19/kirmOKvcUOZeGa348F/NO02jXGThqtXfNfk/5p13nibUbuiIJTxEDd+TcunpIOzQxAc6fdYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAnl+Nu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAnl+Nu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2908C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748575193;
	bh=U/XJ1hn5SnhJpwDBaQ8sTtbEVhoQbAqlRxlSLFoFV4E=;
	h=To:Subject:From:Date:From;
	b=cAnl+Nu7ohl59dB14oUbSM3zfV/oPxP1t0BAXgpYhq4Umx5f30ShlSuMPXJna2oN9
	 3yaEU9fAjUOUV5TD3bkNiDOzAdYsAISyHy8/RvoPGSInDvpB2srjIF/BOK412+UIKT
	 Ta3EwN+APH3JddYkK2Ti56QVAEaj6KyYKRTrljyjJLO6dnZxVr7m8ssn4MPYKOyfxS
	 J++CvAKhdKzVa2H+xRUKXGgpirBIr6+cg5Otp1zmj6fNuqD+c4JhIAHLLql9f7Ax6+
	 Snr4ejgWFDbvGkav8zpmYnWA027R3ZXVE3P5tXVnS4CpAgF8VOuGv2ULPWjxvnqT9x
	 Ud3seEwnxmEgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF4EC54F30
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857519358.28483.18092416691523961470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b5e0b6e4adc5936f6a67d642b6f7bdef03d8c6b99cf9f66148f7f97cda2f8c
Date: Fri, 30 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748575193
