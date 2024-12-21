Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601D171747
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734795954; cv=none; b=fWcWYk9/wQLj0iLcoUdU+a4Olq401AcHMV7mPiWmTHrbzDz6/0FmPM7henU6z/xYiAAvhafyLeQodRzRHMn3U3IGu5Q4K5LUt/cycw8ISL18vqG3QRl77Rdc3ssSrH8PRmq38c59r9qYMOOyxmSTMXDnmFE3PYne76HzZnjrb5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734795954; c=relaxed/simple;
	bh=KVMjQY0dr1HkPZWXVZT61s/jSvRA9nywhMNHoCCE8sQ=;
	h=To:Subject:From:Message-Id:Date; b=IvjDxmxK9pVMF4+oDlEE3U6BhmwxbnmOHzUZ6h41FkVmmy+lTg+55F6R2n5NlldaiWsj0xaFFAx0IMI6wENQDpoRQ6htGYoei/Z3LzWrGPwfXPAFwUNn7J/muU6QNVaRSOkNqa7EcMGpXY2f/9vJrkxVJmRyYs/NtRGmPkTmPgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0U+ZMGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0U+ZMGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF739C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734795953;
	bh=KVMjQY0dr1HkPZWXVZT61s/jSvRA9nywhMNHoCCE8sQ=;
	h=To:Subject:From:Date:From;
	b=J0U+ZMGHZH0fJymqtR2kdEeMNaRl4RsSAwxfxtHlEOr6kDOEoIfIH1UnrhWe9EsER
	 LuXccVmS6LUn2S4NSD3E1TwYPTcCEfLu+Ujb65+7ag7P/LGMpDJLKz0StgB/Ky46/7
	 /PH9jQCyAB0OqzQ6j0Sqw8UyOSySd+KLObdffj1SgFGESXPq+kvrmwfQyfC0pVVlSR
	 WONGSWDoRHL7m2ZYQeCXOhP13/vgSQPJfjFcGxnmcqT6RFBQUsAohpuaFV2wUvLkA1
	 1SYoZg5uYPEhw95TGl6sHz5F0oyZ1b9rXwi4nsgi7FjY3zrfU+9/8qqq6Q1kL3uy71
	 Ngqw9wSDDjg0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D79AE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173479595362.5911.12008509509737882821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b464a88e89d9bf22b07596589f4fc19054455b727895609f895fb72572937dd
Date: Sat, 21 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734795953
