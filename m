Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAE6386C08
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780745074; cv=none; b=jGmK+OtXjXV8I1LQAWWjM5LTwAwbVbczoj6lgOZvbc9Ylr9qR0GeDjiARq440GLggnnzuRLfTo2s9u6/i609w5OlMTALoUqZcbE0olgtEi2baS3IHDgd0xfBOAEbN/ZYIEkNeGnvEf+MgJxEmKfe6yx716476+eqCnCeYRJM/jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780745074; c=relaxed/simple;
	bh=ddlCVy2Qmf5XX448JhnuGwpoQ2jISiFrGI3tvBUQSAY=;
	h=To:Subject:From:Message-Id:Date; b=HkbOOWjy/2Sbolw1DwGYz3z0WPZtY61IEouw6bg1HK2MqbdYhNs5XheItYJTYUel68A+KgvnJdFVI/rrWNJwQx9mEOaWgv/Yyy9bTZAPFfLH72hE/qvRF6Gv5M3LusGBNUGQ+oMPMP5xvHNyq1VFxXt1FgmOleNwPRLkLLlbmPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8KlmXTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8KlmXTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B751BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780745073;
	bh=ddlCVy2Qmf5XX448JhnuGwpoQ2jISiFrGI3tvBUQSAY=;
	h=To:Subject:From:Date:From;
	b=X8KlmXTZR7oJAXi4JMeNtCk7c+2JuQmBc6lxkjlJVjElXcWK/BH3DrTpOuNOzTbD5
	 GEiKwavZitQD9EP4dxTZf6cHdBcGsknZ66/HfKl9/yn/QDJBqWV7CvpR/MYH6QLGLu
	 e8AuJ73Is+unw50zTYaY3RDbddvskyGOhx+kgr+Eo/WRJblzWl0pFhca8O/DRoTCQL
	 4GiC7sZwtnKCy7gCDy+opSy9uNDLw2BPBlOaenHxg+G5ggs1yuQRxxQrNRgQKPGMDp
	 PD7BBacFIUwtMAg6fqGcTAXp4z/sQBSJWsE4gROlGElCgBLBM5fWd1P/imhrLUI14i
	 uCOC7G/P0J9mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EE0CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074507368.15545.14278045654723349643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302aeff2f8825de5795f70b51e88d8ed1c0412497b424a05dea01c9f906f0e43
Date: Sat, 06 Jun 2026 11:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780745073
