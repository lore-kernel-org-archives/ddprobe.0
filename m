Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1641D24B3A
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705444097; cv=none; b=YivVElFifjNT+50hXny5YWHMQUxlTUr6yJFysQb5zEHEVjh9xqSNqO92kpxjxehsMVCBqaGzGnmuNPjo5PUklVm4HkHIVeyg7ij8VWqpxTSGdc7bV7c0JimpQO537VI2pIGzhJlgBJugNZ8rVTlKxHp8G8s995PGacmt6GtAh9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705444097; c=relaxed/simple;
	bh=FTZpq69yvPNkkr2BvClM83pfzPYf04stCFbEz5Qlh2Q=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=auV3Yj3CvSaYf6eS/apsjbH/nDO5ewjXgizFgn5Jh8cc4iBorkui9ax4367NvdKgUtk/SQAHqOdHUbKwpgSmuQBUgCSmebF1z6c+9XmklnT2QLPoQf2eZn5KRnU5sy/w8dUNxA3LRd9MsmQYcEvPfEtoIVVmLJ0NNLxci+NDLuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0CxuB/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0CxuB/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE77C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705444096;
	bh=FTZpq69yvPNkkr2BvClM83pfzPYf04stCFbEz5Qlh2Q=;
	h=To:Subject:From:Date:From;
	b=q0CxuB/2pDnHBDZ/02v8UQ2OFGGHpWSpgNQiwKywI14JToj7pK+cvLQz+nK5kqRrJ
	 g9PB8+FiENa67qU3vZh9lSrCx/NQ7RXM93Xp5AckcqSquJyZ+YId/lia+PGI2dMNLV
	 fbWiqt9AaluXVC5bsTIVMm2CMwG8iapoAD2EZjsIIy627OgfAtT4QysgOvXS3EO29S
	 0SxYMnDYSL8rrnJW81TTwhCAuc1wIrkF0Slk1VE+wAybYtUQvYlC34lowRlxwWkUK/
	 qsUR9x/e5MV+aS/9/n6fU+4AGcRe9eLF45ARu9lTc2ROXboSqji6dcQxQOqsf0hJVS
	 OXGHIl8kMAGDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63801C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170544409640.6227.3059974184403911818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f43a0f60fef52540662dd93b74fb57c1da72088ca066f924ef041646e53fbd
Date: Tue, 16 Jan 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705444096
