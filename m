Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D33F1C0DCC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719590663; cv=none; b=JLpp1WtP4It9FANpj8bwWqBFG8uy4ysMbEXFHB1M7gByRW9rD++yWk8zeP2FX+6TAqseUnsDiqlCxYjUlhP0E8LkbwCOb7dqt1boGJa86XCIXb53BzD2fJolao5SXF4RJNaaZVfRJFCnKQfbgtOJX+ogX1p9Hk77olNy3FtRlGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719590663; c=relaxed/simple;
	bh=YOtvoOSqdl79Rb0eYnWDVJ7z/TYk64k+ZqKgax5m7Qk=;
	h=To:Subject:From:Message-Id:Date; b=F5HJLlTJkSh4XUB5ks+3TLMRd1bFoLmXJm4KiRHkofQqW+0vhzTigEPxSL96/xIULp2ByZRQNy80TpiWAh7MMdApS1GPWLHtXwtUDurApNkasaepONieqgZk6Ob4eAV8UJ69lZLbWkRMh9WL9fQC0Uc3XGN5aJhmyQksmCnAOUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOpSyyAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOpSyyAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9824C32786
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719590662;
	bh=YOtvoOSqdl79Rb0eYnWDVJ7z/TYk64k+ZqKgax5m7Qk=;
	h=To:Subject:From:Date:From;
	b=lOpSyyAzie0fd1bVqGUYJb99hjJo2QsqcRC8JMSvqBXBnjUfQvpydNWP8ST54zhoR
	 BXAVU1Eq0fsWLg8hyFk9f26ckaClT3P4UloNnNCVgNphoj3qojil2rUkLFgihLgx1x
	 vtWx5MI3KMjY3H7TbuTxabB7cgRUspMhX48hAbTs5ARCz4ZJnkLX5NYCleCZ85HkbH
	 QorAd6Vc7qPwzhgsrnCfp29T9wyQhZvYlW7xoHcbt7FAgqb1QcdGPXcFnx+tE43Ros
	 cfwlaomkl0A0wHh6fyfoBLlyxA0CNloRUDaF6vnVFYUrIUbFgdj26+0p0TBwcwUZ9Q
	 oHubND0+m62rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB02C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959066277.7547.16532199898806497966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2287a9b64e7a144c3e4bc7c9b673c8d7ac24bb4bb5438e799bf39a7d573f46b6
Date: Fri, 28 Jun 2024 16:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719590662
