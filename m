Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE9A185E7F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753049994; cv=none; b=iCFnJL7d8QfthYjrIqG5UhZqMuX9j31bvEySnj4gH7Zr8y/h9O6bKZh+nycx8JqPiotILcyrxU0LIu5ocPSZF68xy62L9/4+nZMpPntlNDwsnw2KHchsmffIYiOLk9HOjWkPuol9GrmKv5aCy6kq1BJO6HFPWVqmOHX/Zpy8Q3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753049994; c=relaxed/simple;
	bh=acmF+ZeVnWrhs5nXdED5PCcX+Ki3ByIliDqUc3chf+k=;
	h=To:Subject:From:Message-Id:Date; b=YrMyBXQhwId8ulbvu+b4TbeKdwIiqFDbJMWrVcR5nghOVeNh+d/VDeEflMGoLzFFTEqseWsM6F0fL5GEQT1utjwAmJI/LfFTDGXtvxuYaC1Qec+cAkJKVIFRHcQQjxmT9BYEAVCuJso5UUg3Uh3//FbAtUuTI5LgS7vHtWrmSPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=borzVXw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="borzVXw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50D8C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753049993;
	bh=acmF+ZeVnWrhs5nXdED5PCcX+Ki3ByIliDqUc3chf+k=;
	h=To:Subject:From:Date:From;
	b=borzVXw/yWGu9Cq0wZhV3iiSj/jEY0oYUsSL6N4K8cHNFLyM8+iUNkyLoBJBcZOsT
	 sTwRusO0BiY5Be4QYfvdmxeKjibbRBLd0kKZPc+mTaljyam0/7djoZIAOS0sbmebn6
	 80B88ZPtul0uTJPRUxPgIXpo7f/biM38GP9CgOlmdepknbKjJuXLAxRMCq1fdALfCw
	 13Uzl82Na3cxj8vhWy3QHeB9OEmRLjv3TFySKNXMByedvAuf48DMV0w6Lmqm/wfNeR
	 VOxGPSvj/CRPyyJoWjw+rw6b7Suw64sG1GKq6dKq8SU0KfyDRflHo7oE4yD2XODVKD
	 IuthEWfOi1hfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CE6C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304999358.18487.1145619120459618622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c039493f18390bd877abfcdf02deb0f2bbef1e673d572485f1b7dca6a1846afd
Date: Sun, 20 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753049993
