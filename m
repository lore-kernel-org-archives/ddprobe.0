Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A90E8BE7
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709447297; cv=none; b=PcWH3CGxJ3bTRbIXRFMJCPZlDQ2k2f/sjvdfxFog7gYGS5ePiF3gIbS8jB8tbamu6SjdRAheg/V/gvZQngEQb2I54OUNDBFZ+el30zCE5bYFHKr5YnVk7zT34mGb83alTJ+o6LrbNXyCgVjpGLEgXWlq8Mw5g4edyqx32lS9iy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709447297; c=relaxed/simple;
	bh=+Q5q4e32S7Y57p85KcwFsfFnI9V/Jc+t7lT62KhV3qU=;
	h=To:Subject:From:Message-Id:Date; b=S4dVXCDBQ/zayFuhbBf9otGE0FPpupiLTQ9qDQLZCr504pJfdIRw5/zqj6TsoLsPS3o3Z6ccQO7hIdBj2smI8rDWf6Xhgv1kXWGF6asr+pQR6e4l5VAzFmRMq7dh8YcRX09iehP/PiDNP+AONfJbfNBJ3TzoJhQ4uCuwjQv8uNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pygj3NNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pygj3NNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A463C433F1
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709447296;
	bh=+Q5q4e32S7Y57p85KcwFsfFnI9V/Jc+t7lT62KhV3qU=;
	h=To:Subject:From:Date:From;
	b=pygj3NNeKPFVdeRJxCgAqIHuICUsGq+nfkBL2MEf2juX7nK4h1l3WJRUm4chlWhcy
	 ZboFO3eJ2S+zHHNfI5IiUrA3rpefeCqKyHDHu4vE+OgoiRi3FZERWHRzJslR2rcq4R
	 IyQfFNWi0NFhEM51vwmxCrc6KtLoAciPx2tqCOozbtb4lx5O5RGufXGTX9PNdfZNE/
	 dn4kHZ4NXMZ/+2gVA6bmfeiz0I9WT2ihcEl1KrrEXIBAD9J5BQKBttGYAPuWhvymrA
	 VSTCpvli1sU+b/m8DhDf3tFIZjOh/sxzrUcTHCaNGRwW86qSYVsP+Jx49N/lK4AXPs
	 IJBHzvhc4JiuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA1DC48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170944729638.32131.12432638578561289389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f3089d3a3729300889c27edd81e50a93a19b1424f497cba8ed610c2393a568
Date: Sun, 03 Mar 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709447296
